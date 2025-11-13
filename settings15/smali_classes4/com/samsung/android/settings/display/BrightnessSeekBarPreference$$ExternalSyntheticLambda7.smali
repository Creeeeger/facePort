.class public final synthetic Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    sget v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float v0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(FI)V

    return-void
.end method
