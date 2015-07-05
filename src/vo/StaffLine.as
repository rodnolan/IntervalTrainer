/**
 * Created by rodnolan on 15-07-03.
 */
package vo {
import flash.display.Sprite;
import flash.events.MouseEvent;

import spark.core.SpriteVisualElement;

public class StaffLine extends MusicalStaffElementImpl {

    private var hitAreaSprite:Sprite;

    public function StaffLine(noteName:String) {
        super(noteName);
    }

    override public function draw(width:int, height:int):void {
        var heightMultiplier:int = 4;
        var hitAreaHeight:int = height * heightMultiplier;
        var hitAreaY:int = -(hitAreaHeight/2) + (height/2);
        graphics.lineStyle(2);
        graphics.beginFill(0);
        graphics.drawRect(0, 0, width, height);

        hitAreaSprite = new Sprite();
        hitAreaSprite.graphics.lineStyle(4,0,0);
        hitAreaSprite.graphics.beginFill(0xff0000,0);
        hitAreaSprite.graphics.drawRect(0, hitAreaY, width, hitAreaHeight);
        hitAreaSprite.mouseEnabled = false;
        addChild(hitAreaSprite);
        this.hitArea = hitAreaSprite;

    }
}
}