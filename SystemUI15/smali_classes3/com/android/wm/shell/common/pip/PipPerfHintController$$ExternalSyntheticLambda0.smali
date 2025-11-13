.class public final synthetic Lcom/android/wm/shell/common/pip/PipPerfHintController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    sget-object v1, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->sActiveSessions:Ljava/util/Map;

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v3, "PipPerfHintController"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x0

    const-string v6, "%s: high perf session %s timed out"

    const-wide v3, -0x34f072116114cb89L    # -3.777891522730285E53

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
