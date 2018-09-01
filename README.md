

# C&C Generals: Situation Zero - tree models

## About

3D flora modelled & textured for my [C&C Generals: Situation Zero mod project](http://www.moddb.com/mods/cc-generals-situation-zero), originally produced back in 2003-2008.

Tree models use Westwood 3D file format (W3D). Textures are provided in TGA/DDS/PSD formats.

This repository provides the mentioned tree models also in 2D format for RA2/YR game series.

I was about to rework all 3D tree models back in 2008 to reduce polygon count and improve overall quality. However, that didn't happen.

## About tree production

The tree model textures have been photographed back in 2006-2008. I modeled 3D shapes for the mod project.

## Images

2D tree models:

![ra2-trees_sz](https://raw.githubusercontent.com/Fincer/sz_mod_treemodels/master/trees_ra2.png)

3D tree models - CNC: SZ in-game screenshot:

![sz_trees](https://raw.githubusercontent.com/Fincer/sz_mod_treemodels/master/trees_sz.jpg)

## Related tools

Tools which can't be provided but must be used to produce the provided models in 2D format:

- sh files are Unix shell script files used in 3D-to-2D batch production. Consider converting them into .bat format.

- 3D Modeling: Autodesk 3DS Max <= 9

    - W3D plugins ([Max2w3d](https://downloads.cncfps.com/Renegade/Modding/Max2w3d.zip) & [w3dimporter](https://downloads.cncfps.com/Renegade/Modding/W3DImporter.zip), see also [other CNC Renegade tools](https://downloads.cncfps.com/Renegade/Modding/) available)
    
        - If you do not work with W3D, you can take a different approach of your choice
        
        - W3D plugins require Autodesk 3DS Max 9 or older version
    
- 3DS to voxel converter: [3ds2vxl](https://ppmforums.com/viewtopic.php?t=25043)

- Image editor such as GIMP or Adobe Photoshop (TGA/PSD/DDS image formats)

    - If you use Adobe Photoshop, considering usage of [Nvidia DDS plugins](https://developer.nvidia.com/nvidia-texture-tools-adobe-photoshop)

- imagemagick

- [ShapeSet](https://forums.cncnet.org/applications/core/interface/file/attachment.php?id=40936)

- Rendering settings in 3DS Max: [part 1](https://ppmforums.com/viewtopic.php?t=18884), [part 2](https://ppmforums.com/viewtopic.php?t=27175), [part 3](https://ppmforums.com/viewtopic.php?t=36213)

    - The original rendering scenes with correct settings were provided by [-Apollo-](http://www.moddb.com/members/apollors) in max file format. These scenes are not provided here due to legal reasons.

- [RA2/YR modding tools](http://www.moddb.com/games/cc-red-alert-2/downloads/modding-tools1)

## Rendering instructions

- 1 cell equals to 60x60 pixels

- rendering canvas size in Autodesk 3DS Max: 544x308 pixels

- shadows are rendered separately

- shadows are rendered in opaque mode, transparency is handled by the RA2/YR game engine

- Tree root is vertically centered in rendered image (see '[center_weight.png](https://github.com/Fincer/sz_mod_treemodels/blob/master/sz_trees_for_redalert2/center_weight.png)' in sz_trees_for_redalert2 subfolder)

- Use correct palette format for RA2/YR

## File formats

- tree 0000.pcx (normal tree)

- tree 0001.pcx (damaged tree)

- tree 0002.pcx (normal tree shadow)

- tree 0003.pcx (damaged tree shadow)

- Related command samples:
    - Bright.exe 0002.tga -colmask 255 0 0 -common
    - Shapeset.exe "arbor????.pcx" arborvitae01.shp

## File formats of RA2/YR

- buildings = shp

- tanks = vxl/shp

- infantry = shp

- aircraft = vxl

shp = shape, vxl = voxel

## File naming syntax

File name suffix explanations:

- **_B** = Burn/Burned model

- **_D** = Damaged model 

- **_S** = Snow model

- **_BS** = Burn/Burned Snow model

- **_L** = Large model (for example, PTgrass and PTGrass_L)

- **_LS** = Large Snow model

## License

This repository uses Creative Commons 4.0 BY-NC license. Please see [LICENSE](https://github.com/Fincer/sz_mod_treemodels/blob/master/LICENSE) for details.

## Disclaimer

All data and instructions are provided as they are, not any guarantee about quality.
