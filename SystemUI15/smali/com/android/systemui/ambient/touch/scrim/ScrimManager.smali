.class public final Lcom/android/systemui/ambient/touch/scrim/ScrimManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBouncerScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

.field public final mBouncerlessScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

.field public final mCallbacks:Ljava/util/HashSet;

.field public mCurrentController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mKeyguardStateCallback:Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/ambient/touch/scrim/ScrimController;Lcom/android/systemui/ambient/touch/scrim/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;-><init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;)V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mBouncerlessScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mBouncerScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    iput-object p4, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->updateController()V

    return-void
.end method


# virtual methods
.method public final updateController()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCurrentController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mBouncerlessScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mBouncerScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCurrentController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCallbacks:Ljava/util/HashSet;

    new-instance v1, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
