.class public final Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    sget p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "onServiceConnected() : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LanguagePackDialogFragment"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    sput-object p2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onServiceDisconnected() : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LanguagePackDialogFragment"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    return-void
.end method
