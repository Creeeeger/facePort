.class public Lcom/samsung/android/sume/core/message/ResponseHolder;
.super Ljava/lang/Object;
.source "ResponseHolder.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "Lcom/samsung/android/sume/core/message/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist cv:Landroid/os/ConditionVariable;

.field private final blacklist requestCode:I

.field private blacklist response:Lcom/samsung/android/sume/core/message/Response;


# direct methods
.method public constructor blacklist <init>(I)V
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->cv:Landroid/os/ConditionVariable;

    .line 15
    iput p1, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->requestCode:I

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist block()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist block(ILjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "time"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "timeUnit"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->cv:Landroid/os/ConditionVariable;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    return v0
.end method

.method public blacklist get()Lcom/samsung/android/sume/core/message/Response;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->response:Lcom/samsung/android/sume/core/message/Response;

    return-object v0
.end method

.method public blacklist getCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->requestCode:I

    return v0
.end method

.method public blacklist put(Lcom/samsung/android/sume/core/message/Response;)V
    .locals 0
    .param p1, "instance"    # Lcom/samsung/android/sume/core/message/Response;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->response:Lcom/samsung/android/sume/core/message/Response;

    .line 21
    return-void
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

    .line 9
    check-cast p1, Lcom/samsung/android/sume/core/message/Response;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    return-void
.end method

.method public blacklist replace()Lcom/samsung/android/sume/core/message/Response;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->response:Lcom/samsung/android/sume/core/message/Response;

    .line 26
    .local v0, "ret":Lcom/samsung/android/sume/core/message/Response;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->response:Lcom/samsung/android/sume/core/message/Response;

    .line 27
    return-object v0
.end method

.method public bridge synthetic blacklist replace()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->replace()Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    return-object v0
.end method

.method public blacklist signal()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/ResponseHolder;->cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 49
    return-void
.end method
