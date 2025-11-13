.class public final Landroid/view/PixelCopy$Request;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PixelCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PixelCopy$Request$Builder;
    }
.end annotation


# instance fields
.field private blacklist mDest:Landroid/graphics/Bitmap;

.field private final blacklist mSource:Landroid/view/Surface;

.field private final blacklist mSourceInsets:Landroid/graphics/Rect;

.field private blacklist mSrcRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDest(Landroid/view/PixelCopy$Request;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/view/PixelCopy$Request;->mDest:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSrcRect(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/view/PixelCopy$Request;->mSrcRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/PixelCopy$Request;->mSource:Landroid/view/Surface;

    iput-object p2, p0, Landroid/view/PixelCopy$Request;->mSourceInsets:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy$Request-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic blacklist lambda$request$0(Ljava/util/function/Consumer;)V
    .locals 3

    new-instance v0, Landroid/view/PixelCopy$Result;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/view/PixelCopy$Result;-><init>(ILandroid/graphics/Bitmap;Landroid/view/PixelCopy$Result-IA;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist getDestinationBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mDest:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getSourceRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mSrcRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist request(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/PixelCopy$Result;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mSource:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/PixelCopy$Request$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroid/view/PixelCopy$Request$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mSource:Landroid/view/Surface;

    new-instance v7, Landroid/view/PixelCopy$Request$1;

    iget-object v1, p0, Landroid/view/PixelCopy$Request;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/PixelCopy$Request;->mSrcRect:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Landroid/view/PixelCopy;->-$$Nest$smadjustSourceRectForInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/view/PixelCopy$Request;->mDest:Landroid/graphics/Bitmap;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/PixelCopy$Request$1;-><init>(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0, v7}, Landroid/graphics/HardwareRenderer;->copySurfaceInto(Landroid/view/Surface;Landroid/graphics/HardwareRenderer$CopyRequest;)V

    return-void
.end method
