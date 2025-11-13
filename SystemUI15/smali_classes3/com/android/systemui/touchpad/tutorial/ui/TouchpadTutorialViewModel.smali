.class public final Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _screen:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final screen:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    sget-object v0, Lcom/android/systemui/touchpad/tutorial/ui/Screen;->TUTORIAL_SELECTION:Lcom/android/systemui/touchpad/tutorial/ui/Screen;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;->_screen:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;->screen:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
