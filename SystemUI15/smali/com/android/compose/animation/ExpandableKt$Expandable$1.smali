.class final Lcom/android/compose/animation/ExpandableKt$Expandable$1;
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

.field final synthetic $borderStroke:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $color:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Landroidx/compose/foundation/BorderStroke;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3;",
            "II)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$color:J

    iput-object p3, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p4, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p5, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$contentColor:J

    iput-object p7, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$borderStroke:Landroidx/compose/foundation/BorderStroke;

    iput-object p8, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$onClick:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p10, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$content:Lkotlin/jvm/functions/Function3;

    iput p11, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$$changed:I

    iput p12, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-wide v0, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$color:J

    iget-object v2, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v4, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$contentColor:J

    iget-object v6, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$borderStroke:Landroidx/compose/foundation/BorderStroke;

    iget-object v7, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$onClick:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v9, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$content:Lkotlin/jvm/functions/Function3;

    iget p1, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    iget v12, p0, Lcom/android/compose/animation/ExpandableKt$Expandable$1;->$$default:I

    invoke-static/range {v0 .. v12}, Lcom/android/compose/animation/ExpandableKt;->Expandable-QIcBpto(JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
