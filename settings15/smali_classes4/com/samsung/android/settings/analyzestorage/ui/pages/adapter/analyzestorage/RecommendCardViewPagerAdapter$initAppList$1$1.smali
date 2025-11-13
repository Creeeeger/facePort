.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $index:I

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public final synthetic $recommendType:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;ILcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;I)V
    .locals 0

    iput p5, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$r8$classId:I

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$recommendType:I

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$recommendType:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$packageName:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move p1, v0

    :cond_0
    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$recommendType:I

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->convertCardToSAEventId(IIZI)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->disappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iput-boolean v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->isDuringAnimation:Z

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->removeCard(I)V

    :cond_2
    return-void

    :pswitch_0
    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move p1, v0

    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$recommendType:I

    const/4 v3, 0x2

    invoke-static {v1, v2, p1, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->convertCardToSAEventId(IIZI)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p1, :cond_8

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    iget v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    if-eq v1, v3, :cond_7

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    const/4 v0, 0x6

    if-eq v1, v0, :cond_6

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.analyzestorage.ENTER_UNUSED_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "instanceId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->archiveAppNameList:Ljava/util/ArrayList;

    const-string v1, "archive_app_package_name_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.myfiles.VIEW_RECOMMENDATION_CARD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.myfiles"

    const-string v4, "com.sec.android.app.myfiles.ui.AnalyzeStorageActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "recommendType"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->nameCard:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->pathCard:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "path"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->bucketIdCard:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "bucket_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p1, :cond_9

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->removeCard(I)V

    :cond_9
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$index:I

    const-string/jumbo v3, "packageName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_b

    if-eq v2, v0, :cond_a

    const/16 v0, 0x22f5

    goto :goto_1

    :cond_a
    const/16 v0, 0x22f4

    goto :goto_1

    :cond_b
    const/16 v0, 0x22f3

    :goto_1
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ActivityNotFoundException : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter$initAppList$1$1;->$recommendType:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->removeCard(I)V

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
