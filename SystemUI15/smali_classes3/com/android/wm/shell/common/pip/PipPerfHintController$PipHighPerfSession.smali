.class public final Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final sActiveSessions:Ljava/util/Map;


# instance fields
.field public final mReason:Ljava/lang/String;

.field public final mSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->sActiveSessions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/common/pip/PipPerfHintController;Landroid/window/SystemPerformanceHinter$HighPerfSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->mSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    iput-object p3, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->mReason:Ljava/lang/String;

    sget-object p1, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->sActiveSessions:Ljava/util/Map;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p1, Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/pip/PipPerfHintController;Landroid/window/SystemPerformanceHinter$HighPerfSession;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;-><init>(Lcom/android/wm/shell/common/pip/PipPerfHintController;Landroid/window/SystemPerformanceHinter$HighPerfSession;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    sget-object v0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->sActiveSessions:Ljava/util/Map;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->mSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-virtual {v0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "%s: high perf session %s is closed"

    const-string v1, "PipPerfHintController"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x643bb01e25fc3164L    # 6.84807426963764E174

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->mSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] initially started due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->mReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
