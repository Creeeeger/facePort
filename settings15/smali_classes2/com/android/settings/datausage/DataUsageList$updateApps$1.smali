.class final Lcom/android/settings/datausage/DataUsageList$updateApps$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $usageData:Lcom/android/settings/datausage/lib/NetworkUsageData;

.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settings/datausage/lib/NetworkUsageData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->$usageData:Lcom/android/settings/datausage/lib/NetworkUsageData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p1, p1, Lcom/android/settings/datausage/DataUsageList;->dataUsageListAppsController:Lcom/android/settings/datausage/DataUsageListAppsController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataUsageListAppsController;->getSecureFolderUsage()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->$usageData:Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v1, v1, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    filled-new-array {v0, v4, v4}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f140f62

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f140bd6

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v0, v4, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/16 v6, 0x12

    if-ne v2, v4, :cond_3

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_3
    if-lez v2, :cond_4

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v4, v3, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    const-string v4, "sans-serif-medium"

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->usageAmount:Landroidx/preference/Preference;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->$usageData:Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v1, v0, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    const-string v4, "usage Start Time : "

    const-string v5, ", End Time : "

    invoke-static {v1, v2, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->$usageData:Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v4, v0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Total Usage : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Secure Usage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$updateApps$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->loadingViewController:Lcom/android/settings/widget/LoadingViewController;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
