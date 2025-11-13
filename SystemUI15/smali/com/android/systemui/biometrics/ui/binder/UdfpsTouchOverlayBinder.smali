.class public final Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
