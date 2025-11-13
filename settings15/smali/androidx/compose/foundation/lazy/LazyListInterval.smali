.class public final Landroidx/compose/foundation/lazy/LazyListInterval;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;


# instance fields
.field public final item:Lkotlin/jvm/functions/Function4;

.field public final key:Lkotlin/jvm/functions/Function1;

.field public final type:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->key:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->type:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->item:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final getKey()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->key:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getType()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->type:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
