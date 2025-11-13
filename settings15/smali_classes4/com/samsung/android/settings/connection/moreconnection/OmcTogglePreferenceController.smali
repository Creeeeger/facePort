.class public Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final AUTO_OMC_UPDATE_OFF:I = 0x0

.field private static final AUTO_OMC_UPDATE_OFF_SA_VALUE:J = -0x1L

.field private static final AUTO_OMC_UPDATE_ON:I = 0x1

.field private static final AUTO_OMC_UPDATE_ON_SA_VALUE:J = 0x1L

.field private static final CIDMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.cidmanager"

.field private static final SDMCONFIG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdm.config"

.field private static final TAG:Ljava/lang/String; = "OmcTogglePreferenceController"


# instance fields
.field private final isCidManagerInstalled:Z

.field private final isSdmConfigInstalled:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.cidmanager"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->isInstalled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->isCidManagerInstalled:Z

    const-string p1, "com.samsung.android.sdm.config"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->isInstalled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->isSdmConfigInstalled:Z

    return-void
.end method

.method private isInstalled(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    sget-object p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->TAG:Ljava/lang/String;

    const-string p1, "NameNotFoundException"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->isCidManagerInstalled:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->isSdmConfigInstalled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417ba

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_omc_update"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-wide/16 v0, -0x1

    :goto_0
    const v2, 0x11942

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x11941

    invoke-static {v4, v2, v0, v1, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/moreconnection/OmcTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_omc_update"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
