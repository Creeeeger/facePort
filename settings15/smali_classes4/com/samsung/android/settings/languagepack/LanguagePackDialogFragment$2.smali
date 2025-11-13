.class public final Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

.field public final synthetic val$callingPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->val$callingPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsDownloadClicked:Z

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->isNotActiveNetworksWarning(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->val$callingPackage:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->isAllPackageInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->-$$Nest$mshowWaitingUI(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->-$$Nest$mshowDownloadingUI(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V

    :goto_0
    const/16 p0, 0x1fcc

    const/16 p1, 0x1fd7

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
