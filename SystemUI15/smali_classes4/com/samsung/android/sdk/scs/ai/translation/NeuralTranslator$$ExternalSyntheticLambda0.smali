.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- refresh() - Available downloadable LanguageDirection list [(source, target)]: "

    const-string v2, "NeuralTranslator -- refresh() - Available by pivot LanguageDirection list [(source, target)]: "

    const-string v3, "NeuralTranslator -- refresh() - Available LanguageDirection list [(source, target)]: "

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method
