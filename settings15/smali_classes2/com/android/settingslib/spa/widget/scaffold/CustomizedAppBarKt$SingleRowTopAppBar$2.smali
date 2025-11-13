.class final Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;
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
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $actions:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
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
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$title:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$actions:Lkotlin/jvm/functions/Function3;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p6, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iput p7, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$actions:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v5, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$colors:Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    iget p0, p0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->SingleRowTopAppBar(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
