.class public Landroid/graphics/ImageDecoder$ImageInfo;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mIsAnimated:Z

.field private final blacklist mMimeType:Ljava/lang/String;

.field private final greylist-max-o mSize:Landroid/util/Size;


# direct methods
.method private constructor blacklist <init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    iput-boolean p2, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mIsAnimated:Z

    iput-object p3, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mMimeType:Ljava/lang/String;

    iput-object p4, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder$ImageInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;)V

    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist isAnimated()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mIsAnimated:Z

    return v0
.end method
