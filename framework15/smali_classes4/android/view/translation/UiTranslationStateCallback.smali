.class public interface abstract Landroid/view/translation/UiTranslationStateCallback;
.super Ljava/lang/Object;
.source "UiTranslationStateCallback.java"


# virtual methods
.method public abstract whitelist onFinished()V
.end method

.method public whitelist onFinished(Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0}, Landroid/view/translation/UiTranslationStateCallback;->onFinished()V

    return-void
.end method

.method public abstract whitelist onPaused()V
.end method

.method public whitelist onPaused(Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0}, Landroid/view/translation/UiTranslationStateCallback;->onPaused()V

    return-void
.end method

.method public whitelist onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 0

    return-void
.end method

.method public whitelist onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/view/translation/UiTranslationStateCallback;->onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public whitelist onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public greylist onStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
