.class public Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;
.super Ljava/lang/Object;
.source "MFToMessageSubscriberBinder.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist messageSubscriber:Lcom/samsung/android/sume/core/message/MessageSubscriber;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .locals 0
    .param p1, "messageSubscriber"    # Lcom/samsung/android/sume/core/message/MessageSubscriber;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSubscriber"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->messageSubscriber:Lcom/samsung/android/sume/core/message/MessageSubscriber;

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist bindDecorateFilter(Lcom/samsung/android/sume/core/filter/DecorateFilter;)V
    .locals 3
    .param p1, "decorateFilter"    # Lcom/samsung/android/sume/core/filter/DecorateFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decorateFilter"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindMediaFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->bindMediaFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 28
    iget-object v0, p1, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V

    .line 29
    return-void
.end method

.method public blacklist bindMediaFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 3
    .param p1, "mediaFilter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaFilter"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindMediaFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getConsumeMessage()[I

    move-result-object v0

    .line 21
    .local v0, "messages":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->messageSubscriber:Lcom/samsung/android/sume/core/message/MessageSubscriber;

    invoke-interface {v1, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    .line 23
    :cond_0
    return-void
.end method

.method public blacklist imgpDecorateFilter(Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;)V
    .locals 3
    .param p1, "imgpDecorateFilter"    # Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgpDecorateFilter"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindMediaFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;->bindMediaFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getPreFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->getPostFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V

    .line 36
    iget-object v0, p1, Lcom/samsung/android/sume/core/filter/ImgpDecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->bindToMessageSubscriber(Lcom/samsung/android/sume/core/filter/MFToMessageSubscriberBinder;)V

    .line 37
    return-void
.end method
