.class final Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$2;
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
.field final synthetic $dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$2;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$2;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    invoke-virtual {v0}, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->onDragInterrupted$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->onReorderWidgetEnd()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
