.class public final Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final screenshotId:Ljava/util/UUID;

.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotActionsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotActionsController;Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->this$0:Lcom/android/systemui/screenshot/ScreenshotActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->screenshotId:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final provideActionButton(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->screenshotId:Ljava/util/UUID;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->this$0:Lcom/android/systemui/screenshot/ScreenshotActionsController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotActionsController;->viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_actions:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->Companion:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel$Companion;->withNextId(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
