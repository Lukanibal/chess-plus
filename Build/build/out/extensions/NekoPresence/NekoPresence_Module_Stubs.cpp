// Common

typedef int int32;
typedef unsigned long long uint64;

// Partial declaration with no functions (so we can pass it along)
struct gmval_c {
    uint64 _v;
};

typedef gmval_c (*CronusFunc_c)(gmval_c self, gmval_c callee, int argc, gmval_c* args);

// SharedLibraryManager

extern "C" void* SharedLibraryManager_GetFunctionByIndex(int index);
extern "C" int SharedLibraryManager_GetFunctionIndex(const char* libName, const char* functionName);

// GMVal Coerce

extern "C" double gmval_CoerceReal(gmval_c val);
extern "C" const char* gmval_CoerceCString(gmval_c val);;

// GMVal From

extern "C" gmval_c gmval_FromDouble(double d);
extern "C" gmval_c gmval_FromString(const char* s);

extern "C" gmval_c gmval_undefined();

// RunnerInterface

extern "C" void RunnerInterface_AddFunction(const char* name, CronusFunc_c func, int argc);
extern "C" void RunnerInterface_AddConstant_Double(const char* name, double value);
extern "C" void RunnerInterface_AddConstant_String(const char* name, const char* value);
extern "C" void RunnerInterface_ArgCountError(const char* funcName, int argc, int expected);

#include "NekoPresence_Module_Stubs.h"

