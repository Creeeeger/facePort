.class public Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;
.super Ljava/lang/Object;
.source "MediaFilterPlaceHolder.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

.field private blacklist mediaFilterSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mediaFilterUpdaterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mfToMessageSubscriberBinder:Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Ljava/util/function/Supplier;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "mediaFilterSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p2, "mediaFilterSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterUpdaterList:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterSupplier:Ljava/util/function/Supplier;

    .line 26
    return-void
.end method

.method static synthetic blacklist lambda$replace$0(Lcom/samsung/android/sume/core/filter/MediaFilter;Ljava/util/function/Consumer;)V
    .locals 0
    .param p0, "mediaFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p1, "it"    # Ljava/util/function/Consumer;

    .line 64
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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

    .line 50
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mfToMessageSubscriberBinder:Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;

    .line 51
    return-void
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0
.end method

.method public blacklist put(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1
    .param p1, "instance"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->put(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

.method public blacklist replace()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterSupplier:Ljava/util/function/Supplier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "duplicated replace call"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 64
    .local v0, "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterUpdaterList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mfToMessageSubscriberBinder:Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mfToMessageSubscriberBinder:Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;

    .line 68
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterSupplier:Ljava/util/function/Supplier;

    .line 70
    :cond_1
    return-object v0
.end method

.method public bridge synthetic blacklist replace()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->replace()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
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

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MediaFilterPlaceHolder not support this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMediaFilterUpdater(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaFilterUpdater"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "mediaFilterUpdater":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->mediaFilterUpdaterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MediaFilterPlaceHolder not support this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
