.class public final Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/user/data/repository/UserSwitcherRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final bgHandler:Landroid/os/Handler;

.field public final currentUserInfo:Lkotlinx/coroutines/flow/Flow;

.field public final currentUserName:Lkotlinx/coroutines/flow/Flow;

.field public final globalSetting:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final isEnabled:Lkotlinx/coroutines/flow/Flow;

.field public final showUserSwitcherForSingleUser:Z

.field public final userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field public final userManager:Landroid/os/UserManager;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final userSwitcherStatus:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/user/data/repository/UserRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->bgHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userManager:Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p6, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p7, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->globalSetting:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p8, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f05007a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->showUserSwitcherForSingleUser:Z

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;-><init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->isEnabled:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;-><init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->currentUserName:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1;-><init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->currentUserInfo:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->userSwitcherStatus:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
