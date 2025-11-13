.class public final Lcom/samsung/android/sume/core/message/Request;
.super Lcom/samsung/android/sume/core/message/Message;
.source "Request.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist inputBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isOneWay:Z

.field private blacklist outputBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist receiver:Landroid/os/Messenger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1

    const/16 v0, 0x3df

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Message;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "input-buffer-list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    :cond_0
    const-string v2, "output-buffer-list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    :cond_1
    return-void
.end method

.method static synthetic blacklist lambda$getContentValues$4(Ljava/util/List;)Ljava/util/Optional;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getInputBuffer$2(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-string v3, "singular-buffer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getOutputBuffer$3(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcelable;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/os/Parcelable;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public static blacklist of(I)Lcom/samsung/android/sume/core/message/Request;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Request;-><init>(I)V

    return-object v0
.end method

.method public static blacklist of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Request;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Request;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/message/Request;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Request;

    return-object v0
.end method

.method public static blacklist of(Landroid/os/Message;)Lcom/samsung/android/sume/core/message/Request;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Request;-><init>(Landroid/os/Message;)V

    return-object v0
.end method


# virtual methods
.method public blacklist asOneWay()Lcom/samsung/android/sume/core/message/Request;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    return-object p0
.end method

.method public blacklist getContentValues()Landroid/content/ContentValues;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->getContentValuesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    return-object v0
.end method

.method public blacklist getContentValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const-string v0, "content-values"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/message/Request;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public blacklist getOutputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public blacklist getReceiver()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    return-object v0
.end method

.method public blacklist isOneWay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    return v0
.end method

.method public blacklist post()Lcom/samsung/android/sume/core/message/Message;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no receiver object given for code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip to send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->toAndroidMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to send request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    nop

    return-object p0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    throw v1
.end method

.method public blacklist setInputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Request;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    return-object p0
.end method

.method public varargs blacklist setInputBuffer([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/message/Request;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setOutputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Request;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    return-object p0
.end method

.method public varargs blacklist setOutputBuffer([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/message/Request;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setReceiver(Landroid/os/Messenger;)Lcom/samsung/android/sume/core/message/Request;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    return-object p0
.end method

.method public blacklist then(Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/message/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->getInstance()Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->register(Ljava/util/function/Consumer;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/message/Request;->extra:I

    return-object p0
.end method

.method public blacklist toAndroidMessage()Landroid/os/Message;
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/sume/core/message/Message;->toAndroidMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    new-array v4, v3, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    const-string v4, "input-buffer-list"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    new-array v3, v3, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    const-string v3, "output-buffer-list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->contentToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
