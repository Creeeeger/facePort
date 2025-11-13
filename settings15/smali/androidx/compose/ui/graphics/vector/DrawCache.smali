.class public final Landroidx/compose/ui/graphics/vector/DrawCache;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public cachedCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

.field public config:I

.field public mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    return-void
.end method
