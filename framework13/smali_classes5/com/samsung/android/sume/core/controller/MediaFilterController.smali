.class public Lcom/samsung/android/sume/core/controller/MediaFilterController;
.super Ljava/lang/Object;
.source "MediaFilterController.java"

# interfaces
.implements Lcom/samsung/android/sume/core/controller/MediaController;
.implements Lcom/samsung/android/sume/core/message/MessageConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/controller/MediaController<",
        "Lcom/samsung/android/sume/core/message/Response;",
        ">;",
        "Lcom/samsung/android/sume/core/message/MessageConsumer;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist contentId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist contentsInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/core/message/ContentsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

.field private final blacklist id:I

.field private blacklist mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/controller/MediaFilterController;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    .line 36
    iput p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    .line 37
    new-instance v0, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    .line 38
    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    .line 39
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/controller/MediaFilterController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/core/controller/MediaFilterController;

    .line 25
    iget v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    return v0
.end method

.method static synthetic blacklist access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist getConsumeMessage()[I
    .locals 1

    .line 188
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3e1
        0x1f5
        0x1f6
        0x1f7
        0x1f8
        0x2
    .end array-data
.end method

.method synthetic blacklist lambda$onMessageReceived$2$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Event;
    .locals 3
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;

    .line 220
    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Event;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method synthetic blacklist lambda$run$0$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 4
    .param p1, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 48
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contents-id"

    invoke-interface {p1, v2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    new-instance v1, Lcom/samsung/android/sume/core/message/ContentsInfo;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;-><init>()V

    .line 51
    .local v1, "contentsInfo":Lcom/samsung/android/sume/core/message/ContentsInfo;
    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setContentsId(I)Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 52
    const-string/jumbo v2, "show-progress"

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setData(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 55
    :cond_0
    const-string v2, "display-name"

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setData(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 58
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setOriginalDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 59
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setOriginalColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 61
    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 11
    .param p1, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 85
    const-string v0, "contents-id"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    .local v0, "contentsId":I
    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 88
    .local v1, "contentsInfo":Lcom/samsung/android/sume/core/message/ContentsInfo;
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    .line 90
    .local v2, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    move-object v3, p1

    .line 91
    .local v3, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->isMetaData()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "freezed"

    invoke-interface {v3, v6, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    invoke-interface {v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v5

    .line 95
    .local v5, "colorFormat":Lcom/samsung/android/sume/core/types/ColorFormat;
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v6, :cond_0

    .line 96
    sget-object v6, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-array v9, v8, [Ljava/lang/Object;

    .line 97
    invoke-virtual {v5}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 96
    const-string v10, "color-format of output(%s) is differ from one of input(%s)"

    invoke-static {v10, v9}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v6

    .line 100
    .local v6, "format":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 102
    new-instance v9, Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    invoke-direct {v9}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;-><init>()V

    invoke-virtual {v9}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->latestPluginsOrder()Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/sume/core/controller/UniImgp;->ofCvtColor(Lcom/samsung/android/sume/core/controller/UniImgp$Option;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v9

    .line 103
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-interface {v9, v3, v10}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    .line 106
    .end local v6    # "format":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    :cond_0
    invoke-interface {v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    .line 107
    .local v6, "dataType":Lcom/samsung/android/sume/core/types/DataType;
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v9

    if-eq v6, v9, :cond_1

    .line 108
    sget-object v9, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/types/DataType;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sume/core/types/DataType;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    .line 108
    const-string v7, "data-type of output(%s) is differ from one of input(%s)"

    invoke-static {v7, v8}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v4

    .line 112
    .local v4, "format":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 113
    invoke-static {}, Lcom/samsung/android/sume/core/controller/UniImgp;->ofCvtData()Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sume/core/format/ImageFormat;

    invoke-interface {v7, v3, v8}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    .line 118
    .end local v4    # "format":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .end local v5    # "colorFormat":Lcom/samsung/android/sume/core/types/ColorFormat;
    .end local v6    # "dataType":Lcom/samsung/android/sume/core/types/DataType;
    :cond_1
    return-object v3
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .locals 9
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 193
    const-string v0, "display-name"

    const-string/jumbo v1, "show-progress"

    const-string v2, "contents-id"

    sget-object v3, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageReceived: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v4, 0x0

    .line 196
    .local v4, "event":Lcom/samsung/android/sume/core/message/Event;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->isError()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error occur: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getException()Ljava/lang/Exception;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/sume/core/exception/ContentFilterOutException;

    if-eqz v3, :cond_0

    .line 200
    const/16 v3, 0x2bd

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 200
    invoke-static {v3, v6}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/lang/String;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v3

    const-string v6, "id"

    iget v7, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    .line 203
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/message/Event;

    move-object v4, v3

    .line 207
    :cond_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 209
    .local v2, "contentsId":I
    iget-object v3, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 210
    .local v3, "contentsInfo":Lcom/samsung/android/sume/core/message/ContentsInfo;
    invoke-static {p1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->wrap(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/sume/core/message/ContentsInfo;->join(Lcom/samsung/android/sume/core/message/ContentsInfo;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v7

    const/16 v8, 0x1f5

    if-ne v7, v8, :cond_1

    invoke-virtual {v3, v1, v5}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getAsBooleanOr(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 214
    const-string/jumbo v1, "whole-frames"

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getWholeFrames()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 215
    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getDataOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    .line 219
    .end local v2    # "contentsId":I
    .end local v3    # "contentsInfo":Lcom/samsung/android/sume/core/message/ContentsInfo;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v0, :cond_2

    .line 220
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Lcom/samsung/android/sume/core/message/Message;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/message/Event;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return v6

    .line 223
    :cond_2
    return v5

    .line 225
    .end local v4    # "event":Lcom/samsung/android/sume/core/message/Event;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    return v5
.end method

.method public declared-synchronized blacklist release()V
    .locals 1

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lcom/samsung/android/sume/core/graph/Graph;->release()V

    .line 170
    .end local p0    # "this":Lcom/samsung/android/sume/core/controller/MediaFilterController;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist request(Lcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/Response;
    .locals 7
    .param p1, "request"    # Lcom/samsung/android/sume/core/message/Request;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Response;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    .line 132
    .local v0, "response":Lcom/samsung/android/sume/core/message/Response;
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/graph/Graph;->resume()V

    .line 158
    goto/16 :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/graph/Graph;->pause()V

    .line 154
    goto/16 :goto_0

    .line 134
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getInputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda2;-><init>()V

    .line 135
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;-><init>()V

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 137
    .local v1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    sget-object v2, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input-buffers[#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getOutputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda2;-><init>()V

    .line 140
    invoke-virtual {v3, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;-><init>()V

    .line 141
    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 142
    .local v3, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "output-buffers[#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->run(Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/core/message/Response;->join(Lcom/samsung/android/sume/core/message/Response;)Lcom/samsung/android/sume/core/message/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/core/message/Response;->setException(Ljava/lang/Exception;)Lcom/samsung/android/sume/core/message/Message;

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 163
    .end local v1    # "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .end local v3    # "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic blacklist request(Lcom/samsung/android/sume/core/message/Request;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "request"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->request(Lcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object p1

    return-object p1
.end method

.method public blacklist run(Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inBuffers",
            "outBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Response;"
        }
    .end annotation

    .line 44
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, "beginTs":J
    new-instance v2, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v2, :cond_0

    .line 65
    const/16 v3, 0x1f6

    new-instance v4, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Ljava/util/List;J)V

    invoke-static {v3, v4}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/sume/core/graph/Graph;->run(Ljava/util/List;Ljava/util/List;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    .local v2, "endTs":J
    iget-object v4, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v4, :cond_1

    .line 76
    const/16 v5, 0x1f7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "timestampMs"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/message/Event;

    invoke-interface {v4, v5}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V

    .line 79
    :cond_1
    sget-object v4, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "run X: processing total "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms[#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    const/16 v5, 0x385

    invoke-static {v5}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/sume/core/message/Response;->setBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v5

    .line 83
    .local v5, "response":Lcom/samsung/android/sume/core/message/Response;
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;)V

    .line 84
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 119
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 120
    .local v6, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buffer-list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 122
    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    .end local v6    # "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    goto :goto_0

    .line 124
    .end local v5    # "response":Lcom/samsung/android/sume/core/message/Response;
    :cond_2
    const/16 v4, 0x2be

    invoke-static {v4}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v5

    .line 126
    .restart local v5    # "response":Lcom/samsung/android/sume/core/message/Response;
    :goto_0
    return-object v5
.end method

.method public bridge synthetic blacklist run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inBuffers",
            "outBuffers"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->run(Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMediaFilterGraph(Lcom/samsung/android/sume/core/graph/Graph;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaFilterGraph"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "mediaFilterGraph":Lcom/samsung/android/sume/core/graph/Graph;, "Lcom/samsung/android/sume/core/graph/Graph<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/graph/Graph;->setMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    .line 182
    return-void
.end method

.method public blacklist setOnEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    .line 177
    return-void
.end method
