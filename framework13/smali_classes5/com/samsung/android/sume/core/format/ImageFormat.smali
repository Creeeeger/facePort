.class public Lcom/samsung/android/sume/core/format/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected final blacklist impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/format/ImageFormat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 0
    .param p1, "impl"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 23
    return-void
.end method

.method static synthetic blacklist lambda$getPlanes$0(Lcom/samsung/android/sume/core/format/MutableImageFormat;)Lcom/samsung/android/sume/core/format/ImageFormat;
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/ImageFormat;

    return-object v0
.end method

.method static synthetic blacklist lambda$getPlanes$1(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "e"    # Ljava/util/List;

    .line 74
    nop

    .line 72
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/ImageFormat$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/ImageFormat$$ExternalSyntheticLambda2;-><init>()V

    .line 73
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 74
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public blacklist bytePerSample()F
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->bytePerSample()F

    move-result v0

    return v0
.end method

.method public blacklist checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 111
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public blacklist contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAllOf([Ljava/lang/String;)Z
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->containsAllOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAnyOf([Ljava/lang/String;)Z
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 137
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 91
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatch()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getBatch()I

    move-result v0

    return v0
.end method

.method public blacklist getChannels()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public blacklist getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCols()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlanes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/ImageFormat;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getPlanes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/ImageFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/format/ImageFormat$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    return-object v0
.end method

.method public blacklist getRows()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStride()I
    .locals 2

    .line 79
    const-string/jumbo v0, "stride"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/format/ImageFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/format/ImageFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/format/ImageFormat$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/format/ImageFormat;)V

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    return v0
.end method

.method synthetic blacklist lambda$getStride$2$com-samsung-android-sume-core-format-ImageFormat()Ljava/lang/Integer;
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getCols()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->getChannels()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">()TV;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;->impl:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 132
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/ImageFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
