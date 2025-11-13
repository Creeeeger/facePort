.class public final Lnotification/src/com/android/systemui/SrPromptProcessor$textPrompting$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $callback:Lnotification/src/com/android/systemui/PromptCallback;


# direct methods
.method public constructor <init>(Lnotification/src/com/android/systemui/PromptCallback;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$textPrompting$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smartReply onComplete isSuccessful : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SrPromptProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v2, 0x0

    iget-object p0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$textPrompting$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    if-eqz v0, :cond_1

    const-string v0, " result"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/samsung/android/sdk/scs/ai/language/Result;->content:Ljava/lang/String;

    :cond_0
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lnotification/src/com/android/systemui/PromptCallback;->onComplete(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-interface {p0, v2}, Lnotification/src/com/android/systemui/PromptCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
