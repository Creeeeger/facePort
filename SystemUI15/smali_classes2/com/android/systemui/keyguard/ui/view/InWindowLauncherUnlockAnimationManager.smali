.class public final Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;
.super Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

.field public launcherAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

.field public lockscreenSmartspace:Landroid/view/View;

.field public manualUnlockAmount:Ljava/lang/Float;

.field public preparedForUnlock:Z

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->interactor:Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final onLauncherSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->interactor:Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;->launcherSmartspaceState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLauncherUnlockController(Ljava/lang/String;Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->interactor:Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/InWindowLauncherUnlockAnimationRepository;->launcherActivityClass:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->launcherAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder;->bind(Lcom/android/systemui/keyguard/ui/viewmodel/InWindowLauncherAnimationViewModel;Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method
