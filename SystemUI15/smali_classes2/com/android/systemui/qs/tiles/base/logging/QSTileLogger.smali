.class public final Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final factory:Lcom/android/systemui/log/LogBufferFactory;

.field public final logBufferCache:Ljava/util/Map;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/android/systemui/log/LogBufferFactory;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/systemui/qs/pipeline/shared/TileSpec;",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;",
            "Lcom/android/systemui/log/LogBufferFactory;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->factory:Lcom/android/systemui/log/LogBufferFactory;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logBufferCache:Ljava/util/Map;

    return-void
.end method

.method public static getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QSLog_tile__"

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->secondaryLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->contentDescription:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->stateDescription:Ljava/lang/CharSequence;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[label="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", s_label="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cd="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sd="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", svi="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enabled="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", a11y="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->expandedAccessibilityClassName:Ljava/lang/String;

    const-string v0, "]"

    invoke-static {v4, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v0, :cond_0

    const-string p0, "click"

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p0, :cond_1

    const-string p0, "long click"

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logBufferCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logBufferCache:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->factory:Lcom/android/systemui/log/LogBufferFactory;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v2, Lcom/android/systemui/log/LogBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final logCustomTileUserActionDelivered(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logCustomTileUserActionDelivered$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logCustomTileUserActionDelivered$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logError(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logError$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logError$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logForceUpdate(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logForceUpdate$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logForceUpdate$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logInfo()V
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/tiles/impl/night/domain/interactor/NightDisplayTileUserActionInteractor;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logInfo$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logInfo$2;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    const-string v2, "Enrolled in forced night display auto mode"

    iput-object v2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logInitialRequest(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logInitialRequest$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logInitialRequest$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logStateUpdate(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logStateUpdate$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logStateUpdate$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;)Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x32

    invoke-static {p3, p2}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUserAction(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lcom/android/systemui/qs/pipeline/shared/TileSpec;ZZ)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object v0

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserAction$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserAction$2;

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    iput p0, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean p4, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUserActionPipeline(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserActionPipeline$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserActionPipeline$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x32

    invoke-static {p3, p2}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUserActionRejectedByFalsing(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lcom/android/systemui/qs/pipeline/shared/TileSpec;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserActionRejectedByFalsing$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserActionRejectedByFalsing$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUserActionRejectedByPolicy(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lcom/android/systemui/qs/pipeline/shared/TileSpec;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserActionRejectedByPolicy$2;

    invoke-direct {v1, p3}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logUserActionRejectedByPolicy$2;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p2, v0, v1, p3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->toLogString(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)Ljava/lang/String;

    move-result-object p1

    move-object p3, p2

    check-cast p3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logWarning(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/tiles/impl/night/ui/NightDisplayTileMapper;->spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogBuffer(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->getLogTag(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logWarning$2;->INSTANCE:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger$logWarning$2;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
