.class public Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.source "GenericMediaBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sume/core/buffer/MediaBufferBase;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    const-class v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 52
    goto :goto_0

    .line 46
    :pswitch_1
    const-class v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 42
    :pswitch_2
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc$Nothing;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 43
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc$Nothing;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc$Nothing;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 44
    nop

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    .line 57
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V
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

    .line 31
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 32
    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 34
    return-void
.end method

.method private blacklist dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 159
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda2;-><init>()V

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 171
    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    return-object v0
.end method

.method static synthetic blacklist lambda$dataToString$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "it"    # Ljava/lang/Object;

    .line 162
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getLog(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    instance-of v1, p0, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->getInstance()Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    .line 166
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getLog(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getPlanes$0(Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/List;
    .locals 1
    .param p0, "it"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 143
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getPlanes()Ljava/util/List;

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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsExtra(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 185
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 177
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string v4, "n/a"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->extra:Ljava/util/HashMap;

    .line 178
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 179
    invoke-direct {p0, v3}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 176
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

    .line 97
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 98
    .local v0, "newBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->release()V

    .line 99
    return-object v0
.end method

.method public bridge synthetic blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist describeContents()I
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getChannels()I
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getChannels()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getCols()I
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .line 109
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getExtra()Ljava/util/Map;
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

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

    .line 142
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic blacklist getRows()I
    .locals 1

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->transformDataTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist release()V
    .locals 2

    .line 84
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->release()V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->release(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 92
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 93
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
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

    .line 114
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 119
    :goto_0
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
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

    .line 23
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist size()J
    .locals 2

    .line 149
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->bytePerSample()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->getDimension()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
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

    .line 137
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 155
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
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

    .line 61
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    instance-of v1, v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAlloc$Nothing;

    if-eqz v1, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 64
    :cond_0
    instance-of v0, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 70
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    const-class v3, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    goto :goto_0

    .line 71
    .end local v0    # "hwBuffer":Landroid/hardware/HardwareBuffer;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->getInstance()Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    .line 74
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    const-class v4, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    move-object v0, v1

    .line 76
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    .end local v0    # "hwBuffer":Landroid/hardware/HardwareBuffer;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    return-void
.end method
