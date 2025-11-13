.class public Lcom/android/settings/backup/PrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/backup/PrivacySettings$1;

    const v1, 0x7f17011b

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/backup/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static updatePrivacySettingsConfigData(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/backup/PrivacySettingsConfigData;->getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;

    move-result-object v0

    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupEnabled:Z

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "config"

    invoke-static {p0, v3, v4}, Lcom/android/settings/backup/PrivacySettingsUtils;->validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigSummary:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "management"

    invoke-static {p0, v3, v4}, Lcom/android/settings/backup/PrivacySettingsUtils;->validatedActivityIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-interface {v1, p0, v2}, Landroid/app/backup/IBackupManager;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageLabel:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupGray:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupGray:Z

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PrivacySettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x51

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17011b

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    return-void
.end method

.method public final updatePreferenceStates()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
