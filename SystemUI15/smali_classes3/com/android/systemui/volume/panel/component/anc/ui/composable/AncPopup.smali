.class public final Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final viewModel:Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;

.field public final volumePanelPopup:Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;->volumePanelPopup:Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;->viewModel:Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static final access$Content(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x69f347a5

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;->viewModel:Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;

    iget-object v1, v0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;->availabilityCriteria:Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;

    invoke-virtual {v1}, Lcom/android/systemui/volume/panel/component/anc/domain/AncAvailabilityCriteria;->isAvailable()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x38

    invoke-static {v1, v2, p2, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    const v2, 0x55e3d987

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$1;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-static {v0, p2}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$2;-><init>(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, v0, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;->popupSlice:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v1, p2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    const v3, 0x55e3da35

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/Slice;

    invoke-static {v3}, Lcom/android/systemui/volume/panel/component/anc/ui/viewmodel/AncViewModel;->isClickable(Landroidx/slice/Slice;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$3;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$3;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-static {v0, p2}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$4;-><init>(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/Slice;

    new-instance v3, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$5;

    invoke-direct {v3, v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$5;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/16 v5, 0x38

    const/16 v6, 0x8

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt;->SliceAndroidView(Landroidx/slice/Slice;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Content$6;-><init>(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    :goto_0
    return-void
.end method

.method public static final access$Title(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x754653a5

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v26, v2

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1}, Landroidx/compose/foundation/BasicMarqueeKt;->basicMarquee-1Mj1MLw$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    const v1, 0x7f13146a

    invoke-static {v1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v3

    iget-object v14, v3, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    sget-object v3, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/style/TextAlign;->Center:I

    invoke-static {v3}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v13

    const/16 v24, 0xc00

    const v25, 0xddfc

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v22, v14

    move-wide v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x30

    move-object/from16 v26, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v26

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    :goto_1
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Title$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$Title$1;-><init>(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;I)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method
