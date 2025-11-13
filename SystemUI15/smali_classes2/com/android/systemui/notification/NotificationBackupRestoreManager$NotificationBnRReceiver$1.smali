.class public final Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$basePath:Ljava/lang/String;

.field public final synthetic val$blockList:Ljava/util/List;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$saveKey:Ljava/lang/String;

.field public final synthetic val$securityLevel:I

.field public final synthetic val$source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$basePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$source:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$securityLevel:I

    iput-object p6, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$saveKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$blockList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;

    iget-object v2, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$basePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$source:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$securityLevel:I

    iget-object v8, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$saveKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$NotificationBnRReceiver$1;->val$blockList:Ljava/util/List;

    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION"

    const-string v7, ""

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
