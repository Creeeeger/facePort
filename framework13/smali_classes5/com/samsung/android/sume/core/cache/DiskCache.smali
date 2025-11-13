.class public interface abstract Lcom/samsung/android/sume/core/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# virtual methods
.method public abstract blacklist clear()V
.end method

.method public abstract blacklist close()V
.end method

.method public abstract blacklist get(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract blacklist put(Ljava/lang/String;Ljava/util/function/Function;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
