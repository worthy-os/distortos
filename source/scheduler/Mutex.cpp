/**
 * \file
 * \brief Mutex class implementation
 *
 * \author Copyright (C) 2014 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * \date 2014-09-27
 */

#include "distortos/scheduler/Mutex.hpp"

#include "distortos/scheduler/schedulerInstance.hpp"
#include "distortos/scheduler/Scheduler.hpp"

#include "distortos/architecture/InterruptMaskingLock.hpp"

#include <cerrno>

namespace distortos
{

namespace scheduler
{

/*---------------------------------------------------------------------------------------------------------------------+
| public functions
+---------------------------------------------------------------------------------------------------------------------*/

Mutex::Mutex(const Type type) :
		blockedList_{schedulerInstance.getThreadControlBlockListAllocator(), ThreadControlBlock::State::BlockedOnMutex},
		owner_{},
		recursiveLocksCount_{},
		type_{type}
{

}

int Mutex::lock()
{
	architecture::InterruptMaskingLock interruptMaskingLock;

	const auto ret = tryLockInternal();
	if (ret == 0 || ret == EAGAIN)	// lock successful or recursive lock not possible?
		return ret;

	if (type_ == Type::ErrorChecking && owner_ == &schedulerInstance.getCurrentThreadControlBlock())
		return EDEADLK;

	schedulerInstance.block(blockedList_);
	return 0;
}

int Mutex::tryLock()
{
	architecture::InterruptMaskingLock interruptMaskingLock;
	return tryLockInternal();
}

int Mutex::tryLockFor(const TickClock::duration duration)
{
	return tryLockUntil(TickClock::now() + duration + TickClock::duration{1});
}

int Mutex::tryLockUntil(const TickClock::time_point timePoint)
{
	architecture::InterruptMaskingLock interruptMaskingLock;

	if (owner_ == nullptr)
	{
		owner_ = &schedulerInstance.getCurrentThreadControlBlock();
		return 0;
	}

	return schedulerInstance.blockUntil(blockedList_, timePoint);
}

int Mutex::unlock()
{
	architecture::InterruptMaskingLock interruptMaskingLock;

	if (type_ != Type::Normal && owner_ != &schedulerInstance.getCurrentThreadControlBlock())
		return EPERM;

	if (blockedList_.empty() == false)
	{
		owner_ = &blockedList_.begin()->get();	// pass ownership to the unblocked thread
		schedulerInstance.unblock(blockedList_.begin());
	}
	else
		owner_ = nullptr;

	return 0;
}

/*---------------------------------------------------------------------------------------------------------------------+
| private functions
+---------------------------------------------------------------------------------------------------------------------*/

int Mutex::tryLockInternal()
{
	if (owner_ == nullptr)
	{
		owner_ = &schedulerInstance.getCurrentThreadControlBlock();
		return 0;
	}

	return EBUSY;
}

}	// namespace scheduler

}	// namespace distortos
