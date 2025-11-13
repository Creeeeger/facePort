.class public final synthetic Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->isAllPackageInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f142603

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->enqueueDownloadTask(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iput-object p0, p1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mResultBroadcastPackage:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
