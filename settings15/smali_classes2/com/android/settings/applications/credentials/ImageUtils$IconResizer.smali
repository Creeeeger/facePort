.class public final Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCanvas:Landroid/graphics/Canvas;

.field public final mIconHeight:I

.field public final mIconWidth:I

.field public final mMetrics:Landroid/util/DisplayMetrics;

.field public final mOldBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/util/DisplayMetrics;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iput-object p3, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    iput p1, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mIconWidth:I

    iput p2, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mIconHeight:I

    return-void
.end method
