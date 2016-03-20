#include <stdint.h>

#ifdef __linux__
#include <ctime>
#else
#ifndef _WIN32
#include <sys/time.h>
#endif
#endif

#ifdef _WIN32
#include <Windows.h>
#endif

static uint64_t currentTimeMillis()
{
#ifdef _WIN32
    const uint64_t EPOCH = 116444736000000000;

    FILETIME fileTime;
    GetSystemTimeAsFileTime (&fileTime);
    uint64_t t = * (uint64_t*) &fileTime;
    return (t-EPOCH) / 10000;
#else
#ifdef __linux__
    timespec tse;
    clock_gettime(CLOCK_REALTIME, &tse);
    return (tse.tv_sec * 1000 + tse.tv_nsec * 1E-6);
#else
#error Only Linux and Win32 are supported
#endif
#endif
}
