.class final Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$2$1;
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
.field final synthetic this$0:Lcom/android/systemui/shade/GlanceableHubContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/GlanceableHubContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$2$1;->this$0:Lcom/android/systemui/shade/GlanceableHubContainerController;

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

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v5

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$1$1$1$1$2$1;->this$0:Lcom/android/systemui/shade/GlanceableHubContainerController;

    iget-object v1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    iget-object v3, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalColors:Lcom/android/systemui/communal/util/CommunalColors;

    iget-object v4, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalContent:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    const v6, 0x8240

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt;->CommunalContainer(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/communal/ui/compose/CommunalContent;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
