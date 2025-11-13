.class public Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "AppChannelLinkPreferenceController.java"


# direct methods
.method public static synthetic $r8$lambda$ngDEpNyldreQjufYexse0BbgIGE(Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;->lambda$updateState$0(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private synthetic lambda$updateState$0(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 70
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;->getSubSettingLauncher(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const p0, 0x8cb8

    const-string p1, "NSTE0025"

    .line 72
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "app_channel_link"

    return-object p0
.end method

.method getSubSettingLauncher(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 3

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/AppChannelListSettings;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x48

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;Landroidx/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method
