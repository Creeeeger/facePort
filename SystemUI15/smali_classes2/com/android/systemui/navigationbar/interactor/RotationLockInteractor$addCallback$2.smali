.class public final Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;->$callback:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationLockStateChanged(ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;->$callback:Ljava/util/function/Consumer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/RotationLockInteractor;->rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
