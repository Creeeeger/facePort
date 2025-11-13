.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $actionsRow:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $bottomTitleAlpha:F

.field final synthetic $colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

.field final synthetic $defaultMaxHeightPx:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $hideBottomRowSemantics:Z

.field final synthetic $hideTopRowSemantics:Z

.field final synthetic $maxHeightPx:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $navigationIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $pinnedHeightPx:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field final synthetic $smallTitle:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $smallTitleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $title:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $titleBottomPaddingPx:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $titleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $topTitleAlpha:F

.field final synthetic $windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/internal/Ref$IntRef;ZLandroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$pinnedHeightPx:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$smallTitle:Lkotlin/jvm/functions/Function2;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$smallTitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    move v1, p6

    iput v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$topTitleAlpha:F

    move v1, p7

    iput-boolean v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$hideTopRowSemantics:Z

    move-object v1, p8

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$actionsRow:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$maxHeightPx:Landroidx/compose/runtime/MutableFloatState;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    move v1, p13

    iput v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$bottomTitleAlpha:F

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$titleBottomPaddingPx:Lkotlin/jvm/internal/Ref$IntRef;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$hideBottomRowSemantics:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$density:Landroidx/compose/ui/unit/Density;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$defaultMaxHeightPx:Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$title:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v14, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v13, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$pinnedHeightPx:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v11, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iget-object v8, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$smallTitle:Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$smallTitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget v10, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$topTitleAlpha:F

    iget-boolean v2, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$hideTopRowSemantics:Z

    iget-object v3, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    iget-object v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$actionsRow:Lkotlin/jvm/functions/Function2;

    iget-object v12, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$maxHeightPx:Landroidx/compose/runtime/MutableFloatState;

    iget-object v6, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget-object v7, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget v4, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$bottomTitleAlpha:F

    iget-object v5, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$titleBottomPaddingPx:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v16, v12

    iget-boolean v12, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$hideBottomRowSemantics:Z

    move/from16 v17, v12

    iget-object v12, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$density:Landroidx/compose/ui/unit/Density;

    move-object/from16 v18, v12

    iget-object v12, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$defaultMaxHeightPx:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v0, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;->$title:Lkotlin/jvm/functions/Function2;

    move-object/from16 p0, v0

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 p1, v1

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    move/from16 p2, v2

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v15, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    invoke-static {v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v2

    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    move/from16 v22, v4

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    move-object/from16 v24, v6

    iget-object v6, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {v2, v3, v2, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_4
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget v1, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-wide v4, v11, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    sget-object v25, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    const/16 v19, 0x180

    const/16 v20, 0x2000

    move-object/from16 v26, v3

    iget-wide v2, v11, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    move-wide/from16 v27, v4

    move-object/from16 v6, v23

    move-wide v4, v2

    iget-wide v2, v11, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    move-object/from16 v29, v6

    move-object/from16 v23, v24

    move-object/from16 v24, v7

    move-wide v6, v2

    const/4 v2, 0x0

    move-object/from16 v32, v12

    move-object/from16 v30, v16

    move/from16 v31, v17

    move-object/from16 v3, v18

    move v12, v2

    const/16 v16, 0x0

    const/high16 v18, 0x36000000

    move-object/from16 v2, p0

    move-object/from16 v17, p1

    move-object/from16 v34, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v26

    move-object/from16 v26, v21

    move/from16 v21, p2

    move-wide/from16 v2, v27

    move-object/from16 v36, v11

    move-object/from16 v11, v25

    move-object/from16 v37, v13

    move/from16 v13, v21

    move-object/from16 v38, v14

    move-object/from16 v14, v26

    move-object/from16 p0, v15

    move-object/from16 v15, v17

    move-object/from16 v17, p0

    invoke-static/range {v0 .. v20}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->access$TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V

    new-instance v0, Landroidx/compose/foundation/layout/LimitInsets;

    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    move-object/from16 v2, v38

    invoke-direct {v0, v2, v1}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;I)V

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v12, v30

    check-cast v12, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v12}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    move-object/from16 v2, v37

    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v1, v2

    if-eqz v23, :cond_5

    move-object/from16 v6, v23

    check-cast v6, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    iget-object v2, v6, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    add-float/2addr v1, v2

    new-instance v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3$1$1;

    move-object/from16 v4, v32

    move-object/from16 v3, v33

    move-object/from16 v5, v34

    invoke-direct {v2, v3, v4, v12, v5}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3$1$1;-><init>(Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/MutableFloatState;Lkotlin/jvm/functions/Function2;)V

    const v3, -0x1f6b022f

    move-object/from16 v15, p0

    invoke-static {v3, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->Bottom:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    move-object/from16 v2, v29

    iget v12, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v14, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->lambda-5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sget-object v17, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->lambda-6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v19, 0x1b0

    const/16 v20, 0x2000

    move-object/from16 v6, v36

    iget-wide v2, v6, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    iget-wide v4, v6, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    iget-wide v6, v6, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    const/16 v16, 0x0

    const/high16 v18, 0x6030000

    move-object/from16 v9, v24

    move/from16 v10, v22

    move/from16 v13, v31

    move-object/from16 v21, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v21

    invoke-static/range {v0 .. v20}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->access$TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V

    const/4 v0, 0x1

    move-object/from16 v15, v35

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method
