.class Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-static {p2}, Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    sget-object p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v0, "KFAService connected"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    iget-object p2, p2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mDecryptFwService:Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->TAG:Ljava/lang/String;

    const-string v1, "KFAService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    iget-object v0, v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    iget-object v1, v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->mConnLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$1;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->bindKFAServiceInstance()Z

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
