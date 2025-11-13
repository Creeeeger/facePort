.class public final Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$1$1;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$1$1;->$viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$1$1;->$knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$1$1;->$viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->setHidden:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$1$1;->$knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;->setHiddenByKnox(Z)V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    if-nez p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
