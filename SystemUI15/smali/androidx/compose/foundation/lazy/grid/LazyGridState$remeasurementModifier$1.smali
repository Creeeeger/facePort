.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/RemeasurementModifier;


# instance fields
.field public final synthetic this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemeasurementAvailable(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-void
.end method
