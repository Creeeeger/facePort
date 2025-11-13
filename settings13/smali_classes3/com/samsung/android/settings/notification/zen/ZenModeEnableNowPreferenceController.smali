.class public Lcom/samsung/android/settings/notification/zen/ZenModeEnableNowPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeEnableNowPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFragment:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "enable_now"

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 32
    iput-object p3, p0, Lcom/samsung/android/settings/notification/zen/ZenModeEnableNowPreferenceController;->mFragment:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private setZenModeOn()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenDuration()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenModeForDuration(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenMode(I)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Lcom/android/settings/notification/SettingsEnableZenModeDialog;

    invoke-direct {v0}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/ZenModeEnableNowPreferenceController;->mFragment:Landroidx/fragment/app/FragmentManager;

    const-string v1, "PrefControllerMixin"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_now"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/ZenModeEnableNowPreferenceController;->setZenModeOn()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenMode(I)V

    :goto_0
    return p2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 49
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 54
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
