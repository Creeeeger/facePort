.class public final Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/platform/ViewConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDoubleTapTimeoutMillis()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public final getLongPressTimeoutMillis()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public final getMinimumTouchTargetSize-MYxV2XQ()J
    .locals 2

    sget-object p0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getTouchSlop()F
    .locals 0

    const/high16 p0, 0x41800000    # 16.0f

    return p0
.end method
