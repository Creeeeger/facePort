.class public final Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/policy/UserSwitcherController$Companion;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationContext:Landroid/content/Context;

.field public final callbackCompatMap:Ljava/util/Map;

.field public final guestUserInteractor$delegate:Lkotlin/Lazy;

.field public final guestUserInteractorLazy:Ldagger/Lazy;

.field public final keyguardInteractor$delegate:Lkotlin/Lazy;

.field public final keyguardInteractorLazy:Ldagger/Lazy;

.field public final mUserSwitcherInteractor$delegate:Lkotlin/Lazy;

.field public final userSwitcherInteractorLazy:Ldagger/Lazy;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->Companion:Lcom/android/systemui/statusbar/policy/UserSwitcherController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userSwitcherInteractorLazy:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->guestUserInteractorLazy:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->keyguardInteractorLazy:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$mUserSwitcherInteractor$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$mUserSwitcherInteractor$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserSwitcherInteractor$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$guestUserInteractor$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$guestUserInteractor$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->guestUserInteractor$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$keyguardInteractor$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$keyguardInteractor$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->keyguardInteractor$delegate:Lkotlin/Lazy;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    return-void
.end method

.method public static final setSelectableAlpha(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->Companion:Lcom/android/systemui/statusbar/policy/UserSwitcherController$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ec28f5c    # 0.38f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public final addUserSwitchCallback(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addUserSwitchCallback$interactorCallback$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addUserSwitchCallback$interactorCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->addCallback(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;)V

    return-void
.end method

.method public final getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserSwitcherInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    return-object p0
.end method

.method public final isUserSwitcherEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    iget-boolean p0, p0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    return p0
.end method
