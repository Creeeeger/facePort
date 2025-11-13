.class final Lcom/android/systemui/volume/panel/ui/composable/HorizontalVolumePanelContentKt$HorizontalVolumePanelContent$1$2$1;
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
.field final synthetic $component:Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

.field final synthetic $this_HorizontalVolumePanelContent:Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/ui/composable/HorizontalVolumePanelContentKt$HorizontalVolumePanelContent$1$2$1;->$component:Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/ui/composable/HorizontalVolumePanelContentKt$HorizontalVolumePanelContent$1$2$1;->$this_HorizontalVolumePanelContent:Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/ui/composable/HorizontalVolumePanelContentKt$HorizontalVolumePanelContent$1$2$1;->$component:Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;

    iget-object p1, p1, Lcom/android/systemui/volume/panel/ui/viewmodel/ComponentState;->component:Lcom/android/systemui/volume/panel/shared/model/VolumePanelUiComponent;

    check-cast p1, Lcom/android/systemui/volume/panel/ui/composable/ComposeVolumePanelUiComponent;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/composable/HorizontalVolumePanelContentKt$HorizontalVolumePanelContent$1$2$1;->$this_HorizontalVolumePanelContent:Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;

    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v0, 0x30

    invoke-interface {p1, p0, p3, p2, v0}, Lcom/android/systemui/volume/panel/ui/composable/ComposeVolumePanelUiComponent;->Content(Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
