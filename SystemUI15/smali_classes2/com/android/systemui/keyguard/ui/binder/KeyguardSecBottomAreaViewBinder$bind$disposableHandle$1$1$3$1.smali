.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $ambientIndicationArea:Landroid/view/View;

.field public final synthetic $indicationArea:Landroid/view/View;

.field public final synthetic $view:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$3$1;->$view:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$3$1;->$ambientIndicationArea:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$3$1;->$indicationArea:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-nez p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$3$1;->$view:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$3$1;->$ambientIndicationArea:Landroid/view/View;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$3$1;->$indicationArea:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
