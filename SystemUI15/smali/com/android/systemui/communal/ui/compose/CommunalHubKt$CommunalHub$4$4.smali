.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;
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
.field final synthetic $selectedKey:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;->$selectedKey:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4$1;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;->$selectedKey:Landroidx/compose/runtime/State;

    invoke-direct {p3, v0, v1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/State;)V

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4$2;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v0, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    const/16 p0, 0x8

    invoke-static {p1, p3, v0, p2, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$ButtonToEditWidgets(Landroidx/compose/animation/AnimatedVisibilityScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
