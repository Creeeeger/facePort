.class public final Lcom/android/systemui/screenshot/scroll/ImageTileSet;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContentListeners:Lcom/android/internal/util/CallbackRegistry;

.field public final mRegion:Landroid/graphics/Region;

.field public final mTiles:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mTiles:Ljava/util/List;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/ImageTileSet;->mRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method
