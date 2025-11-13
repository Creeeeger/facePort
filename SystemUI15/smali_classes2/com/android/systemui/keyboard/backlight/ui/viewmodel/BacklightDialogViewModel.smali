.class public final Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dialogContent:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;->backlight:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$special$$inlined$map$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0xbb8

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p2

    int-to-long v0, p2

    new-instance p2, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$$inlined$flatMapLatest$1;

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v1, v2}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;JLjava/lang/Object;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;->dialogContent:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
