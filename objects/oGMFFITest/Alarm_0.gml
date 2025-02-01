/// @description fun[ction]

SDL = new HLFFILibrary().Load((os_type == os_windows) ? (working_directory + "libSDL2.dll") : ((os_type == os_macosx) ? (working_directory + "libSDL2.dylib") : (working_directory + "libSDL2.so")));
SDL_ShowSimpleMessageBox_symbol = SDL.ResolveSymbol("SDL_ShowSimpleMessageBox");
SDL_ShowSimpleMessageBox = SDL_ShowSimpleMessageBox_symbol.DefineFunction(
	HLFFIType.TInt32,
    [ HLFFIType.TUInt32, HLFFIType.TPointer, HLFFIType.TPointer, HLFFIType.TPointer ]
);
SDL_ShowSimpleMessageBox(0, "foo", "bar", pointer_null);
