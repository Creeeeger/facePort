.class public final Lcom/android/wm/shell/common/pip/PipPerfHintController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

.field public final mSystemPerformanceHinter:Landroid/window/SystemPerformanceHinter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/SystemPerformanceHinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController;->mSystemPerformanceHinter:Landroid/window/SystemPerformanceHinter;

    return-void
.end method


# virtual methods
.method public final startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;
    .locals 8

    sget-object v0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->sActiveSessions:Ljava/util/Map;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController;->mSystemPerformanceHinter:Landroid/window/SystemPerformanceHinter;

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v1, v1, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    const-string v2, "pip-high-perf-session"

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/window/SystemPerformanceHinter;->startSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;-><init>(Lcom/android/wm/shell/common/pip/PipPerfHintController;Landroid/window/SystemPerformanceHinter$HighPerfSession;Ljava/lang/String;I)V

    new-instance p2, Lcom/android/wm/shell/common/pip/PipPerfHintController$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, p1}, Lcom/android/wm/shell/common/pip/PipPerfHintController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    const-wide/16 v3, 0x4e20

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PipPerfHintController"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x1d53a15b791735fbL

    const/4 v5, 0x0

    const-string v6, "%s: high perf session %s is started"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method
