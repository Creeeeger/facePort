.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$initLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$initLayout$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$initLayout$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.myfiles.VIEW_ANALYZE_STORAGE_SUB_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.myfiles"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "asType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string p1, "com.samsung.android.settings.analyzestorage.ENTER_UNUSED_APPS"

    goto :goto_0

    :cond_1
    const-string p1, "com.samsung.android.settings.analyzestorage.ENTER_APP_CACHE"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "instanceId"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList$initLayout$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getAsSubList()Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListInterface;->getSAEvent()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    return-void
.end method
