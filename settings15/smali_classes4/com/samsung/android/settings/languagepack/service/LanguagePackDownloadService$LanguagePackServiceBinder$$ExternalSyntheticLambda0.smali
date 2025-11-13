.class public final synthetic Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    iget-object v0, p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
