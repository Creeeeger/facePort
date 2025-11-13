.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReverseAnimator()V
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz p0, :cond_6

    sget-object v2, Lcom/android/systemui/haptics/qs/LongPressHapticBuilder;->INSTANCE:Lcom/android/systemui/haptics/qs/LongPressHapticBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->durations:[I

    if-eqz v4, :cond_0

    aget v4, v4, v3

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget v5, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->effectDuration:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v2, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    const/4 v6, 0x0

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    const-string v1, "LongPressHapticBuilder"

    const-string v2, "Cannot play reverse haptics because LOW_TICK is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v4

    int-to-float v5, v1

    const v6, 0x3da3d70a    # 0.08f

    div-float v5, v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_4

    int-to-float v8, v7

    mul-float/2addr v8, v5

    sub-float v8, v6, v8

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v4, v9, v8, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v6

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->cancel()V

    :cond_5
    if-eqz p0, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_7
    return-void
.end method
