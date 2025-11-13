.class final Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$3;
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
.field final synthetic $checkboxSelected:Landroidx/compose/ui/graphics/painter/Painter;

.field final synthetic $checkboxUnselected:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$3;->$checkboxSelected:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$3;->$checkboxUnselected:Landroidx/compose/ui/graphics/painter/Painter;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0xe

    if-nez v4, :cond_1

    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v3, v3, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x2f233b40

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget-object v4, v0, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$3;->$checkboxSelected:Landroidx/compose/ui/graphics/painter/Painter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "checked"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v12, 0x38

    const/16 v13, 0x7c

    move-object v11, v2

    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_4
    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x2f20cae4

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget-object v14, v0, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$3;->$checkboxUnselected:Landroidx/compose/ui/graphics/painter/Painter;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v15, "unchecked"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x38

    const/16 v23, 0x7c

    move-object/from16 v21, v2

    invoke-static/range {v14 .. v23}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
