.class public final Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public final shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/shade/ShadeLogger;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p3, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iput-object p5, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iput-object p6, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    const-class p1, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->primaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onSingleTapUp tap handled, requesting wakeUpIfDreaming"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object p1, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDreaming()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    check-cast p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    const-string p1, "DREAMING_SINGLE_TAP"

    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakeUp(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    iget-object p0, p0, Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#onSingleTapUp false tap ignored"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
