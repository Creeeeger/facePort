.class public Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onReceive : "

    const-string v1, "KeyCustomizationBackupRestore"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;-><init>(Landroid/content/Context;)V

    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_HOT_KEY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v5, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->UNKNOWN_ERROR:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    sget-object v4, Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;->RESULT_FAIL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;

    const-string v2, "EXPORT_SESSION_TIME"

    const-string v3, "SOURCE"

    const-string v6, "SECURITY_LEVEL"

    const-string v7, "SESSION_KEY"

    const/4 v8, 0x0

    const-string v9, "SAVE_PATH"

    if-eqz v0, :cond_6

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ACTION"

    invoke-virtual {p2, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v6, 0x2

    const/4 v11, 0x0

    if-ne v10, v6, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iput-object v11, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    const-string p0, "canceled backupThread"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/IWindowManager;->getBackupKeyCustomizationInfoList()Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v6

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v10, "Cant getBackupKeyCustomizatioInfoList. "

    invoke-static {v1, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v10, v11

    :goto_0
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/samsung/android/settings/inputmethod/bnr/DocumentStorageAccessHelper;->getPathUris(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v9

    move-object v9, v1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {p2, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4

    :cond_4
    :goto_1
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOT_KEY"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    :goto_2
    const-string p1, "There is no key info."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->INVALID_DATA:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOT_KEY"

    move-object v2, p0

    move-object v6, v0

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_HOT_KEY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1, p2}, Lcom/samsung/android/settings/inputmethod/bnr/DocumentStorageAccessHelper;->getPathUris(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move-object v6, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOT_KEY"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method
