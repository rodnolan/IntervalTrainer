/**
 * Created by rodnolan on 15-07-03.
 */
package vo {
import flash.events.MouseEvent;

import spark.core.SpriteVisualElement;

public class StaffSpace extends MusicalStaffElementImpl {

    public function StaffSpace(noteName:String) {
        super(noteName);
    }

    override public function draw(width:int, height:int):void {
        graphics.lineStyle(2);
        graphics.beginFill(0xeeeeee);
        graphics.drawRect(0, 0, width, height);
    }
}
}
