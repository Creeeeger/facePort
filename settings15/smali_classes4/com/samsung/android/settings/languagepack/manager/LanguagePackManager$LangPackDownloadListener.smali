.class public interface abstract Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$LangPackDownloadListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LangPackDownloadListener"
.end annotation


# virtual methods
.method public abstract finishUninstall(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
.end method

.method public abstract notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
.end method

.method public abstract publishProgress(JLcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
.end method
