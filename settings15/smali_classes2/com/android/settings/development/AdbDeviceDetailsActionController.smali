.class public final Lcom/android/settings/development/AdbDeviceDetailsActionController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"


# instance fields
.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public final mPairedDevice:Landroid/debug/PairDevice;


# direct methods
.method public constructor <init>(Landroid/debug/PairDevice;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/AdbDeviceDetailsActionController;->mPairedDevice:Landroid/debug/PairDevice;

    iput-object p3, p0, Lcom/android/settings/development/AdbDeviceDetailsActionController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v0, p1, Lcom/android/settingslib/widget/ActionButtonsPreference;->mButton1Info:Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;

    iget-boolean v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    invoke-virtual {p1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->notifyChanged()V

    :cond_0
    const v0, 0x7f0805e0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)V

    const v0, 0x7f14027f

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)V

    new-instance v0, Lcom/android/settings/development/AdbDeviceDetailsActionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/development/AdbDeviceDetailsActionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/AdbDeviceDetailsActionController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "buttons"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
