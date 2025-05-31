# AHK Scripts for RuneLite
## Philosophy
I don't play OSRS to:
  * Break world records
  * Farm GP
  * Real World Trade
  * Get Repetitive Strain Injury
  * Get brain damage
  * Ruin my life

But, some aspects of the game are RSI and brain damage simulators that take hundreds of hours. The approach here is to make repetitive skilling grinds more AFK-able so I can multitask them and not get physically injured doing them.


## Overview
The most reliable way of making this sort of script work is to use RuneLite plugins to highlight UI elements or in-game entities. These things are to be highlighed in colours that are not likely to be found in the game/UI itself (see below).
The AHK function for (searching for a pixel with a colour)[https://www.autohotkey.com/docs/v1/lib/PixelSearch.htm] then lets you find the right place to click.

## Plugin Config
Some hints on plugin configuration to make this approach work:
  * Screen Markers for UI elements (static rectangles)
    * Optimised for quickly giving you perfect rectangles
    * Configure transparent outline and solid fill colour
  * NPC Indicators for NPCs. Config hints:
    * Transparent outline (outline isn't clickable)
    * Solid fill
    * No tile highlights
  * Inventory Viewier
    * Conveneient for seeing a copy of your inventory as your main invetory will (probably) have a load of screen markers obscuring it.
  * Minimap plugin
    * Hiding minimap means coloured dots won't interfere with scripts
    * Also possible to exclude by specifying pixel coordinate boundaries for overall UI (can be done more or less intelligently)
  * Mouse Tooltips
    * Disable; it messes with colour searches.
  * Tile indicators
    * Disable; probably uses similar colours that you want to use for screen markers
  * Ping grapher
    * (Not that common but a good example of other such things)
    * It uses pure yellow for its UI so again, will interfere with pixel colour searching
    * Disable it and all other such unnecessary UI plugins


## Colours
In order for this paradigm to work, every click in the script needs a unique colour. Note that by default AHK specifies colours in BGR in V1. This is changed in V2. All colour codes in this README are RBG hex.

Colours that will likely work well are those "unnatural ones" that won't be in the game or UI such as:
  * `#FF0000`
  * `#00FF00`
  * `#0000FF`
  * `#FFFF00`
  * `#FF00FF`
  * etc.

## Screen Markers vs Hitboxes
The alternative to using screenmarkers is to specify bounding rectangles with coordinate values for each hitbox. The advantage of this is that there is no need to create screen markers or disable/reconfigure plugins and you don't have to find any unique colours. The main disadvantage is that it is not portable across screen/window resolutions and window positions and is very fiddly to set up if it should be broken by an update. It is also makes it harder to debug when watching the script run.

In addition, area clicking would not work reliably for moving NPCs or indeed any in-game elements due to subtle anti-bot camera movements.

## Human-like behaviour considerations
### Area clicking vs single point
Clicking randomly within a specified area keeps the script more human-like. This adds a little complexity with using screen markers because there is no guarantee on the size of each rectangle. One approach is to be conservative and assume a relatively small area.

The random functions in AHK are uniform distribution whereas (I suspect) human clicking would be more normally distributed, so this "randomness" isn't perfect but it seems to be a sensible and effective precaution.

### Delay between actions
Random delays between actions with `Sleep` are a very good idea not only to avoid detection, but for human-like rate limiting and also to allow for client and server delays.

### Mouse movements
Keep movement speeds random and realistic. Ideally make the mouse move along some kind of arc rather than perfect straight lines. See `mousemove.ahk` for a primitive example.

### Human supervision
Some actions are guaranteed to complete successfully and the next action can always be made (e.g. sending `ESC` to open inventory) but some can fail (e.g. clicking on an NPC, the NPC could move or e.g. the shop doesn't have enough stock). This is hard to overcome with an AHK approach but actually leads to a good feature: human supervision is necessary and it is desirable. It stops the script going off on a mad one and it means you have to be watching it and making real human interactions reasonably frequently.
