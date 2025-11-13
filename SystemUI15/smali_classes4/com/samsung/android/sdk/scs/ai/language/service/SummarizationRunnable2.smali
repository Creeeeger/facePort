.class public Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;"
    }
.end annotation


# instance fields
.field public authHeader:Ljava/util/Map;

.field public final extraPrompt:Ljava/util/Map;

.field public inputText:Ljava/lang/String;

.field public final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;

.field public summarizeLevel:Ljava/lang/String;

.field public summarizeSubTask:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->extraPrompt:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 9

    :try_start_0
    new-instance v7, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;->summarizationService:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->authHeader:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->inputText:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->summarizeLevel:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->summarizeSubTask:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->extraPrompt:Ljava/util/Map;

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISummarizationService$Stub$Proxy;->summarizeWithHeader3(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/ILlmServiceObserver2;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_AI_GEN_SUMMARY"

    return-object p0
.end method
