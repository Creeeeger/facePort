.class public final synthetic Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iput p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda5;->f$1:I

    iget-object v0, p1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "shown_max_brightness_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iput-boolean v2, p1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsMaxBrightnessDialogShown:Z

    iget-object v0, p1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " setNegativeButton >> limit : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    const-string v1, "BrightnessSeekBarPreference"

    invoke-static {p0, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    int-to-float p0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v1, v2, p0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result p0

    iget-object v1, p1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget v2, v1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    iget v3, v1, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v2, v3, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v2

    float-to-int v2, v2

    iget-object v1, v1, Lcom/samsung/android/settings/display/BrightnessManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(I)V

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(FI)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    :cond_0
    return-void
.end method
