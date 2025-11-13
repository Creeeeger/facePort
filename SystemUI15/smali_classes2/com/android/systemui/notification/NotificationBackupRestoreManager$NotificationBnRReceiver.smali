.class public Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBackupThread:Ljava/lang/Thread;


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

    move-result-object v2

    const-string v3, "onReceive ( action = "

    const-string v4, ")"

    const-string v5, "NotifBnRManager"

    invoke-static {v3, v2, v4, v5}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    :try_start_0
    const-string v3, "SAVE_PATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "SOURCE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "SESSION_KEY"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "EXPORT_SESSION_TIME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "ACTION"

    const/4 v6, 0x0

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "SECURITY_LEVEL"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "NOTIFICATION_BLOCK_LIST"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_NOTIFICATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "stop backup working thread for quickpanel"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    const-class v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    const-string v7, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION"

    sget-object v9, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v11, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v5, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;-><init>(Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    const-string v1, "REQUEST_BACKUP_NOTIFICATION"

    invoke-direct {v9, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_NOTIFICATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v9, Ljava/lang/Thread;

    new-instance v11, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$2;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v5, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$2;-><init>(Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    const-string v0, "REQUEST_RESTORE_NOTIFICATION"

    invoke-direct {v9, v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
