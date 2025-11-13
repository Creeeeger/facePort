.class public final Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$activityResult$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$activityResult$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Landroidx/activity/result/ActivityResult;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const-string/jumbo v0, "recommendCardController"

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const/4 v3, 0x5

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$activityResult$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->overView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->getCloudInfoByProviderQueryWithContentObserver()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->overViewController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageInfo(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->recommendCardController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->updateOnlyCard(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo p0, "overViewController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->refresh()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->recommendCardController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p0, :cond_4

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->updateOnlyCard(I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method
