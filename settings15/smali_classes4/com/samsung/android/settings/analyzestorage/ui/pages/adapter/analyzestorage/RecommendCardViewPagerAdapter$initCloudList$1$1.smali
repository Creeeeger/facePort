.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initCloudList$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $cloudTypeEnum:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initCloudList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initCloudList$1$1;->$cloudTypeEnum:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->isValidClick$default(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initCloudList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initCloudList$1$1;->$cloudTypeEnum:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    const-string v0, "cloudType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    if-ne p0, v0, :cond_0

    const/16 v1, 0x22f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x22ef

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "getAccountsByType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->chooseAccountListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->progressing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$showChooseAccountDialog$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$showChooseAccountDialog$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->showDialog(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getInstance() ] selecting account already in progress. accountType : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChooseAccountDialogFragment"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/CloudException;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;-><init>(I)V

    throw p0

    :cond_2
    if-ne p0, v0, :cond_3

    const-string p0, "com.sec.android.app.myfiles.ENTER_GOOGLE_DRIVE"

    goto :goto_1

    :cond_3
    const-string p0, "com.sec.android.app.myfiles.ENTER_ONEDRIVE"

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "open_cloud_from_manage_storage"

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "com.sec.android.app.myfiles"

    const-string v1, "com.sec.android.app.myfiles.ui.AnalyzeStorageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
