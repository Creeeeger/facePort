.class public final Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-boolean v0, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsDownloadClicked:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
