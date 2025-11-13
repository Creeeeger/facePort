.class public final Landroidx/compose/animation/core/ArcSpline$Arc$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/animation/core/ArcSpline$Arc$Companion;-><init>()V

    return-void
.end method

.method public static final access$getOurPercent(Landroidx/compose/animation/core/ArcSpline$Arc$Companion;)[F
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/animation/core/ArcSpline$Arc;->_ourPercent:[F

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x5b

    new-array p0, p0, [F

    sput-object p0, Landroidx/compose/animation/core/ArcSpline$Arc;->_ourPercent:[F

    :goto_0
    return-object p0
.end method
