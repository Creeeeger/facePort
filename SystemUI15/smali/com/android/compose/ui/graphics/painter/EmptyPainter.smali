.class public final Lcom/android/compose/ui/graphics/painter/EmptyPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/compose/ui/graphics/painter/EmptyPainter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/compose/ui/graphics/painter/EmptyPainter;

    invoke-direct {v0}, Lcom/android/compose/ui/graphics/painter/EmptyPainter;-><init>()V

    sput-object v0, Lcom/android/compose/ui/graphics/painter/EmptyPainter;->INSTANCE:Lcom/android/compose/ui/graphics/painter/EmptyPainter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    sget-object p0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->Unspecified:J

    return-wide v0
.end method

.method public final onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 0

    return-void
.end method
