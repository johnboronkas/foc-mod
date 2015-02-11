///////////////////////////////////////////////////////////////////////////////////////////////////
// Petroglyph Confidential Source Code -- Do Not Distribute
///////////////////////////////////////////////////////////////////////////////////////////////////
//
//          $File: //depot/Projects/StarWars/Art/Shaders/RSkinBumpColorize.fx $
//          $Author: Greg_Hjelstrom $
//          $DateTime: 2004/04/14 15:29:37 $
//          $Revision: #3 $
//
///////////////////////////////////////////////////////////////////////////////////////////////////
/*
	
	Shared HLSL code for the "Occluded Object" shaders.  These shaders render
	the parts of an object that are occluded in a solid alpha-blended color.
	For example, when a player's unit is behind a building this shader will make
	it show through the building.

*/

#include "AlamoEngine.fxh"

/////////////////////////////////////////////////////////////////////
//
// Material parameters
//
/////////////////////////////////////////////////////////////////////

// material parameters
float4 Color < string UIName="Color"; string UIType = "ColorSwatch"; > = {1.0f, 0.0f, 0.0f, 0.5f };



/////////////////////////////////////////////////////////////////////
//
// Shared Shader Code
//
/////////////////////////////////////////////////////////////////////

struct VS_OUTPUT
{
    float4	Pos     : POSITION;
    float	Fog	: FOG;
};

float4 occluded_ps_main(VS_OUTPUT In) : COLOR
{
    return Color;
}
