.class public final Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $view:Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$2$1$1;->$view:Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/deviceentry/ui/binder/UdfpsAccessibilityOverlayBinder$bind$2$1$1;->$view:Lcom/android/systemui/deviceentry/ui/view/UdfpsAccessibilityOverlay;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
