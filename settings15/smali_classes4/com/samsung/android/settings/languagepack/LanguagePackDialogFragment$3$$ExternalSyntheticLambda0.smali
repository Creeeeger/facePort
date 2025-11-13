.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    sget-object p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->requestCancelTask(Ljava/lang/String;)V

    return-void
.end method
