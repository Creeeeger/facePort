.class Landroid/widget/Chronometer$HorizontalProgressDrawable;
.super Landroid/widget/Chronometer$ChronometerProgressDrawable;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalProgressDrawable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Chronometer;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Chronometer$ChronometerProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v1}, Landroid/widget/Chronometer;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->mAlpha:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/Chronometer$HorizontalProgressDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v1}, Landroid/widget/Chronometer;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v2, v1

    iget-object v8, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Landroid/widget/Chronometer$HorizontalProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
