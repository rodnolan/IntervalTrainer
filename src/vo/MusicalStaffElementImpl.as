/**
 * Created by rodnolan on 15-07-05.
 */
package vo {
import flash.events.MouseEvent;

import spark.core.SpriteVisualElement;

public class MusicalStaffElementImpl extends SpriteVisualElement implements IMusicalStaffElement {
    protected var _noteName:String;

    public function MusicalStaffElementImpl(noteName:String) {
        this._noteName = noteName;
        this.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
        this.addEventListener(MouseEvent.CLICK, onClick);

    }

    private function onClick(event:* = null):void {
        drawNote();
    }
    private  function onMouseOver(event:MouseEvent):void {
        trace(this.noteName);
    }

    public function get noteName():String {
        return _noteName;
    }
    public function draw(width:int, height:int):void {
        throw new Error("must called on subclass only");
    }
    public function drawNote():void {
        trace("drawing note " + _noteName);
    }

    public function showName():void {

    }

}
}
