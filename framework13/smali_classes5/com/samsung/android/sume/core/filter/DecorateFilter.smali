.class public abstract Lcom/samsung/android/sume/core/filter/DecorateFilter;
.super Ljava/lang/Object;
.source "DecorateFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist successor:Lcom/samsung/android/sume/core/filter/MediaFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successor"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V
    .locals 0
    .param p1, "mf2MessageSubscriberBinder"    # Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mf2MessageSubscriberBinder"
        }
    .end annotation

    .line 69
    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->bindDecorateFilter(Lcom/samsung/android/sume/core/filter/DecorateFilter;)V

    .line 70
    return-void
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v1, v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public blacklist getSuccessorFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method public blacklist prepare()V
    .locals 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v1, v0, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    .line 27
    .local v0, "placeHolder":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-interface {v0}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->replace()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 29
    .end local v0    # "placeHolder":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->release()V

    .line 44
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
