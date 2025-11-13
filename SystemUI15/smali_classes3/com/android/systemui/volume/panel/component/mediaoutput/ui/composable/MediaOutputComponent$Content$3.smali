.class final Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$Content$3;
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
.field final synthetic $connectedDeviceViewModel$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $deviceIconViewModel$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$Content$3;->$connectedDeviceViewModel$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$Content$3;->this$0:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$Content$3;->$deviceIconViewModel$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/android/systemui/animation/Expandable;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object p3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$Content$3;->$connectedDeviceViewModel$delegate:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$Content$3;->this$0:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$Content$3;->$deviceIconViewModel$delegate:Landroidx/compose/runtime/State;

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v3, 0x30

    invoke-static {v2, p3, p2, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object p3

    invoke-static {p2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v2

    move-object v3, p2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p2, p1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v6, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v4, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-static {v2, v3, v2, p3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2
    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p1, p3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/ConnectedDeviceViewModel;

    const v0, 0x20a3634b

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x246

    invoke-static {v1, p1, p3, p2, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;->access$ConnectedDeviceText(Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;Landroidx/compose/foundation/layout/RowScope;Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/ConnectedDeviceViewModel;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel;

    const p3, -0x6a592190

    invoke-virtual {v3, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 p3, 0x40

    invoke-static {v1, p0, p2, p3}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;->access$ConnectedDeviceIcon(Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent;Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel;Landroidx/compose/runtime/Composer;I)V

    :goto_2
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method
