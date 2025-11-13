.class public abstract Landroid/graphics/HardwareRenderer$CopyRequest;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CopyRequest"
.end annotation


# instance fields
.field protected blacklist mDestinationBitmap:Landroid/graphics/Bitmap;

.field final blacklist mSrcRect:Landroid/graphics/Rect;


# direct methods
.method protected constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getDestinationBitmap(II)J
    .locals 2

    iget-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract blacklist onCopyFinished(I)V
.end method
