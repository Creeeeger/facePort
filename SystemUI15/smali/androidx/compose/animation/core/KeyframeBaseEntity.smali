.class public abstract Landroidx/compose/animation/core/KeyframeBaseEntity;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public easing:Landroidx/compose/animation/core/Easing;

.field public final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroidx/compose/animation/core/Easing;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/KeyframeBaseEntity;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;)V

    return-void
.end method
