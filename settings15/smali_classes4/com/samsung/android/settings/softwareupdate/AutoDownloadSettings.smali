.class public Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mWifiOnly:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mWifiOrMobile:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SoftwareUpdateSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1fab

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17014c

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "key_never"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "key_wifi_only"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mWifiOnly:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string p1, "key_wifi_or_mobile"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mWifiOrMobile:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY2"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mWifiOrMobile:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mWifiOnly:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mNever:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mWifiOnly:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;->mWifiOrMobile:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$AutoDownload;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/softwareupdate/AutoDownloadSettings;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
