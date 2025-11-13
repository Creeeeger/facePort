.class public final Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/data/repository/CommunalPrefsRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final isCtaDismissed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p4, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    new-instance p2, Lcom/android/systemui/log/core/Logger;

    const-string p4, "CommunalPrefsRepositoryImpl"

    invoke-direct {p2, p6, p4}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    new-instance v1, Landroid/content/IntentFilter;

    const-string p2, "com.android.systemui.backup.RESTORE_FINISHED"

    invoke-direct {v1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    const-string v4, "com.android.systemui.permission.SELF"

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p5

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    check-cast p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance p4, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p6, p4, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$isCtaDismissed$1;

    invoke-direct {p2, p0, p5}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$isCtaDismissed$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p4, p6, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p2, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$isCtaDismissed$2;

    invoke-direct {p2, p5}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$isCtaDismissed$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p3, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p6, p3, p4, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p2, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {p2, p5, p0}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;)V

    invoke-static {p6, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    const/4 p3, 0x0

    const-string p4, ""

    const-string p5, "isCtaDismissed"

    invoke-static {p2, p7, p4, p5, p3}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->isCtaDismissed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getSharedPrefsForUser(Landroid/content/pm/UserInfo;)Landroid/content/SharedPreferences;
    .locals 1

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v0, "communal_hub_prefs"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final setCtaDismissedForCurrentUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;-><init>(Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
