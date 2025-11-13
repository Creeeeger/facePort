.class public final Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SmartReplyer"

    invoke-static {v0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    return-void
.end method


# virtual methods
.method public final smartReply(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;

    iget-boolean v1, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->enableStreaming:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;

    invoke-direct {v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;-><init>()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartReplyer"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->authHeader:Ljava/util/Map;

    iput-object p2, v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->inputText:Ljava/lang/String;

    iget-object p1, v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyRunnable2;->extraPrompt:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "executed: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    return-object p0
.end method
