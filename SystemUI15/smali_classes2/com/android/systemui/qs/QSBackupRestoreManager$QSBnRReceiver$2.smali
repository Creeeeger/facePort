.class public final Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$basePath:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$saveKey:Ljava/lang/String;

.field public final synthetic val$securityLevel:I

.field public final synthetic val$source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$basePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$source:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$securityLevel:I

    iput-object p6, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$basePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$source:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$securityLevel:I

    iget-object p0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start restore basePath="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " source="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "QSBackupRestoreManager"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const-string v6, "/"

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->streamCrypt(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/android/systemui/qs/QSBackupRestoreManager;->decrypt(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->loadRestoreFile(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v0, 0x1

    move-object v4, p0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v3, p0

    :goto_0
    const/4 v6, 0x0

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_QUICKPANEL2"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/QSBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v4, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_QUICKPANEL2"

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/QSBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
