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

.field private volatile blacklist mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

.field private final blacklist mfControllerSync:Landroid/os/ConditionVariable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/controller/MediaFilterController;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mfControllerSync:Landroid/os/ConditionVariable;

    iput p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    new-instance v0, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/controller/MediaFilterController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    return v0
.end method

.method static synthetic blacklist access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$onMessageReceived$3(Lcom/samsung/android/sume/core/message/Message;Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getConsumeMessage()[I
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3e1
        0x1f5
        0x1f6
        0x1fd
        0x1fe
        0x1f9
        0x1fa
        0x1fb
        0x1fc
        0x2
        0x1ff
        0x200
        0x201
        0x202
        0x203
        0x204
    .end array-data
.end method

.method synthetic blacklist lambda$onMessageReceived$4$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Event;
    .locals 3

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

.method synthetic blacklist lambda$request$2$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "singular-buffer"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/controller/MediaFilterController$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/controller/MediaFilterController$2;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$run$0$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const-string v1, "contents-id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/sume/core/message/ContentsInfo;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setContentsId(I)Lcom/samsung/android/sume/core/message/ContentsInfo;

    const-string v2, "show-progress"

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setData(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    :cond_0
    const-string v2, "display-name"

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setData(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setOriginalDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/message/ContentsInfo;->setOriginalColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-core-controller-MediaFilterController(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 10

    const-string v0, "contents-id"

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/message/ContentsInfo;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]mediaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contentsInfo= refactoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->isMetaData()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "freezed"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    const-string v6, "convert to original format"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v6

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "color-format of output(%s) is differ from one of input(%s)"

    invoke-static {v8, v7}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofCvtColor()Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v8

    invoke-interface {v8, v3, v7}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v7

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/types/DataType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sume/core/types/DataType;->name()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "data-type of output(%s) is differ from one of input(%s)"

    invoke-static {v9, v8}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getOriginalDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofCvtData()Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v8

    invoke-interface {v8, v3, v7}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-virtual {v7}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_1
    return-object v3
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string v0, "display-name"

    const-string v1, "show-progress"

    const-string v2, "contents-id"

    sget-object v3, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageReceived: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

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

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getException()Ljava/lang/Exception;

    move-result-object v5

    instance-of v5, v5, Lcom/samsung/android/sume/core/exception/ContentFilterOutException;

    if-eqz v5, :cond_0

    nop

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x2bd

    invoke-static {v6, v5}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/lang/String;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v5

    const-string v6, "id"

    iget v7, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/message/Event;

    move-object v3, v5

    :cond_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const/16 v5, 0x1ff

    const/16 v7, 0x204

    invoke-static {v5, v7}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda4;

    invoke-direct {v7, p1}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->contentsInfoMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/message/ContentsInfo;

    invoke-static {p1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->wrap(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/sume/core/message/ContentsInfo;->join(Lcom/samsung/android/sume/core/message/ContentsInfo;)Lcom/samsung/android/sume/core/message/ContentsInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v7

    const/16 v8, 0x1fc

    if-ne v7, v8, :cond_1

    invoke-virtual {v5, v1, v4}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getAsBooleanOr(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    const-string v1, "whole-frames"

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getWholeFrames()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    const-string v1, ""

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->getDataOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/message/Message;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Lcom/samsung/android/sume/core/message/Message;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/message/Event;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_2
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4
.end method

.method public declared-synchronized blacklist release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/graph/Graph;->release()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist request(Lcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/Response;
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Response;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown request: "

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

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/graph/Graph;->resume()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/graph/Graph;->pause()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getInputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

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

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getOutputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/app/PendingIntent$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output-buffers[#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->run(Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sume/core/message/Response;->join(Lcom/samsung/android/sume/core/message/Response;)Lcom/samsung/android/sume/core/message/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, -0x2

    invoke-static {v4, v3}, Lcom/samsung/android/sume/core/message/Response;->of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    nop

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->request(Lcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object p1

    return-object p1
.end method

.method public blacklist run(Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;
    .locals 9
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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    new-instance v3, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Ljava/util/List;J)V

    const/16 v4, 0x1f5

    invoke-static {v4, v3}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mfControllerSync:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/sume/core/graph/Graph;->run(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    const-string v5, "timestampMs"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0x1f6

    invoke-static {v7, v5, v6}, Lcom/samsung/android/sume/core/message/Event;->of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Event;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/message/Event;

    invoke-interface {v4, v5}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V

    :cond_2
    sget-object v4, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run X: processing total "

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

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/sume/core/message/Response;->setBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/samsung/android/sume/core/controller/MediaFilterController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/samsung/android/sume/core/controller/MediaFilterController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buffer-list["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    const/16 v4, 0x2be

    invoke-static {v4}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v4

    :goto_0
    return-object v4
.end method

.method public bridge synthetic blacklist run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->run(Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMediaFilterGraph(Lcom/samsung/android/sume/core/graph/Graph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mediaFilterGraph:Lcom/samsung/android/sume/core/graph/Graph;

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->messageSubscriber:Lcom/samsung/android/sume/core/controller/MediaFilterController$MessageSubscriberImpl;

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/graph/Graph;->setMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->mfControllerSync:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public blacklist setOnEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    return-void
.end method
