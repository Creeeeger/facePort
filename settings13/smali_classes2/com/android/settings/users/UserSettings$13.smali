.class Lcom/android/settings/users/UserSettings$13;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1771
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1823
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 1824
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "user_add"

    const-string v2, "guest_add"

    if-eqz v0, :cond_0

    .line 1825
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x104039c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "supervised_user_add"

    .line 1830
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1833
    :cond_1
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v0

    const-string/jumbo v3, "user"

    .line 1834
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1835
    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3

    .line 1836
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    .line 1837
    iget-boolean v4, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v4, :cond_3

    .line 1838
    :cond_2
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-nez v4, :cond_4

    .line 1840
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v3, :cond_5

    .line 1842
    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-eqz v1, :cond_5

    .line 1844
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-nez p1, :cond_6

    .line 1846
    :cond_5
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method

.method public getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1789
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p0

    .line 1791
    new-instance p2, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string/jumbo p3, "user_settings_add_users_when_locked"

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p2, p0}, Lcom/android/settings/core/BasePreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1795
    new-instance p2, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    .line 1796
    invoke-interface {p2, p0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1797
    new-instance p2, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    .line 1798
    invoke-interface {p2, p0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1799
    new-instance p2, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    .line 1800
    invoke-interface {p2, p0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 1807
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1808
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1809
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1810
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    .line 1811
    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez p1, :cond_0

    const-string/jumbo p1, "user_add"

    .line 1813
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 1814
    sget p1, Lcom/android/settingslib/R$string;->user_add_user:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1815
    sget p1, Lcom/android/settings/R$string;->user_settings_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1816
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1776
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 1780
    :cond_0
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p0

    .line 1782
    iget-boolean p1, p0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->isSupportTwoPhone()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
