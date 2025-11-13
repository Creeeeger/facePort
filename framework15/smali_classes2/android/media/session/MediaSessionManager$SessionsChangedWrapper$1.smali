.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;
.super Landroid/media/session/IActiveSessionsListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$v-zQmMXFQ9fkWva-bGATn7CMvwg(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->lambda$onActiveSessionsChanged$0(Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-direct {p0}, Landroid/media/session/IActiveSessionsListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveSessionsChanged$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$mcallOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onActiveSessionsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
