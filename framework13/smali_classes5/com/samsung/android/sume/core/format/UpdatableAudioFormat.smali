.class Lcom/samsung/android/sume/core/format/UpdatableAudioFormat;
.super Lcom/samsung/android/sume/core/format/AudioFormat;
.source "UpdatableAudioFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/AudioFormat;)V
    .locals 1
    .param p1, "grainFormat"    # Lcom/samsung/android/sume/core/format/AudioFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grainFormat"
        }
    .end annotation

    .line 9
    iget-object v0, p1, Lcom/samsung/android/sume/core/format/AudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/format/AudioFormat;-><init>(Lcom/samsung/android/sume/core/format/MutableAudioFormat;)V

    .line 10
    return-void
.end method


# virtual methods
.method public blacklist getCroppedShape()Lcom/samsung/android/sume/core/format/Shape;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
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

    .line 14
    iget-object v0, p0, Lcom/samsung/android/sume/core/format/UpdatableAudioFormat;->impl:Lcom/samsung/android/sume/core/format/MutableAudioFormat;

    iget-object v0, v0, Lcom/samsung/android/sume/core/format/MutableAudioFormat;->attributes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-object p0
.end method

.method public blacklist setUpdater(Ljava/util/function/BiConsumer;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updater"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/samsung/android/sume/core/format/ImageFormat;",
            "Lcom/samsung/android/sume/core/format/MutableImageFormat;",
            ">;)",
            "Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;"
        }
    .end annotation

    .line 25
    .local p1, "updater":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist update()Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 1
    .param p1, "source"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
