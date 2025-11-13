.class public interface abstract Lcom/samsung/android/media/heif/SemHeifConverter;
.super Ljava/lang/Object;
.source "SemHeifConverter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/heif/SemHeifConverter$Factory;
    }
.end annotation


# virtual methods
.method public abstract convert(Lcom/samsung/android/media/heif/SemHeifConfig;Ljava/io/FileDescriptor;)I
.end method

.method public abstract convert(Lcom/samsung/android/media/heif/SemHeifConfig;Ljava/nio/ByteBuffer;)I
.end method

.method public abstract convert(Ljava/util/List;ILjava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/heif/SemHeifConfig;",
            ">;I",
            "Ljava/io/FileDescriptor;",
            ")I"
        }
    .end annotation
.end method

.method public abstract convert(Ljava/util/List;ILjava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/heif/SemHeifConfig;",
            ">;I",
            "Ljava/nio/ByteBuffer;",
            ")I"
        }
    .end annotation
.end method

.method public abstract deinitialize()V
.end method

.method public abstract initialize()V
.end method
