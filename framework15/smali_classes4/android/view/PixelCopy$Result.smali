.class public final Landroid/view/PixelCopy$Result;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PixelCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mStatus:I


# direct methods
.method private constructor blacklist <init>(ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    iput-object p2, p0, Landroid/view/PixelCopy$Result;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/graphics/Bitmap;Landroid/view/PixelCopy$Result-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/PixelCopy$Result;-><init>(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private blacklist validateStatus()V
    .locals 3

    iget v0, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copy request didn\'t succeed, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Landroid/view/PixelCopy$Result;->validateStatus()V

    iget-object v0, p0, Landroid/view/PixelCopy$Result;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 1

    iget v0, p0, Landroid/view/PixelCopy$Result;->mStatus:I

    return v0
.end method
