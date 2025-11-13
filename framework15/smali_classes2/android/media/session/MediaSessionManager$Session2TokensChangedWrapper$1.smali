.class Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;
.super Landroid/media/session/ISession2TokensListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$c33rZMDeK2oB6p7dZWdCSbL2brE(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->lambda$onSession2TokensChanged$0(Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    invoke-direct {p0}, Landroid/media/session/ISession2TokensListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onSession2TokensChanged$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->-$$Nest$fgetmListener(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;->onSession2TokensChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onSession2TokensChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->-$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
