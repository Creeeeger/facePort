.class final Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionsChangedWrapper"
.end annotation


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final greylist-max-o mStub:Landroid/media/session/IActiveSessionsListener$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStub(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcallOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->callOnActiveSessionsChangedListener(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelease(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->release()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;-><init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iput-object p3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist callOnActiveSessionsChangedListener(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Landroid/media/session/MediaController;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaSession$Token;

    invoke-direct {v4, v0, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private greylist-max-o release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
