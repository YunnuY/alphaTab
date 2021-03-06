/*
 * This file is part of alphaTab.
 * Copyright c 2013, Daniel Kuschny and Contributors, All rights reserved.
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or at your option any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.
 */
package alphatab.util;

class LazyVar<T>
{
    private var _val:T;
    private var _loader:Void->T;
    private var _loaded:Bool;
    
    public function getValue() 
    {
        if (!_loaded) {
            _val = _loader();
            _loaded = true;
        }
        return _val;
    }
    
    public function new(loader: Void->T) 
    {
        _loader = loader;
    }
    
}