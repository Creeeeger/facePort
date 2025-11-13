.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getTranslationPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    sget v1, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;->$r8$clinit:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uninstallLangePacks() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getTranslationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguagePackEditFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v2, p1, p0}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->startUninstall(Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mResultBroadcastPackage:Ljava/lang/String;

    :cond_0
    return-void
.end method
