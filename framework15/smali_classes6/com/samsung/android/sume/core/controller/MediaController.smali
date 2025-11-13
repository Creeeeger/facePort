.class public interface abstract Lcom/samsung/android/sume/core/controller/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist release()V
.end method

.method public abstract blacklist request(Lcom/samsung/android/sume/core/message/Request;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/message/Request;",
            ")TT;"
        }
    .end annotation
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/controller/MediaController$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/MediaController$1;-><init>(Lcom/samsung/android/sume/core/controller/MediaController;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/sume/core/controller/MediaController;->run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/controller/MediaController$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/MediaController$2;-><init>(Lcom/samsung/android/sume/core/controller/MediaController;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    new-instance v1, Lcom/samsung/android/sume/core/controller/MediaController$3;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sume/core/controller/MediaController$3;-><init>(Lcom/samsung/android/sume/core/controller/MediaController;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/sume/core/controller/MediaController;->run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sume/core/controller/MediaController;->run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist setOnEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
.end method
