.class public Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;
.super Landroid/widget/ImageView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sDrawInterval:J

.field public static sInputMillis:J

.field public static sMinute:I

.field public static sRemainMillis:J

.field public static sSecond:I


# instance fields
.field public final mAlpha:I

.field public mCenterX:F

.field public mCenterY:F

.field public mCircleBGPaint:Landroid/graphics/Paint;

.field public mCircleBackgroundColor:I

.field public mCircleDrawColor:I

.field public mCircleOnGoingColor:I

.field public mCirclePaint:Landroid/graphics/Paint;

.field public mCircleRadius:F

.field public mEndEffectPaint:Landroid/graphics/Paint;

.field public final mHandler:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

.field public mPointerPaint:Landroid/graphics/Paint;

.field public mStartEffectPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mPointerPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;-><init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mHandler:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

    const/16 p1, 0xff

    iput p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mPointerPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;-><init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mHandler:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

    const/16 p1, 0xff

    iput p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mPointerPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;-><init>(Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mHandler:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView$NoLeakHandler;

    const/16 p1, 0xff

    iput p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mAlpha:I

    return-void
.end method

.method public static updateTime(JJ)V
    .locals 6

    const-wide/16 v0, 0x320

    add-long/2addr v0, p2

    sget-wide v2, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->MINUTE_MILLIS:J

    div-long v4, v0, v2

    long-to-int v4, v4

    sput v4, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sMinute:I

    rem-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECOND_MILLIS:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sSecond:I

    const-wide/16 v0, 0xb4

    sub-long/2addr p0, v0

    sput-wide p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sInputMillis:J

    cmp-long p0, p2, v0

    if-gez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    sub-long p0, p2, v0

    :goto_0
    sput-wide p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sRemainMillis:J

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged() newConfig = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProtectionTimerCircleView"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->setCircleSize()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->setCircleStrokeWidth()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v5, v0, v1

    iget v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterY:F

    mul-float v6, v0, v1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    sget v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sMinute:I

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sSecond:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBackgroundColor:I

    iput v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleDrawColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleOnGoingColor:I

    iput v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleDrawColor:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleRadius:F

    iget-object v4, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-wide v1, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sRemainMillis:J

    long-to-float v1, v1

    sget-wide v2, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->sInputMillis:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v9, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleDrawColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleRadius:F

    sub-float v4, v1, v2

    iget v3, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterY:F

    sub-float v5, v3, v2

    add-float v6, v1, v2

    add-float v7, v3, v2

    iget-object v11, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final setCircleSize()V
    .locals 6

    const-string v0, "ProtectionTimerCircleView"

    const-string/jumbo v1, "setCircleSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070837

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070836

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterX:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070834

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCenterY:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070835

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleRadius:F

    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    const-string/jumbo v1, "updateLayoutForRotate()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setCircleStrokeWidth()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070837

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCirclePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mStartEffectPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mEndEffectPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerCircleView;->mCircleBGPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_3

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    return-void
.end method
