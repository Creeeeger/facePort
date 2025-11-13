.class Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final installFinish()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->deleteTemporalDownloadedFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->isAllPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_FINISH:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$2;->val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_ERROR:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->notifyUpdateStatus(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;I)V

    :goto_0
    return-void
.end method

.method public final uninstallFinish()V
    .locals 0

    return-void
.end method
