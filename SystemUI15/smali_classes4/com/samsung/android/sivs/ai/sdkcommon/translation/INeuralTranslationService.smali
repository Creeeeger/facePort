.class public interface abstract Lcom/samsung/android/sivs/ai/sdkcommon/translation/INeuralTranslationService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getLanguageDirectionStateMap()Ljava/util/Map;
.end method

.method public abstract getResourcePackPackageName()Ljava/lang/String;
.end method

.method public abstract getSourceLanguageList()Ljava/util/List;
.end method

.method public abstract getTargetLanguageList()Ljava/util/List;
.end method

.method public abstract identifyLanguage(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract identifyLanguageAndGetCandidate()Ljava/util/List;
.end method

.method public abstract identifyLanguageWithList()Ljava/util/List;
.end method

.method public abstract isAvailableDirection()Z
.end method

.method public abstract refresh()V
.end method

.method public abstract translate()V
.end method
