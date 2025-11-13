.class final Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x51

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-object v0, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isQuickboardInstalled:Lkotlinx/coroutines/flow/SafeFlow;

    const/16 v4, 0x38

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1$1;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-direct {v0, p3}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const/16 v4, 0x30

    const/4 v5, 0x4

    const-string v1, "Open Dex UX"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecListItem(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1$2;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-direct {v0, p3}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const-string v1, "Open Cover UX"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecListItem(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1$3;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1$3;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const/16 v4, 0x30

    const/4 v5, 0x4

    const-string v1, "Open Quickboard"

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecListItem(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
