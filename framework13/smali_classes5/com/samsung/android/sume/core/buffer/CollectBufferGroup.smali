.class public Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
.source "CollectBufferGroup.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "primaryId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryId",
            "buffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p2, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/List;)V

    .line 21
    iput p1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;-><init>(Landroid/os/Parcel;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    .line 27
    return-void
.end method

.method static synthetic blacklist lambda$convertTo$0(Ljava/lang/Class;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 37
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-super {p0, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 37
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(ILjava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->buffers:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->buffers:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlanes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->buffers:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getPlanes()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->buffers:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 68
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->buffers:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 57
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->buffers:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->contentToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 31
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget v0, p0, Lcom/samsung/android/sume/core/buffer/CollectBufferGroup;->primaryId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    return-void
.end method
