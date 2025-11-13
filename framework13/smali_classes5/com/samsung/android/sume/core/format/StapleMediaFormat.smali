.class public Lcom/samsung/android/sume/core/format/StapleMediaFormat;
.super Ljava/lang/Object;
.source "StapleMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;


# instance fields
.field blacklist impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V
    .locals 0
    .param p1, "stapleMutableMediaFormat"    # Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stapleMutableMediaFormat"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    .line 13
    return-void
.end method


# virtual methods
.method public blacklist bytePerSample()F
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->bytePerSample()F

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

    .line 89
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->checkTypeOf(Ljava/lang/String;Ljava/lang/Class;)Z

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

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contains(Ljava/lang/String;)Z

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

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->containsAllOf([Ljava/lang/String;)Z

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

    .line 79
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->containsAnyOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contentToString()Ljava/lang/String;

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

    .line 109
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 69
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatch()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getBatch()I

    move-result v0

    return v0
.end method

.method public blacklist getChannels()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public blacklist getCols()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getDataType()Lcom/samsung/android/sume/core/types/DataType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMediaType()Lcom/samsung/android/sume/core/types/MediaType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRows()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

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

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()J
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->size()J

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

    .line 99
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMediaFormat;->impl:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->deepCopy()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method
