.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $colors:Lcom/android/systemui/communal/util/CommunalColors;

.field final synthetic $content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

.field final synthetic $dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$colors:Lcom/android/systemui/communal/util/CommunalColors;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    iput p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$$changed:I

    iput p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$colors:Lcom/android/systemui/communal/util/CommunalColors;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$content:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    iget p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$4;->$$default:I

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->CommunalContainer(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
