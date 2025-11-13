.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchHoldDelayExperienceFragment;->mCircleView:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceCircleView;->mRotationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
