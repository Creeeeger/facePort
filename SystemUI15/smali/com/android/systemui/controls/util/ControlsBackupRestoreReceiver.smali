.class public final Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

.field public final secControlsController:Lcom/android/systemui/controls/controller/SecControlsController;

.field public final secControlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/SecControlsController;Lcom/android/systemui/controls/ui/SecControlsUiController;Lcom/android/systemui/controls/util/ControlsFileLoader;Lcom/android/systemui/controls/util/EncryptDecryptWrapper;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/controls/util/ControlsUtil;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p2, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secControlsController:Lcom/android/systemui/controls/controller/SecControlsController;

    iput-object p3, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secControlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    iput-object p4, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

    iput-object p5, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

    iput-object p6, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p7, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    return-void
.end method

.method public static isPackageInstalledAndEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ControlsBackupRestoreManager"

    const-string v1, "Already Installed "

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p0

    goto :goto_0

    :catch_0
    const-string p0, "Not Installed "

    invoke-static {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3
.end method

.method public static sendResponse(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    invoke-virtual {v1}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->getValue()I

    move-result v1

    const-string v2, "RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    invoke-virtual {v1}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->getValue()I

    move-result v1

    const-string v2, "ERR_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "REQ_SIZE"

    iget v2, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SOURCE"

    iget-object v2, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    const-string v1, "EXTRA_ERR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "ControlsBackupRestoreManager"

    const-string p1, "send response"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_13

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    const-string v3, "SAVE_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_1

    move-object v7, v4

    goto :goto_0

    :cond_1
    move-object v7, v3

    :goto_0
    const-string v3, "SAVE_PATH_URLS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const-string v3, "ACTION"

    const/4 v15, 0x0

    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "SESSION_KEY"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v9, v4

    goto :goto_1

    :cond_3
    move-object v9, v5

    :goto_1
    const-string v5, "SOURCE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v10, v4

    goto :goto_2

    :cond_4
    move-object v10, v5

    :goto_2
    const-string v4, "EXPORT_SESSION_TIME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "SECURITY_LEVEL"

    invoke-virtual {v2, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "EXTRA_BACKUP_ITEM"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    move-object v12, v5

    new-instance v14, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->values()[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    move-result-object v2

    array-length v5, v2

    move v8, v15

    :goto_3
    const-string v11, "Array contains no element matching the predicate."

    if-ge v8, v5, :cond_12

    aget-object v16, v2, v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;->getValue()I

    move-result v15

    if-ne v15, v3, :cond_11

    sget-object v2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->values()[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_10

    aget-object v15, v2, v5

    invoke-virtual {v15}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->getValue()I

    move-result v8

    if-ne v8, v4, :cond_f

    const/4 v2, 0x0

    move-object v5, v14

    move-object/from16 v8, v16

    move-object v11, v15

    move-object v15, v14

    move-object v14, v2

    invoke-direct/range {v5 .. v14}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ControlsBackupRestoreManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    const-string v4, "com.samsung.android.intent.action.REQUEST_BACKUP_DEVICE_CONTROLS"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "/encrypt_controls.xml"

    iget-object v6, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    iget-object v7, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    iget-object v8, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    if-eqz v4, :cond_c

    const-string v2, "encryptFile success = "

    const-string v4, "start backup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    sget-object v9, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    new-instance v10, Lcom/android/systemui/controls/util/ControlsBackupFormat;

    iget-object v11, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v12, "lockscreen_show_controls"

    const/4 v13, -0x2

    const/4 v14, 0x0

    invoke-interface {v11, v12, v14, v13}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    move v11, v14

    :goto_5
    iget-object v12, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v16, v4

    const-string v4, "lockscreen_allow_trivial_controls"

    invoke-interface {v12, v4, v14, v13}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v12, 0x1

    goto :goto_6

    :cond_7
    move v12, v14

    :goto_6
    iget-object v4, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v13, "ControlsOOBEManageAppsCompleted"

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v13, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secControlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v13, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v13, v13, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    invoke-static {v13}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;->getSelectedComponent$default(Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    move-result-object v13

    if-eqz v13, :cond_8

    iget-object v13, v13, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    :goto_7
    new-instance v14, Lcom/android/systemui/controls/util/ControlsBackupSetting;

    invoke-direct {v14, v11, v12, v4, v13}, Lcom/android/systemui/controls/util/ControlsBackupSetting;-><init>(ZZZLjava/lang/String;)V

    new-instance v4, Lcom/android/systemui/controls/util/ControlsBackupControl;

    iget-object v11, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    check-cast v11, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/android/systemui/controls/util/ControlsBackupControl;-><init>(Ljava/util/List;)V

    invoke-direct {v10, v14, v4}, Lcom/android/systemui/controls/util/ControlsBackupFormat;-><init>(Lcom/android/systemui/controls/util/ControlsBackupSetting;Lcom/android/systemui/controls/util/ControlsBackupControl;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "backupFormat = "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/controls.xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v10}, Lcom/android/systemui/controls/util/ControlsFileLoader;->generateResultXML(Ljava/io/File;Lcom/android/systemui/controls/util/ControlsBackupFormat;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v10, "generateResultXML pass"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

    invoke-virtual {v0, v4, v10, v7, v6}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->encryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_8

    :catch_0
    move-exception v0

    move/from16 v17, v5

    goto :goto_9

    :cond_9
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_1
    move-exception v0

    const/16 v17, 0x0

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v5, v17

    :goto_a
    const-string v0, "backup success = "

    invoke-static {v0, v3, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v5, :cond_b

    sget-object v4, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->FAIL:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    sget-object v9, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->INVALID_DATA:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    move-object/from16 v18, v4

    move-object/from16 v19, v9

    goto :goto_b

    :cond_b
    move-object/from16 v19, v9

    move-object/from16 v18, v16

    :goto_b
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

    const/16 v20, 0x0

    iget-object v2, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    const-string v17, "com.samsung.android.intent.action.RESPONSE_BACKUP_DEVICE_CONTROLS"

    const/16 v22, 0x0

    iget-object v4, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->sendResponse(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;)V

    const-string v0, "end backup"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_c
    const-string v4, "com.samsung.android.intent.action.REQUEST_RESTORE_DEVICE_CONTROLS"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "start restore path = "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    sget-object v4, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->SUCCESS:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    :try_start_2
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/decrypt_controls.xml"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->encryptDecryptWrapper:Lcom/android/systemui/controls/util/EncryptDecryptWrapper;

    invoke-virtual {v8, v9, v5, v7, v6}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->decryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "decryptFile pass"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsFileLoader:Lcom/android/systemui/controls/util/ControlsFileLoader;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/controls/util/ControlsFileLoader;->loadResultXml(Ljava/io/File;)Lcom/android/systemui/controls/util/ControlsBackupFormat;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->restore(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackupFormat;)V

    const-string v0, "loadResultXml pass"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_c
    move-object v7, v2

    move-object v8, v4

    goto :goto_d

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    sget-object v2, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;->FAIL:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    sget-object v4, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;->INVALID_DATA:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    goto :goto_c

    :goto_d
    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

    const/16 v13, 0x60

    const/4 v14, 0x0

    const-string v6, "com.samsung.android.intent.action.RESPONSE_RESTORE_DEVICE_CONTROLS"

    const/4 v9, 0x0

    iget-object v10, v15, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v0}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->sendResponse(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;)V

    const-string v0, "end restore"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_e
    return-void

    :cond_f
    move-object v15, v14

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v15, v14

    add-int/lit8 v8, v8, 0x1

    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_f
    return-void
.end method

.method public final restore(Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsBackupFormat;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsBackupRestoreManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p2, Lcom/android/systemui/controls/util/ControlsBackupFormat;->setting:Lcom/android/systemui/controls/util/ControlsBackupSetting;

    iget-boolean v3, v2, Lcom/android/systemui/controls/util/ControlsBackupSetting;->showDevice:Z

    const-string v4, "lockscreen_show_controls"

    const/4 v5, -0x2

    invoke-interface {v0, v4, v3, v5}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-boolean v3, v2, Lcom/android/systemui/controls/util/ControlsBackupSetting;->controlDevice:Z

    const-string v4, "lockscreen_allow_trivial_controls"

    invoke-interface {v0, v4, v3, v5}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    iget-boolean v0, v2, Lcom/android/systemui/controls/util/ControlsBackupSetting;->isOOBECompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ControlsOOBEManageAppsCompleted"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, v2, Lcom/android/systemui/controls/util/ControlsBackupSetting;->selectedComponent:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restore cn = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->isPackageInstalledAndEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secControlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v5, v5, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    check-cast v3, Lcom/android/systemui/controls/ControlsServiceInfo;

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    :cond_4
    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    if-eqz v4, :cond_5

    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    invoke-virtual {v3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    new-instance v0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    invoke-direct {v0, v2}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    check-cast v1, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_6
    const-string v3, ""

    :goto_1
    new-instance v4, Lcom/android/systemui/controls/controller/ComponentInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    new-instance v0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    invoke-direct {v0, v2}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    check-cast v1, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    :cond_7
    :goto_2
    iget-object p2, p2, Lcom/android/systemui/controls/util/ControlsBackupFormat;->controls:Lcom/android/systemui/controls/util/ControlsBackupControl;

    iget-object p2, p2, Lcom/android/systemui/controls/util/ControlsBackupControl;->structures:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->isPackageInstalledAndEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackupRestoreReceiver;->secControlsController:Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_6

    :cond_a
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v1, Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;Z)V

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "restore backupStructures = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ControlsControllerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "restore result = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method
