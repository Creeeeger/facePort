.class public final synthetic Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->version:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got notification after updated for locale "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->language:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "@VoiceIn:LangPackPreference "

    invoke-static {v1, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageStatus(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil;->setLanguagePackageVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setPreferenceStatus()V

    :goto_0
    return-void
.end method
