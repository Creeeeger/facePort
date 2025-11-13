.class Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$InstallerCallbackListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

.field final synthetic val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$1;->this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$1;->val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    return-void
.end method


# virtual methods
.method public final installFinish()V
    .locals 0

    return-void
.end method

.method public final uninstallFinish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$1;->this$0:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager$1;->val$langInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->-$$Nest$mnotifyUninstallStatus(Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    return-void
.end method
