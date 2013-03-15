/*
 * This file is part of alphaTab.
 *
 *  alphaTab is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  alphaTab is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with alphaTab.  If not, see <http://www.gnu.org/licenses/>.
 */
package alphatab.model;

import alphatab.rendering.glyphs.NaturalizeGlyph;

/**
 * This class contains some utilities for working with model classes
 */
class ModelUtils 
{
    public static function getDurationValue(duration:Duration)
    {
        switch(duration)
        {
            case Whole: return 1;
            case Half: return 2;
            case Quarter: return 4;
            case Eighth: return 8;
            case Sixteenth: return 16;
            case ThirtySecond: return 32;
            case SixtyFourth: return 64;
        }  
    }

    public static function getDurationIndex(duration:Duration) : Int
    {
        var index:Int = 0;
        var value:Int = getDurationValue(duration);
        while((value = (value >> 1)) > 0)
        {
            index++;
        }    
        return index;
    }
    

    
    // TODO: Externalize this into some model class
    public inline static function keySignatureIsFlat(ks:Int)
    {
        return ks < 0;
    }    
    
    public inline static function keySignatureIsNatural(ks:Int)
    {
        return ks == 0;
    }    
    
    public inline static function keySignatureIsSharp(ks:Int)
    {
        return ks > 0;
    }    
    
    public static function getClefIndex(clef:Clef)
    {
        switch(clef)
        {
            case C3: return 0;
            case C4: return 1;
            case F4: return 2;
            case G2: return 3;
        }
    }
}
