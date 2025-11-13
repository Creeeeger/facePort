.class public final Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

.field public final synthetic $view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$1$1;->$udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]: update shouldHandleTouches="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UdfpsTouchOverlayBinder"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$1$1;->$udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->setHandleTouches(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
