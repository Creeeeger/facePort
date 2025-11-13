.class public Lcom/samsung/android/sume/core/controller/ImgpFilterAdapter;
.super Ljava/lang/Object;
.source "ImgpFilterAdapter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ImgProcessor;


# instance fields
.field private final blacklist imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V
    .locals 0
    .param p1, "imgpFilter"    # Lcom/samsung/android/sume/core/filter/ImgpFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgpFilter"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    .line 14
    return-void
.end method


# virtual methods
.method public blacklist getImgpFilter()Lcom/samsung/android/sume/core/filter/ImgpFilter;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    return-object v0
.end method

.method public blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-static {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method
