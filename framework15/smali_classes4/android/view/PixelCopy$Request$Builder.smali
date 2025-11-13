.class public final Landroid/view/PixelCopy$Request$Builder;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PixelCopy$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRequest:Landroid/view/PixelCopy$Request;


# direct methods
.method private constructor blacklist <init>(Landroid/view/PixelCopy$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    return-void
.end method

.method public static whitelist ofSurface(Landroid/view/Surface;)Landroid/view/PixelCopy$Request$Builder;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/PixelCopy$Request$Builder;

    new-instance v1, Landroid/view/PixelCopy$Request;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy$Request-IA;)V

    invoke-direct {v0, v1}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source must not be null & must be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist ofSurface(Landroid/view/SurfaceView;)Landroid/view/PixelCopy$Request$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Landroid/view/PixelCopy$Request$Builder;->ofSurface(Landroid/view/Surface;)Landroid/view/PixelCopy$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist ofWindow(Landroid/view/View;)Landroid/view/PixelCopy$Request$Builder;
    .locals 6

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/view/PixelCopy$Request$Builder;

    new-instance v4, Landroid/view/PixelCopy$Request;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy$Request-IA;)V

    invoke-direct {v3, v4}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Window doesn\'t have a backing surface!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View must not be null & must be attached to window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist ofWindow(Landroid/view/Window;)Landroid/view/PixelCopy$Request$Builder;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, Landroid/view/PixelCopy;->-$$Nest$smsourceForWindow(Landroid/view/Window;Landroid/graphics/Rect;)Landroid/view/Surface;

    move-result-object v1

    new-instance v2, Landroid/view/PixelCopy$Request$Builder;

    new-instance v3, Landroid/view/PixelCopy$Request;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy$Request-IA;)V

    invoke-direct {v2, v3}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v2
.end method

.method private blacklist requireNotBuilt()V
    .locals 2

    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() already called on this builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/PixelCopy$Request;
    .locals 2

    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    return-object v0
.end method

.method public whitelist setDestinationBitmap(Landroid/graphics/Bitmap;)Landroid/view/PixelCopy$Request$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/PixelCopy;->-$$Nest$smvalidateBitmapDest(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    invoke-static {v0, p1}, Landroid/view/PixelCopy$Request;->-$$Nest$fputmDest(Landroid/view/PixelCopy$Request;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public whitelist setSourceRect(Landroid/graphics/Rect;)Landroid/view/PixelCopy$Request$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    invoke-static {v0, p1}, Landroid/view/PixelCopy$Request;->-$$Nest$fputmSrcRect(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;)V

    return-object p0
.end method
