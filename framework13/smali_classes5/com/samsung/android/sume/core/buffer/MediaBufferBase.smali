.class abstract Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.super Ljava/lang/Object;
.source "MediaBufferBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# static fields
.field static final blacklist DATA_HARDWARE_BUFFER:I = 0x2

.field static final blacklist DATA_NOTHING:I = 0x1

.field static final blacklist DATA_PARCELABLE:I = 0x4

.field static final blacklist DATA_PARCEL_FILEDESCRIPTOR:I = 0x3

.field static final blacklist DATA_SERIALIZABLE:I = 0x5

.field protected static final blacklist INDENT_MARK:Ljava/lang/String; = "    "

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist extra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist flags:I

.field protected blacklist format:Lcom/samsung/android/sume/core/format/MediaFormat;

.field protected blacklist sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MediaFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .locals 1
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 44
    return-void
.end method

.method static synthetic blacklist lambda$containsAllExtra$4(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 2
    .param p0, "e"    # Ljava/util/HashMap;
    .param p1, "it"    # Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$containsAllExtra$5([Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "e"    # Ljava/util/HashMap;

    .line 153
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$containsAnyExtra$2(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 2
    .param p0, "e"    # Ljava/util/HashMap;
    .param p1, "it"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$containsAnyExtra$3([Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "e"    # Ljava/util/HashMap;

    .line 146
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$containsExtra$1(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/HashMap;

    .line 140
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs blacklist containFlags([I)Z
    .locals 2
    .param p1, "flagsToCheck"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flagsToCheck"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAllExtra([Ljava/lang/String;)Z
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda4;-><init>([Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 152
    return v0
.end method

.method public varargs blacklist containsAnyExtra([Ljava/lang/String;)Z
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda6;-><init>([Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 145
    return v0
.end method

.method public blacklist containsExtra(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5

    .line 199
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 201
    .local v0, "copied":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->isRequireToRelease(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 204
    sget-object v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "shared count=2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 207
    .local v1, "count":I
    sget-object v2, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shared count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "count":I
    :cond_1
    :goto_0
    return-object v0

    .line 211
    .end local v0    # "copied":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist deepCopy()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChannels()I
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public blacklist getCols()I
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
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
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
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
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .line 130
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    return-object v0
.end method

.method public blacklist getRows()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/NullPointerException;
    return-object p2
.end method

.method synthetic blacklist lambda$containFlags$0$com-samsung-android-sume-core-buffer-MediaBufferBase(I)Z
    .locals 1
    .param p1, "it"    # I

    .line 101
    iget v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist release()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer is shared: # of ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getPlanes()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "planes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/format/MediaFormat;>;"
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 187
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 188
    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    .line 189
    return-void
.end method

.method public blacklist removeExtra(Ljava/lang/String;)Ljava/lang/Object;
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

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "obj"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public blacklist setExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    if-ne v0, p1, :cond_0

    .line 112
    return-void

    .line 113
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method public varargs blacklist setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4
    .param p1, "flags"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 94
    .local v2, "flag":I
    iget v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 93
    .end local v2    # "flag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-object p0
.end method

.method protected blacklist transformDataTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 160
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    instance-of v1, p1, Landroid/hardware/HardwareBuffer;

    if-nez v1, :cond_1

    const-class v1, Landroid/hardware/HardwareBuffer;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 164
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->getInstance()Lcom/samsung/android/sume/core/buffer/SharedBufferManager;

    .line 165
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
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

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 57
    return-void
.end method
