.class public Lcom/samsung/android/sume/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist command:Lcom/samsung/android/sume/Command;

.field private blacklist data:Landroid/os/Bundle;

.field private blacklist id:I

.field private blacklist listener:Landroid/os/Messenger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/samsung/android/sume/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/Request;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/Command;)V
    .locals 1
    .param p1, "command"    # Lcom/samsung/android/sume/Command;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/Request;->id:I

    .line 37
    iput-object p1, p0, Lcom/samsung/android/sume/Request;->command:Lcom/samsung/android/sume/Command;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/Command;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Lcom/samsung/android/sume/Command;
    .param p2, "nnId"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "command",
            "nnId",
            "data"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/Request;->id:I

    .line 41
    iput-object p1, p0, Lcom/samsung/android/sume/Request;->command:Lcom/samsung/android/sume/Command;

    .line 42
    iput p2, p0, Lcom/samsung/android/sume/Request;->id:I

    .line 43
    iput-object p3, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    .line 44
    return-void
.end method

.method public static blacklist from(Landroid/os/Message;)Lcom/samsung/android/sume/Request;
    .locals 4
    .param p0, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/samsung/android/sume/Request;

    const-class v1, Lcom/samsung/android/sume/Command;

    iget v2, p0, Landroid/os/Message;->what:I

    .line 129
    invoke-static {v1, v2}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/Command;

    iget v2, p0, Landroid/os/Message;->arg1:I

    .line 131
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/Request;-><init>(Lcom/samsung/android/sume/Command;ILandroid/os/Bundle;)V

    .line 128
    return-object v0
.end method

.method static synthetic blacklist lambda$setModel$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 51
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$setModelLinkages$1(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 101
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/Model;

    invoke-virtual {v0}, Lcom/samsung/android/sume/nn/Model;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setModelLinkages$2(Lcom/samsung/android/sume/Duo;)Lcom/samsung/android/sume/Duo;
    .locals 3
    .param p0, "it"    # Lcom/samsung/android/sume/Duo;

    .line 102
    new-instance v0, Lcom/samsung/android/sume/Duo;

    iget-object v1, p0, Lcom/samsung/android/sume/Duo;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sume/evaluate/Evaluable;

    iget-object v2, p0, Lcom/samsung/android/sume/Duo;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sume/nn/Model;

    invoke-virtual {v2}, Lcom/samsung/android/sume/nn/Model;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/Duo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$setModelLinkages$3(I)[Lcom/samsung/android/sume/Duo;
    .locals 1
    .param p0, "x$0"    # I

    .line 102
    new-array v0, p0, [Lcom/samsung/android/sume/Duo;

    return-object v0
.end method

.method static synthetic blacklist lambda$setModelLinkages$4(Ljava/util/Map$Entry;)[Lcom/samsung/android/sume/Duo;
    .locals 2
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 102
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/Duo;

    return-object v0
.end method


# virtual methods
.method public blacklist getCommand()Lcom/samsung/android/sume/Command;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->command:Lcom/samsung/android/sume/Command;

    return-object v0
.end method

.method public blacklist getData()Landroid/os/Bundle;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getNNId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/android/sume/Request;->id:I

    return v0
.end method

.method public blacklist post(Landroid/os/Messenger;)Z
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messenger"
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sume/Request;->command:Lcom/samsung/android/sume/Command;

    invoke-virtual {v1}, Lcom/samsung/android/sume/Command;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/samsung/android/sume/Request;->id:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 117
    iget-object v1, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/sume/Request;->listener:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v1, 0x1

    return v1

    .line 121
    .end local v0    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/samsung/android/sume/Request;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "service is disconnected abnormally, ignore this request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setBuffers([Lcom/samsung/android/sume/MediaBuffer;)Lcom/samsung/android/sume/Request;
    .locals 2
    .param p1, "buffers"    # [Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffers"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    const-string v1, "media-buffers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 89
    return-object p0
.end method

.method public blacklist setContents([Landroid/content/ContentValues;)Lcom/samsung/android/sume/Request;
    .locals 2
    .param p1, "contents"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    const-string v1, "content-values"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 84
    return-object p0
.end method

.method public blacklist setDescriptor([Lcom/samsung/android/sume/nn/NNDescriptor;)Lcom/samsung/android/sume/Request;
    .locals 2
    .param p1, "descriptor"    # [Lcom/samsung/android/sume/nn/NNDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    const-string v1, "descriptors"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 57
    return-object p0
.end method

.method public blacklist setId(I)Lcom/samsung/android/sume/Request;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 61
    iput p1, p0, Lcom/samsung/android/sume/Request;->id:I

    .line 62
    return-object p0
.end method

.method public blacklist setInputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/Request;
    .locals 2
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    const-string v1, "input-format"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    :cond_0
    return-object p0
.end method

.method public blacklist setListener(Landroid/os/Messenger;)Lcom/samsung/android/sume/Request;
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messenger"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/samsung/android/sume/Request;->listener:Landroid/os/Messenger;

    .line 94
    return-object p0
.end method

.method public blacklist setMode(Lcom/samsung/android/sume/Mode;)Lcom/samsung/android/sume/Request;
    .locals 3
    .param p1, "mode"    # Lcom/samsung/android/sume/Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/samsung/android/sume/Mode;->getValue()I

    move-result v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    return-object p0
.end method

.method public blacklist setModel([Lcom/samsung/android/sume/nn/Model;)Lcom/samsung/android/sume/Request;
    .locals 3
    .param p1, "models"    # [Lcom/samsung/android/sume/nn/Model;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "models"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "models"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    return-object p0
.end method

.method public blacklist setModelAttributes(Ljava/util/HashMap;)Lcom/samsung/android/sume/Request;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/samsung/android/sume/Request;"
        }
    .end annotation

    .line 109
    .local p1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/samsung/android/sume/nn/Model;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    const-string v1, "model-extra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 110
    return-object p0
.end method

.method public blacklist setModelLinkages(Ljava/util/HashMap;)Lcom/samsung/android/sume/Request;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelLinkage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sume/Duo<",
            "Lcom/samsung/android/sume/evaluate/Evaluable;",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;>;>;)",
            "Lcom/samsung/android/sume/Request;"
        }
    .end annotation

    .line 99
    .local p1, "modelLinkage":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/samsung/android/sume/nn/Model;Ljava/util/ArrayList<Lcom/samsung/android/sume/Duo<Lcom/samsung/android/sume/evaluate/Evaluable;Lcom/samsung/android/sume/nn/Model;>;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/Request$$ExternalSyntheticLambda1;-><init>()V

    .line 100
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 104
    .local v0, "linkage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/samsung/android/sume/Duo<Lcom/samsung/android/sume/evaluate/Evaluator;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "model-linkage"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    return-object p0
.end method

.method public blacklist setOutputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/Request;
    .locals 2
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sume/Request;->data:Landroid/os/Bundle;

    const-string/jumbo v1, "output-format"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    :cond_0
    return-object p0
.end method