extern "C" gmval_c __GMLIBSTUB_GMVAL____np_initdll(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 0)
        RunnerInterface_ArgCountError("__np_initdll", argc, 0);
    // shared library manager block
    using FunctionPtr = double(*)();
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "__np_initdll");
    FunctionPtr __np_initdll = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (__np_initdll == nullptr) return gmval_undefined();
    // function call
    double result = __np_initdll();
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL____np_shutdown(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 0)
        RunnerInterface_ArgCountError("__np_shutdown", argc, 0);
    // shared library manager block
    using FunctionPtr = double(*)();
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "__np_shutdown");
    FunctionPtr __np_shutdown = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (__np_shutdown == nullptr) return gmval_undefined();
    // function call
    double result = __np_shutdown();
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_initdiscord(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 3)
        RunnerInterface_ArgCountError("np_initdiscord", argc, 3);
    // coerce arguments
    const char* arg0;
    double arg1;
    const char* arg2;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceReal(args[1]);
    arg2 = gmval_CoerceCString(args[2]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, double, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_initdiscord");
    FunctionPtr np_initdiscord = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_initdiscord == nullptr) return gmval_undefined();
    // function call
    double result = np_initdiscord(arg0, arg1, arg2);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_setpresence(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 4)
        RunnerInterface_ArgCountError("np_setpresence", argc, 4);
    // coerce arguments
    const char* arg0;
    const char* arg1;
    const char* arg2;
    const char* arg3;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    arg2 = gmval_CoerceCString(args[2]);
    arg3 = gmval_CoerceCString(args[3]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, const char*, const char*, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_setpresence");
    FunctionPtr np_setpresence = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_setpresence == nullptr) return gmval_undefined();
    // function call
    double result = np_setpresence(arg0, arg1, arg2, arg3);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_update(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 0)
        RunnerInterface_ArgCountError("np_update", argc, 0);
    // shared library manager block
    using FunctionPtr = double(*)();
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_update");
    FunctionPtr np_update = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_update == nullptr) return gmval_undefined();
    // function call
    double result = np_update();
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL____np_registercallbacks_do_not_call(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 4)
        RunnerInterface_ArgCountError("__np_registercallbacks_do_not_call", argc, 4);
    // coerce arguments
    const char* arg0;
    const char* arg1;
    const char* arg2;
    const char* arg3;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    arg2 = gmval_CoerceCString(args[2]);
    arg3 = gmval_CoerceCString(args[3]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, const char*, const char*, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "RegisterCallbacks");
    FunctionPtr RegisterCallbacks = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (RegisterCallbacks == nullptr) return gmval_undefined();
    // function call
    double result = RegisterCallbacks(arg0, arg1, arg2, arg3);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_setpresence_more(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 3)
        RunnerInterface_ArgCountError("np_setpresence_more", argc, 3);
    // coerce arguments
    const char* arg0;
    const char* arg1;
    double arg2;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    arg2 = gmval_CoerceReal(args[2]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, const char*, double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_setpresence_more");
    FunctionPtr np_setpresence_more = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_setpresence_more == nullptr) return gmval_undefined();
    // function call
    double result = np_setpresence_more(arg0, arg1, arg2);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_clearpresence(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 0)
        RunnerInterface_ArgCountError("np_clearpresence", argc, 0);
    // shared library manager block
    using FunctionPtr = double(*)();
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_clearpresence");
    FunctionPtr np_clearpresence = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_clearpresence == nullptr) return gmval_undefined();
    // function call
    double result = np_clearpresence();
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_registergame(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 2)
        RunnerInterface_ArgCountError("np_registergame", argc, 2);
    // coerce arguments
    const char* arg0;
    const char* arg1;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_registergame");
    FunctionPtr np_registergame = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_registergame == nullptr) return gmval_undefined();
    // function call
    double result = np_registergame(arg0, arg1);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_registergame_steam(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 2)
        RunnerInterface_ArgCountError("np_registergame_steam", argc, 2);
    // coerce arguments
    const char* arg0;
    const char* arg1;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_registergame_steam");
    FunctionPtr np_registergame_steam = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_registergame_steam == nullptr) return gmval_undefined();
    // function call
    double result = np_registergame_steam(arg0, arg1);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_setpresence_secrets(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 3)
        RunnerInterface_ArgCountError("np_setpresence_secrets", argc, 3);
    // coerce arguments
    const char* arg0;
    const char* arg1;
    const char* arg2;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    arg2 = gmval_CoerceCString(args[2]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, const char*, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_setpresence_secrets");
    FunctionPtr np_setpresence_secrets = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_setpresence_secrets == nullptr) return gmval_undefined();
    // function call
    double result = np_setpresence_secrets(arg0, arg1, arg2);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_setpresence_partyparams(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 4)
        RunnerInterface_ArgCountError("np_setpresence_partyparams", argc, 4);
    // coerce arguments
    double arg0;
    double arg1;
    const char* arg2;
    double arg3;
    arg0 = gmval_CoerceReal(args[0]);
    arg1 = gmval_CoerceReal(args[1]);
    arg2 = gmval_CoerceCString(args[2]);
    arg3 = gmval_CoerceReal(args[3]);
    // shared library manager block
    using FunctionPtr = double(*)(double, double, const char*, double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_setpresence_partyparams");
    FunctionPtr np_setpresence_partyparams = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_setpresence_partyparams == nullptr) return gmval_undefined();
    // function call
    double result = np_setpresence_partyparams(arg0, arg1, arg2, arg3);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_respond(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 2)
        RunnerInterface_ArgCountError("np_respond", argc, 2);
    // coerce arguments
    const char* arg0;
    double arg1;
    arg0 = gmval_CoerceCString(args[0]);
    arg1 = gmval_CoerceReal(args[1]);
    // shared library manager block
    using FunctionPtr = double(*)(const char*, double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_respond");
    FunctionPtr np_respond = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_respond == nullptr) return gmval_undefined();
    // function call
    double result = np_respond(arg0, arg1);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_setpresence_timestamps(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 3)
        RunnerInterface_ArgCountError("np_setpresence_timestamps", argc, 3);
    // coerce arguments
    double arg0;
    double arg1;
    double arg2;
    arg0 = gmval_CoerceReal(args[0]);
    arg1 = gmval_CoerceReal(args[1]);
    arg2 = gmval_CoerceReal(args[2]);
    // shared library manager block
    using FunctionPtr = double(*)(double, double, double);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_setpresence_timestamps");
    FunctionPtr np_setpresence_timestamps = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_setpresence_timestamps == nullptr) return gmval_undefined();
    // function call
    double result = np_setpresence_timestamps(arg0, arg1, arg2);
    return gmval_FromDouble(result);
}
extern "C" gmval_c __GMLIBSTUB_GMVAL__np_setpresence_buttons(gmval_c self, gmval_c callee, int argc, gmval_c* args)
{
    if (argc < 3)
        RunnerInterface_ArgCountError("np_setpresence_buttons", argc, 3);
    // coerce arguments
    double arg0;
    const char* arg1;
    const char* arg2;
    arg0 = gmval_CoerceReal(args[0]);
    arg1 = gmval_CoerceCString(args[1]);
    arg2 = gmval_CoerceCString(args[2]);
    // shared library manager block
    using FunctionPtr = double(*)(double, const char*, const char*);
    static int32 index = SharedLibraryManager_GetFunctionIndex("NekoPresence", "np_setpresence_buttons");
    FunctionPtr np_setpresence_buttons = (FunctionPtr)SharedLibraryManager_GetFunctionByIndex(index);
    if (np_setpresence_buttons == nullptr) return gmval_undefined();
    // function call
    double result = np_setpresence_buttons(arg0, arg1, arg2);
    return gmval_FromDouble(result);
}
extern "C" void Setup_NekoPresence()
{
    RunnerInterface_AddConstant_String("np_steam_app_id_empty", static_cast<const char*>("0"));
    RunnerInterface_AddConstant_Double("DISCORD_REPLY_NO", static_cast<double>(0));
    RunnerInterface_AddConstant_Double("DISCORD_REPLY_YES", static_cast<double>(1));
    RunnerInterface_AddConstant_Double("DISCORD_REPLY_IGNORE", static_cast<double>(2));
    RunnerInterface_AddConstant_Double("DISCORD_PARTY_PRIVACY_PRIVATE", static_cast<double>(0));
    RunnerInterface_AddConstant_Double("DISCORD_PARTY_PRIVACY_PUBLIC", static_cast<double>(1));
    RunnerInterface_AddConstant_Double("DISCORD_MAX_BUTTONS", static_cast<double>(2));
    RunnerInterface_AddFunction("__np_initdll", __GMLIBSTUB_GMVAL____np_initdll, 0);
    RunnerInterface_AddFunction("__np_shutdown", __GMLIBSTUB_GMVAL____np_shutdown, 0);
    RunnerInterface_AddFunction("np_initdiscord", __GMLIBSTUB_GMVAL__np_initdiscord, 3);
    RunnerInterface_AddFunction("np_setpresence", __GMLIBSTUB_GMVAL__np_setpresence, 4);
    RunnerInterface_AddFunction("np_update", __GMLIBSTUB_GMVAL__np_update, 0);
    RunnerInterface_AddFunction("__np_registercallbacks_do_not_call", __GMLIBSTUB_GMVAL____np_registercallbacks_do_not_call, 4);
    RunnerInterface_AddFunction("np_setpresence_more", __GMLIBSTUB_GMVAL__np_setpresence_more, 3);
    RunnerInterface_AddFunction("np_clearpresence", __GMLIBSTUB_GMVAL__np_clearpresence, 0);
    RunnerInterface_AddFunction("np_registergame", __GMLIBSTUB_GMVAL__np_registergame, 2);
    RunnerInterface_AddFunction("np_registergame_steam", __GMLIBSTUB_GMVAL__np_registergame_steam, 2);
    RunnerInterface_AddFunction("np_setpresence_secrets", __GMLIBSTUB_GMVAL__np_setpresence_secrets, 3);
    RunnerInterface_AddFunction("np_setpresence_partyparams", __GMLIBSTUB_GMVAL__np_setpresence_partyparams, 4);
    RunnerInterface_AddFunction("np_respond", __GMLIBSTUB_GMVAL__np_respond, 2);
    RunnerInterface_AddFunction("np_setpresence_timestamps", __GMLIBSTUB_GMVAL__np_setpresence_timestamps, 3);
    RunnerInterface_AddFunction("np_setpresence_buttons", __GMLIBSTUB_GMVAL__np_setpresence_buttons, 3);
}
