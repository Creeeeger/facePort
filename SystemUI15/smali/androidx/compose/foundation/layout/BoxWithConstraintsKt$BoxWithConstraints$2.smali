.class final Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;
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

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $contentAlignment:Landroidx/compose/ui/Alignment;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $propagateMinConstraints:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Z",
            "Lkotlin/jvm/functions/Function3;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$contentAlignment:Landroidx/compose/ui/Alignment;

    iput-boolean p3, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$propagateMinConstraints:Z

    iput-object p4, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$content:Lkotlin/jvm/functions/Function3;

    iput p5, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$$changed:I

    iput p6, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$contentAlignment:Landroidx/compose/ui/Alignment;

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$propagateMinConstraints:Z

    iget-object v3, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$content:Lkotlin/jvm/functions/Function3;

    iget p1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    iget v6, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;->$$default:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
