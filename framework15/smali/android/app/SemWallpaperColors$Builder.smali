.class public Landroid/app/SemWallpaperColors$Builder;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mColorType:I

.field private blacklist mShadowOpacity:F

.field private blacklist mShadowSize:F

.field private blacklist mWhich:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowSize:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowOpacity:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/SemWallpaperColors;
    .locals 5

    new-instance v0, Landroid/app/SemWallpaperColors$Item;

    iget v1, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowSize:F

    iget v3, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowOpacity:F

    invoke-direct {v0, v1, v2, v3}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build() mColorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWhich: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperColors"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/SemWallpaperColors;

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    iget-object v3, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/SemWallpaperColors;-><init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors-IA;)V

    return-object v1
.end method

.method public blacklist setColorType(I)Landroid/app/SemWallpaperColors$Builder;
    .locals 0

    iput p1, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    return-object p0
.end method

.method public blacklist setThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/app/SemWallpaperColors$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blacklist setWhich(I)Landroid/app/SemWallpaperColors$Builder;
    .locals 0

    iput p1, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    return-object p0
.end method
