.class public final Lorg/simpleframework/xml/core/SessionManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public local:Ljava/lang/ThreadLocal;


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Session does not exist"

    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final open$1()Lorg/simpleframework/xml/core/Session;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    if-eqz v0, :cond_1

    iget p0, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    if-ltz p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    :cond_0
    iget-object p0, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->session:Lorg/simpleframework/xml/core/Session;

    return-object p0

    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/core/Session;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/Session;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->session:Lorg/simpleframework/xml/core/Session;

    iget-object p0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget p0, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    if-ltz p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    :cond_2
    iget-object p0, v0, Lorg/simpleframework/xml/core/SessionManager$Reference;->session:Lorg/simpleframework/xml/core/Session;

    return-object p0
.end method
