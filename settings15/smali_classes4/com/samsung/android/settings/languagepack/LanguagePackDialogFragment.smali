.class public Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

.field public mFooterDivider:Landroid/view/View;

.field public mIndeterminateBar:Landroidx/appcompat/widget/SeslProgressBar;

.field public mIsDownloadClicked:Z

.field public mIsMultiLocales:Z

.field public final mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

.field public mLanguageInfo:Ljava/util/List;

.field public mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

.field public mPositiveButton:Landroid/view/View;

.field public mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field public mProgressBarContainer:Landroid/widget/LinearLayout;

.field public mProgressButton:Landroid/widget/ProgressBar;

.field public mProgressLeftText:Landroid/widget/TextView;

.field public mProgressRightText:Landroid/widget/TextView;

.field public final mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$1;

.field public mTitleText:Landroid/widget/TextView;


# direct methods
.method public static -$$Nest$mshowDownloadingUI(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "LanguagePackDialogFragment"

    const-string/jumbo v1, "showDownloadingUI()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mFooterDivider:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBarContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mPositiveButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static -$$Nest$mshowWaitingUI(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "LanguagePackDialogFragment"

    const-string/jumbo v1, "showWaitingUI()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mCurrentTask:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$DownloadTask;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mFooterDivider:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBarContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x1010077

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsDownloadClicked:Z

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$1;

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "function"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "calling_package"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    const-string v6, "LanguagePackDialogFragment"

    if-le v4, v5, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "language code count exceeded. Count = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    :try_start_0
    invoke-virtual {v4}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->makeLanguageList()Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v4, v3

    const/4 v5, 0x0

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_3

    aget-object v8, v3, v7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string p1, "Invalid language Code : "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    iget-object v10, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v10, v8}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object v8

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "Download candidate is empty : "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    iput-boolean v4, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsMultiLocales:Z

    :cond_5
    const-string v3, "langCode : "

    const-string v7, ", callingPackage : "

    const-string v8, ", multi : "

    invoke-static {v3, v1, v7, p1, v8}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsMultiLocales:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0928

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    const v7, 0x7f14260b

    invoke-virtual {v3, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v7, 0x7f1408bf

    invoke-virtual {v3, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v6, 0x7f0a0d4c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    const v6, 0x7f0a08ae

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressLeftText:Landroid/widget/TextView;

    const v6, 0x7f0a0cbb

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressRightText:Landroid/widget/TextView;

    const v6, 0x7f0a0523

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const v6, 0x7f0a0473

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBarContainer:Landroid/widget/LinearLayout;

    const v6, 0x7f0a07e4

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIndeterminateBar:Landroidx/appcompat/widget/SeslProgressBar;

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsMultiLocales:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f142608

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x7f142607

    invoke-virtual {v6, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->showMobileDataWarningMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14260e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mPositiveButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$2;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$3;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x7f0a0dad

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mFooterDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mServiceConnection:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$1;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsDownloadClicked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v4, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne v2, v4, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    const-string v0, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_PROGRESS"

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_RESULT"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLangPackReceiver:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final updateStatus$1(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguagePackManager:Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/languagepack/manager/LanguagePackManager;->getLanguageInfo(Ljava/lang/String;)Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateStatus : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Language code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMultiLocales : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsMultiLocales:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanguagePackDialogFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    iget-object v3, p1, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const-string v4, "(%d/%d)"

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIndeterminateBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsMultiLocales:Z

    const v2, 0x7f142609

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne v2, v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIndeterminateBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsMultiLocales:Z

    const v2, 0x7f142605

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsMultiLocales:Z

    if-eqz p1, :cond_6

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mDownloadDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_1
    return-void
.end method
