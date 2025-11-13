.class public final Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

.field public final backupManager:Landroid/app/backup/BackupManager;

.field public final backupUtils:Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;

.field public final bgScope:Lkotlinx/coroutines/CoroutineScope;

.field public final communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao;

.field public final communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

.field public final communalWidgets:Lkotlinx/coroutines/flow/Flow;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final widgetEntries:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/communal/widgets/CommunalWidgetHost;Lcom/android/systemui/communal/data/db/CommunalWidgetDao;Lcom/android/systemui/log/LogBuffer;Landroid/app/backup/BackupManager;Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;Lcom/android/systemui/common/data/repository/PackageChangeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iput-object p2, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    iput-object p5, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao;

    iput-object p7, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->backupManager:Landroid/app/backup/BackupManager;

    iput-object p8, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->backupUtils:Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "CommunalWidgetRepository"

    invoke-direct {p1, p6, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    check-cast p5, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    const-string p1, "communal_widget_table"

    const-string p2, "communal_item_rank_table"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;

    const/4 p6, 0x0

    invoke-direct {p2, p6}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;-><init>(I)V

    iget-object p5, p5, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p5, p1, p2}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda1;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p1

    iget-object p2, p4, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetProviders:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$widgetEntries$1;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$widgetEntries$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p6, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {p1, p5, p9, p0}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/common/data/repository/PackageChangeRepository;Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;)V

    invoke-static {p6, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgets:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final abortRestoreWidgets()V
    .locals 3

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$abortRestoreWidgets$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$abortRestoreWidgets$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final addWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;ILcom/android/systemui/communal/widgets/WidgetConfigurator;)V
    .locals 8

    new-instance v7, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/systemui/communal/widgets/WidgetConfigurator;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    const/4 p2, 0x3

    invoke-static {p0, p1, p1, v7, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deleteWidget(I)V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$deleteWidget$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$deleteWidget$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final restoreWidgets(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$restoreWidgets$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$restoreWidgets$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final updateWidgetOrder(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
