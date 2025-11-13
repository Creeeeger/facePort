.class public Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
.source "DeriveBufferGroup.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;-><init>(Landroid/os/Parcel;)V

    .line 33
    const-class v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/List;)V
    .locals 1
    .param p1, "primaryBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryBuffer",
            "buffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p2, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/List;)V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 96
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

    const-string/jumbo v3, "primary-buffer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 97
    invoke-interface {v3, v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "derivative-buffers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    .line 98
    invoke-super {p0, v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 96
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;

    .line 84
    .local v0, "copied":Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iput-object v1, v0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 85
    return-object v0
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getData()Ljava/lang/Object;

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

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getDataClass()Ljava/lang/Class;

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

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getPlanes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 67
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist release()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->release()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 79
    return-void
.end method

.method public blacklist setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
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

    .line 59
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 61
    :cond_0
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->contentToString()Ljava/lang/String;

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

    .line 38
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/DeriveBufferGroup;->primaryBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    return-void
.end method
