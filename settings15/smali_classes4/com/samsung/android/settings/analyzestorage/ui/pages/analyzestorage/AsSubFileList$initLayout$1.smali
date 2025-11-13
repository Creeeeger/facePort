.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList$initLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList$initLayout$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList$initLayout$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.VIEW_ANALYZE_STORAGE_SUB_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.myfiles"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "asType"

    iget v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSaType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mNeedUpdate:Z

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->getSAEvent()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
