.class public final Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.source "MutableMediaBuffer.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/buffer/MediaBufferBase;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method public static synthetic blacklist $r8$lambda$GgT2YSDUYflbvIIrBinkUxgmMn4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->NONE:Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->of(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    return-void
.end method

.method static synthetic blacklist lambda$convertTo$1(Ljava/lang/Class;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getData$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getExifBuffer$5(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getIccBuffer$6(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getMetaDataBuffers$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getTypedData$3(Ljava/lang/Class;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setExifBuffer$7(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$setIccBuffer$8(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist addExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->addExtra(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic blacklist containFlags([I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containFlags([I)Z

    move-result p1

    return p1
.end method

.method public varargs blacklist containsAllExtra([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsAllExtra([Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAllExtra([Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public varargs blacklist containsAnyExtra([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsAnyExtra([Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAnyExtra([Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist containsExtra(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->contentToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "n/a"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "    "

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->contentToStringln(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public bridge synthetic blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public bridge synthetic blacklist getAlign()Lcom/samsung/android/sume/core/buffer/Align;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getAlign()Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getChannels()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getChannels()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getCols()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getExifBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MediaFormat;

    return-object v0
.end method

.method public blacklist getIccBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public blacklist getMetaDataBuffers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic blacklist getRows()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getRows()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getScanline()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getScanline()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getStride()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getStride()I

    move-result v0

    return v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNotEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$stream$0$com-samsung-android-sume-core-buffer-MutableMediaBuffer()Ljava/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist moveTo(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->reset()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object v0
.end method

.method public blacklist put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setExtra(Ljava/util/Map;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->reset()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->extra:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->extra:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    :cond_4
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-void
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method

.method public bridge synthetic blacklist release()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->release()V

    return-void
.end method

.method public bridge synthetic blacklist removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist reset()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->addExtra(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic blacklist reset()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->reset()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setAlign(Lcom/samsung/android/sume/core/buffer/Align;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getStride()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->align:Lcom/samsung/android/sume/core/buffer/Align;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->align:Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getAlignOfHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/Align;->set(II)Lcom/samsung/android/sume/core/buffer/Align;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist setExifBuffer(Lcom/samsung/android/sume/core/UniExifInterface;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/UniExifInterface;->toExifByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setExifBuffer(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setExifBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setMetaDataBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setExifBuffer(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableMetaOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    const-string v2, "exif"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setExifBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist setExtra(Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic blacklist setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    return-void
.end method

.method public blacklist setIccBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setMetaDataBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setIccBuffer(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableMetaOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    const-string v2, "icc"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setIccBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setMetaDataBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v1
.end method

.method public bridge synthetic blacklist setScanline(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setScanline(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setStride(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setStride(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist size()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->size()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->buffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
