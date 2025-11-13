.class Landroid/widget/Chronometer$CirCleProgressDrawable;
.super Landroid/widget/Chronometer$ChronometerProgressDrawable;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CirCleProgressDrawable"
.end annotation


# instance fields
.field private blacklist mArcRect:Landroid/graphics/RectF;

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

    iput-object p1, p0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Chronometer$ChronometerProgressDrawable;-><init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v2}, Landroid/widget/Chronometer;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mAlpha:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/Chronometer$CirCleProgressDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v3}, Landroid/widget/Chronometer;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v5}, Landroid/widget/Chronometer;->-$$Nest$fgetmCirclePadding(Landroid/widget/Chronometer;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v5}, Landroid/widget/Chronometer;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget-object v6, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v6}, Landroid/widget/Chronometer;->-$$Nest$fgetmCirclePadding(Landroid/widget/Chronometer;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v6}, Landroid/widget/Chronometer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v7}, Landroid/widget/Chronometer;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v7}, Landroid/widget/Chronometer;->-$$Nest$fgetmCirclePadding(Landroid/widget/Chronometer;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Landroid/widget/Chronometer;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v8}, Landroid/widget/Chronometer;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/Chronometer;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget-object v4, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v4}, Landroid/widget/Chronometer;->-$$Nest$fgetmCirclePadding(Landroid/widget/Chronometer;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v2}, Landroid/widget/Chronometer;->-$$Nest$fgetmMaxProgress(Landroid/widget/Chronometer;)I

    move-result v2

    iget-object v3, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v3}, Landroid/widget/Chronometer;->-$$Nest$fgetmMinProgress(Landroid/widget/Chronometer;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget v3, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mProgress:I

    iget-object v4, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v4}, Landroid/widget/Chronometer;->-$$Nest$fgetmMinProgress(Landroid/widget/Chronometer;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v4, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mIsBackground:Z

    if-eqz v4, :cond_1

    iget-object v6, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x43b40000    # 360.0f

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v12, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v14, v3, v4

    const/4 v15, 0x0

    iget-object v4, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x43870000    # 270.0f

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v4, v0, Landroid/widget/Chronometer$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
