.class public Lcom/samsung/android/sume/core/format/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected final blacklist impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/android/sume/core/format/AudioFormat;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/format/AudioFormat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableAudioFormat;)V
    .locals 0
    .param p1, "impl"    # Lcom/samsung/android/sume/core/format/MutableAudioFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist bytePerSample()F
    .locals 1

    .line 57
    const/4 v0, 0x0

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

    .line 93
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

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

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->contains(Ljava/lang/String;)Z

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

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->containsAllOf([Ljava/lang/String;)Z

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

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/AudioFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 67
    const/4 v0, 0x0

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

    .line 73
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBatch()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->getBatch()I

    move-result v0

    return v0
.end method

.method public blacklist getChannels()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public blacklist getCols()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .locals 1

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRows()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist remove(Ljava/lang/String;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()J
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->size()J

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

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/format/AudioFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
