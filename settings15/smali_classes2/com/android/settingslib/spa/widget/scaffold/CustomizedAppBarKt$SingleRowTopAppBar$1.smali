.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;
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

.field final synthetic $colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

.field final synthetic $navigationIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $title:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $titleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$title:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$actionsRow:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    sget v3, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->ContainerHeight:F

    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iget-wide v5, v2, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->navigationIconContentColor:J

    iget-object v11, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v12, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    iget-object v7, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v17, v7

    iget-object v0, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;->$actionsRow:Lkotlin/jvm/functions/Function2;

    move-object/from16 v18, v0

    const/16 v22, 0xd86

    const/16 v23, 0x0

    iget-wide v7, v2, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->titleContentColor:J

    iget-wide v9, v2, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->actionIconContentColor:J

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/high16 v21, 0x36c00000

    move-object/from16 v20, v1

    invoke-static/range {v3 .. v23}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->access$TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
