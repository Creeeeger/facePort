.class public Lcom/samsung/android/sume/core/message/Event;
.super Lcom/samsung/android/sume/core/message/Message;
.source "Event.java"


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 12
    const/16 v0, 0x3de

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    .line 13
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    .line 17
    return-void
.end method

.method public static blacklist of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Event;
    .locals 1
    .param p0, "code"    # I
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "exception"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Event;->setException(Ljava/lang/Exception;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method public static blacklist of(ILjava/lang/String;)Lcom/samsung/android/sume/core/message/Event;
    .locals 2
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 20
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
    .param p0, "code"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "key",
            "data"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method public static blacklist of(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Event;
    .locals 1
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "data"
        }
    .end annotation

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

    .line 32
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Event;->put(Ljava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Event;

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Event;
    .locals 1
    .param p0, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/samsung/android/sume/core/message/Event;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Event;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    return-object v0
.end method
