.class public final synthetic Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrightnessSeekBarPreference"

    const-string v1, "Update brightness dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
