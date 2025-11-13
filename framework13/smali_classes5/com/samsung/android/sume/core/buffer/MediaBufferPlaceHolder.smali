.class public final Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.source "MediaBufferPlaceHolder.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sume/core/buffer/MediaBufferBase;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 67
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Landroid/os/Parcel;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->dataClass:Ljava/lang/Class;

    .line 77
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->dataClass:Ljava/lang/Class;

    .line 73
    nop

    .line 82
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->dataClass:Ljava/lang/Class;

    .line 31
    :cond_0
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "file-descriptor"

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    .line 36
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$getDataClass$0(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p0, "it"    # Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist containFlags([I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "flagsToCheck"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containFlags([I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsAllExtra([Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "keys"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAllExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsAnyExtra([Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "keys"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAnyExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsExtra(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsExtra(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 147
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 140
    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->contentToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 139
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
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V

    .line 97
    .local v0, "newBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->release()V

    .line 98
    return-object v0
.end method

.method public bridge synthetic blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 169
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic blacklist getChannels()I
    .locals 1

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getChannels()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getCols()I
    .locals 1

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

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

    .line 115
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getExtra()Ljava/util/Map;
    .locals 1

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlanes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist getRows()I
    .locals 1

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->dataClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    return-object v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->transformDataTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "clazz",
            "defaultValue"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public bridge synthetic blacklist release()V
    .locals 0

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->release()V

    return-void
.end method

.method public bridge synthetic blacklist removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist replace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    .line 47
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    .line 48
    return-object v0
.end method

.method public blacklist setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0
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
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    .line 110
    return-object p0
.end method

.method public bridge synthetic blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "obj"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist setExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic blacklist setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "flags"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist size()J
    .locals 1

    .line 152
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 134
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 53
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;, "Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferPlaceHolder;->data:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    :goto_0
    return-void
.end method
