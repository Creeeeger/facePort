.class public final Lcom/android/wm/shell/sysui/ShellInit;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mHasInitialized:Z

.field public final mInitCallbacks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mHasInitialized:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can not add callback after init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_INIT_enabled:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0xac5c196d778c4c8L

    const/4 v3, 0x0

    const-string v4, "Adding init callback for %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public init()V
    .locals 13

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_INIT_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x558df2a7a1d83443L    # 1.3415117037644442E104

    const/4 v7, 0x1

    const-string v8, "Initializing Shell Components: %d"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {v1}, Landroid/view/SurfaceControl;->setDebugUsageAfterRelease(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_INIT_enabled:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sub-long/2addr v5, v3

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x71f40345bae2cb12L    # -5.246542568257257E-241

    const/4 v10, 0x4

    const-string v11, "\t%s init took %dms"

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellInit;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/android/wm/shell/sysui/ShellInit;->mHasInitialized:Z

    return-void
.end method
