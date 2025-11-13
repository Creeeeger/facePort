.class public final Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final knoxStatusBarCustomText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public setHidden:Lkotlin/jvm/functions/Function1;

.field public final statusBarHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarIconsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/DarkIconDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;->statusBarHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->statusBarHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;->statusBarIconsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->statusBarIconsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;->knoxStatusBarCustomText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->knoxStatusBarCustomText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
