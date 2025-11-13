.class public interface abstract Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
.super Ljava/lang/Object;
.source "UpdatableMediaFormat.java"

# interfaces
.implements Lcom/samsung/android/sume/core/format/MediaFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/format/UpdatableMediaFormat$UpdatableAttribute;
    }
.end annotation


# static fields
.field public static final blacklist UPDATE_AT_ALLOC:Ljava/lang/String; = "update-at-alloc"


# direct methods
.method public static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .locals 2
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 33
    instance-of v0, p0, Lcom/samsung/android/sume/core/format/ImageFormat;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/format/UpdatableImageFormat;-><init>(Lcom/samsung/android/sume/core/format/ImageFormat;)V

    return-object v0

    .line 35
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/sume/core/format/AudioFormat;

    if-eqz v0, :cond_1

    .line 36
    new-instance v0, Lcom/samsung/android/sume/core/format/UpdatableAudioFormat;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/format/AudioFormat;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/format/UpdatableAudioFormat;-><init>(Lcom/samsung/android/sume/core/format/AudioFormat;)V

    return-object v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist getCroppedShape()Lcom/samsung/android/sume/core/format/Shape;
.end method

.method public abstract blacklist set(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract blacklist setUpdater(Ljava/util/function/BiConsumer;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discloser"
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
.end method

.method public abstract blacklist update()Lcom/samsung/android/sume/core/format/MediaFormat;
.end method

.method public abstract blacklist with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation
.end method
