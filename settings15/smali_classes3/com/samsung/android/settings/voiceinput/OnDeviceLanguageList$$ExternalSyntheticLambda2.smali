.class public final synthetic Lcom/samsung/android/settings/voiceinput/OnDeviceLanguageList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/samsung/android/settings/voiceinput/LanguagePack;

    iget-object p0, p1, Lcom/samsung/android/settings/voiceinput/LanguagePack;->languageCode:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/settings/voiceinput/LanguagePack;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/Language;

    iget-object p1, p1, Lcom/samsung/android/settings/voiceinput/LanguagePack;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/settings/voiceinput/offline/Language;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
