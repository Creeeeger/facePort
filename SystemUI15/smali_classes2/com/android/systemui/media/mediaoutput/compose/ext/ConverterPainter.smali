.class public abstract Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final intrinsicSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->Unspecified:J

    iput-wide v0, p0, Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;->intrinsicSize:J

    return-void
.end method


# virtual methods
.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;->intrinsicSize:J

    return-wide v0
.end method

.method public final onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 0

    return-void
.end method
