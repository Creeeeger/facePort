.class Lcom/samsung/android/sdk/scs/ai/translation/RefreshNeuralTranslatorRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;"
    }
.end annotation


# instance fields
.field public final neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/RefreshNeuralTranslatorRunnable;->neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/RefreshNeuralTranslatorRunnable;->neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->translationService:Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$Stub$Proxy;

    invoke-virtual {v0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$Stub$Proxy;->refresh()V

    invoke-virtual {v0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService$Stub$Proxy;->getLanguageDirectionStateMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionStateMapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionStateMapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RefreshNeuralTranslatorRunnable -- Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScsApi@NeuralTranslator"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_NEURAL_TRANSLATION"

    return-object p0
.end method
