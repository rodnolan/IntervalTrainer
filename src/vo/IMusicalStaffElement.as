/**
 * Created by rodnolan on 15-07-03.
 */
package vo {
import flash.events.MouseEvent;

public interface IMusicalStaffElement {
    function draw(width:int, height:int):void;
    function drawNote():void;
    function get noteName():String;
    function showName():void;
}
}
