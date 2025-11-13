.class public final Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic $viewModel:Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$1;->$viewModel:Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$1;->$viewModel:Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;->udfpsOverlayParams:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;->udfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2, v5, v0}, Lcom/android/systemui/biometrics/UdfpsUtils;->getTouchInNativeCoordinates(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v2, p2, v5, v0}, Lcom/android/systemui/biometrics/UdfpsUtils;->isWithinSensorArea(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/biometrics/UdfpsUtils;->onTouchOutsideOfSensorArea(ZLandroid/content/Context;IILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return v0
.end method
