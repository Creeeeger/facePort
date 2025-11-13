.class public final Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconViewBinding;


# instance fields
.field public final synthetic $decorTint:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final synthetic $iconTint:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final synthetic $isCollecting:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $shouldBeVisible:Lkotlin/jvm/functions/Function0;

.field public final synthetic $visibilityState:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$decorTint:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$iconTint:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$shouldBeVisible:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$visibilityState:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$isCollecting:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShouldIconBeVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$shouldBeVisible:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isCollecting()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$isCollecting:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public final onDecorTintChanged(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$decorTint:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onIconTintChanged(II)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$iconTint:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onVisibilityStateChanged(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView$Companion$withDefaultBinding$2;->$visibilityState:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
