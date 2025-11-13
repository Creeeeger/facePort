.class Lcom/android/internal/util/PersistentServiceConnection$2;
.super Ljava/lang/Object;
.source "PersistentServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/PersistentServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/PersistentServiceConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/PersistentServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/util/PersistentServiceConnection$2;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection$2;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/util/PersistentServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection$2;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fputmCancelToken(Lcom/android/internal/util/PersistentServiceConnection;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection$2;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {v1}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$mbindInternalLocked(Lcom/android/internal/util/PersistentServiceConnection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
