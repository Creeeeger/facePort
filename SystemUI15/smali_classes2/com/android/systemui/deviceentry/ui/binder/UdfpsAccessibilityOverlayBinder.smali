.class public final Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder;

    invoke-direct {v0}, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$1;-><init>(Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$2;-><init>(Lcom/android/systemui/deviceentry/ui/viewmodel/UdfpsAccessibilityOverlayViewModel;Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
