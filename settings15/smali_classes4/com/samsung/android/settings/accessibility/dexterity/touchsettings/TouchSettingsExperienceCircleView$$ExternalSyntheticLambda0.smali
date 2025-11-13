.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mProgress:Landroid/widget/ProgressBar;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
