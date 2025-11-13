.class Landroid/media/Utils$ListenerList$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/media/Utils$ListenerList$ListenerWithCancellation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/Utils$ListenerList;->add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/Utils$ListenerList$ListenerWithCancellation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist mCancelled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/media/Utils$ListenerList;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/media/Utils$ListenerList$Listener;


# direct methods
.method public static synthetic blacklist $r8$lambda$A27ad-TvFtNwMqQLJ5lKZWBOlkQ(Landroid/media/Utils$ListenerList$1;Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/Utils$ListenerList$1;->lambda$onEvent$0(Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/Utils$ListenerList;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
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

    iput-object p1, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    iput-object p2, p0, Landroid/media/Utils$ListenerList$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/Utils$ListenerList$1;->val$listener:Landroid/media/Utils$ListenerList$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    return-void
.end method

.method private synthetic blacklist lambda$onEvent$0(Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmRestrictSingleCallerOnEvent(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/media/Utils$ListenerList$Listener;->onEvent(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    if-eqz v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    invoke-interface {p1, p2, p3}, Landroid/media/Utils$ListenerList$Listener;->onEvent(ILjava/lang/Object;)V

    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 2

    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->this$0:Landroid/media/Utils$ListenerList;

    invoke-static {v0}, Landroid/media/Utils$ListenerList;->-$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iput-boolean v1, p0, Landroid/media/Utils$ListenerList$1;->mCancelled:Z

    :goto_0
    return-void
.end method

.method public blacklist onEvent(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/Utils$ListenerList$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/Utils$ListenerList$1;->val$listener:Landroid/media/Utils$ListenerList$Listener;

    new-instance v2, Landroid/media/Utils$ListenerList$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1, p2}, Landroid/media/Utils$ListenerList$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/Utils$ListenerList$1;Landroid/media/Utils$ListenerList$Listener;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
