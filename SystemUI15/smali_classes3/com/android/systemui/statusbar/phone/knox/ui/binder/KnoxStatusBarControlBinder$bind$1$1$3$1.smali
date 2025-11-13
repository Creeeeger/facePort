.class public final Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

.field public final synthetic $viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$3$1;->$viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$3$1;->$knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$3$1;->$viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$3$1;->$knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    const p2, 0x7f0a0ce7

    invoke-virtual {p0, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
