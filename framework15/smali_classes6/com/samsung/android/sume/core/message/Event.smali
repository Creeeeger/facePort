.class public Lcom/samsung/android/sume/core/message/Event;
.super Lcom/samsung/android/sume/core/message/Message;
.source "Event.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/Event;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 1

    const/16 v0, 0x3de

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    return-void
.end method

.method public static blacklist of(I)Lcom/samsung/android/sume/core/message/Event;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    return-object v0
.end method

.method public static blacklist of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Event;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Event;->setException(Ljava/lang/Exception;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method public static blacklist of(ILjava/lang/String;)Lcom/samsung/android/sume/core/message/Event;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method public static blacklist of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Event;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method public static blacklist of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Event;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Event;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/message/Response;)Lcom/samsung/android/sume/core/message/Event;
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->getBufferList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->getBufferList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sume/core/message/Event;->TAG:Ljava/lang/String;

    const-string v2, "response contains buffer-list, set it into event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "buffer-list"

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->getBufferList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    :cond_0
    return-object v0
.end method
