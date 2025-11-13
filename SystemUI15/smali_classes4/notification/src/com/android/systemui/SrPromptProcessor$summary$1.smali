.class public final Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $callback:Lnotification/src/com/android/systemui/PromptCallback;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lnotification/src/com/android/systemui/SrPromptProcessor;


# direct methods
.method public constructor <init>(Lnotification/src/com/android/systemui/SrPromptProcessor;Lnotification/src/com/android/systemui/PromptCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;->this$0:Lnotification/src/com/android/systemui/SrPromptProcessor;

    iput-object p2, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    iput-object p3, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;->this$0:Lnotification/src/com/android/systemui/SrPromptProcessor;

    iput-boolean v0, v1, Lnotification/src/com/android/systemui/SrPromptProcessor;->isSummarizing:Z

    iget-object v0, v1, Lnotification/src/com/android/systemui/SrPromptProcessor;->mMemManager:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->release()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "summary onComplete isSuccessful : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SrPromptProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    iget-object v2, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    if-eqz v0, :cond_2

    const-string v0, " result"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/Result;->content:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;->$key:Ljava/lang/String;

    invoke-interface {v2, p0, v0}, Lnotification/src/com/android/systemui/PromptCallback;->onComplete(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " error : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_3
    invoke-interface {v2}, Lnotification/src/com/android/systemui/PromptCallback;->onFailure()V

    :goto_1
    return-void
.end method
