.class public final synthetic Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetAnchorByView:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    sget p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAnchorView:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->setLocationDialogAnchor(Landroidx/preference/Preference;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mTimeSettingDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mSetSchedulePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->setDialogAnchor(Landroidx/preference/Preference;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mOrientation:I

    :cond_4
    return-void
.end method
