.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "EyeComfortTimeSettingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPreference:Landroidx/preference/Preference;


# instance fields
.field private final BUNDLE_KEY_END_TIME:Ljava/lang/String;

.field private final BUNDLE_KEY_START_TIME:Ljava/lang/String;

.field private final BUNDLE_KEY_TAB:Ljava/lang/String;

.field private mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

.field private mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, "StartTime"

    .line 21
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->BUNDLE_KEY_START_TIME:Ljava/lang/String;

    const-string v0, "EndTime"

    .line 22
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->BUNDLE_KEY_END_TIME:Ljava/lang/String;

    const-string v0, "Tab"

    .line 23
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->BUNDLE_KEY_TAB:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;

    return-void
.end method

.method public static newInstance(Landroidx/preference/Preference;)Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;
    .locals 0

    .line 34
    sput-object p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mPreference:Landroidx/preference/Preference;

    .line 35
    new-instance p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;

    invoke-direct {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;-><init>()V

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v1

    if-eqz p1, :cond_0

    const-string v0, "StartTime"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "EndTime"

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Tab"

    .line 50
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;-><init>(Landroid/content/Context;III)V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    .line 54
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 55
    sget-object p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->setDialogAnchor(Landroidx/preference/Preference;)V

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;->onTimeDialogDismiss()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->getStartTime()I

    move-result v0

    const-string v1, "StartTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->getEndTime()I

    move-result v0

    const-string v1, "EndTime"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;->getTabIndex()I

    move-result v0

    const-string v1, "Tab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDialogAnchor(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 90
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 91
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 92
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mDialog:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialog;

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    return-void
.end method

.method setOnTimeDialogDismissListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment;->mTimeDialogDismissListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeSettingDialogFragment$onTimeDialogDismissListener;

    return-void
.end method
