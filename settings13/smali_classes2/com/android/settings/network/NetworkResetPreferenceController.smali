.class public Lcom/android/settings/network/NetworkResetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkResetPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-direct {v0, p1}, Lcom/android/settings/network/NetworkResetRestrictionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkResetPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/general/GeneralUtils;->isResetEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "network_reset_pref"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
