.class public interface abstract Lcom/samsung/android/sume/core/functional/PlaceHolder;
.super Ljava/lang/Object;
.source "PlaceHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public blacklist getParameters()[Ljava/lang/Object;
    .locals 1

    .line 13
    .local p0, "this":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract blacklist put(Ljava/lang/Object;)V
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
.end method

.method public abstract blacklist replace()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public varargs blacklist setParameters([Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/PlaceHolder;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
            "TT;>;"
        }
    .end annotation

    .line 10
    .local p0, "this":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
