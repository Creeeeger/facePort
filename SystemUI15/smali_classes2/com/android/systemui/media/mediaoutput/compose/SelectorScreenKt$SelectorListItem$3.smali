.class final Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;
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

.field final synthetic $actionPair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/android/systemui/media/mediaoutput/entity/MediaAction;",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $icon:Landroidx/compose/ui/graphics/painter/Painter;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $subTitle:Ljava/lang/CharSequence;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/CharSequence;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/Pair<",
            "Lcom/android/systemui/media/mediaoutput/entity/MediaAction;",
            "+",
            "Lkotlin/jvm/functions/Function0;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$icon:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$subTitle:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$actionPair:Lkotlin/Pair;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$$changed:I

    iput p8, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$icon:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$subTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$actionPair:Lkotlin/Pair;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;->$$default:I

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt;->SelectorListItem(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/CharSequence;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
