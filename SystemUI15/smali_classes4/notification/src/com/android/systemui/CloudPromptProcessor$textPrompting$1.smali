.class public final Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $callback:Lnotification/src/com/android/systemui/PromptCallback;

.field public final synthetic this$0:Lnotification/src/com/android/systemui/CloudPromptProcessor;


# direct methods
.method public constructor <init>(Lnotification/src/com/android/systemui/CloudPromptProcessor;Lnotification/src/com/android/systemui/PromptCallback;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->this$0:Lnotification/src/com/android/systemui/CloudPromptProcessor;

    iput-object p2, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object v3, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;->this$0:Lnotification/src/com/android/systemui/CloudPromptProcessor;

    const-string v4, "CloudPromptProcessor"

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SCS success: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/Result;->content:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_4

    invoke-static {p0, p1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$parseOutput(Lnotification/src/com/android/systemui/CloudPromptProcessor;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    if-ltz v5, :cond_2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    if-eq v5, v8, :cond_1

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v5, v9

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SCS result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v6}, Lnotification/src/com/android/systemui/PromptCallback;->onComplete(Ljava/lang/StringBuilder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-nez v0, :cond_8

    const-string p1, "SCS content is null"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lnotification/src/com/android/systemui/PromptCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lnotification/src/com/android/systemui/PromptCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SCS failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->getErrorCodeClassified()Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    if-ne v1, v4, :cond_6

    invoke-static {p0, v2}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->getErrorCodeClassified()Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    if-ne p1, v1, :cond_7

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lnotification/src/com/android/systemui/CloudPromptProcessor;->access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v3, v0}, Lnotification/src/com/android/systemui/PromptCallback;->onFailure(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method
