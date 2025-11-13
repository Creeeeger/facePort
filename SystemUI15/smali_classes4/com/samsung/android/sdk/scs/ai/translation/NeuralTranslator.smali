.class public final Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public languageDirectionStateMap:Ljava/util/Map;

.field public final neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final identifyLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;
    .locals 3

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- identifyLanguage() executed - default"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NeuralTranslator -- identifyLanguage() executed - fallbackLanguage: en"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    const-string v2, "en"

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    return-object p0
.end method

.method public final refresh()Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;
    .locals 3

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- refresh() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/RefreshNeuralTranslatorRunnable;

    iget-object v2, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/RefreshNeuralTranslatorRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    return-object v0
.end method
