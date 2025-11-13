.class public Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;
.super Ljava/lang/Object;
.source "ImgpFilterAdapter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/Operator;


# instance fields
.field private final blacklist imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    return-void
.end method


# virtual methods
.method public blacklist getImgpFilter()Lcom/samsung/android/sume/core/filter/ImgpFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0
.end method
