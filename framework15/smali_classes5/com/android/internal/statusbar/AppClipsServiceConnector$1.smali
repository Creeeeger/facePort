.class Lcom/android/internal/statusbar/AppClipsServiceConnector$1;
.super Ljava/lang/Object;
.source "AppClipsServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/statusbar/AppClipsServiceConnector;->connectToServiceAndProcessRequest(ILjava/util/concurrent/CompletableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/statusbar/AppClipsServiceConnector;

.field final synthetic blacklist val$future:Ljava/util/concurrent/CompletableFuture;

.field final synthetic blacklist val$taskId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/statusbar/AppClipsServiceConnector;Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->this$0:Lcom/android/internal/statusbar/AppClipsServiceConnector;

    iput-object p2, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    iput p3, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p2}, Lcom/android/internal/statusbar/IAppClipsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAppClipsService;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->val$taskId:I

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IAppClipsService;->canLaunchCaptureContentActivityForNote(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/internal/statusbar/AppClipsServiceConnector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception from service\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/statusbar/AppClipsServiceConnector$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
