.class public abstract Landroidx/compose/foundation/layout/FlowLayoutOverflow;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final collapseGetter:Lkotlin/jvm/functions/Function1;

.field public final minCrossAxisSizeToShowCollapse:I

.field public final minLinesToShowCollapse:I

.field public final seeMoreGetter:Lkotlin/jvm/functions/Function1;

.field public final type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->Clip:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->minLinesToShowCollapse:I

    iput p2, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->minCrossAxisSizeToShowCollapse:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->seeMoreGetter:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->collapseGetter:Lkotlin/jvm/functions/Function1;

    return-void
.end method
