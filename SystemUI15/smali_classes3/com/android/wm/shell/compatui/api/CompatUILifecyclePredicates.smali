.class public final Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final creationPredicate:Lkotlin/jvm/functions/Function2;

.field public final removalPredicate:Lkotlin/jvm/functions/Function3;

.field public final stateBuilder:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates$1;->INSTANCE:Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates$1;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/api/CompatUILifecyclePredicates;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
