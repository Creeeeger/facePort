.class public final Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/layout/RemeasurementModifier;


# instance fields
.field public final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    return-void
.end method


# virtual methods
.method public final onRemeasurementAvailable(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-void
.end method
