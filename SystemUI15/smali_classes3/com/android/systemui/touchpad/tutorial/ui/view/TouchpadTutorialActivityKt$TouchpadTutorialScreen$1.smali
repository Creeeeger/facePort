.class final Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $vm:Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$1;->$vm:Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$1;->$vm:Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;

    sget-object v0, Lcom/android/systemui/touchpad/tutorial/ui/Screen;->BACK_GESTURE:Lcom/android/systemui/touchpad/tutorial/ui/Screen;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;->_screen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
