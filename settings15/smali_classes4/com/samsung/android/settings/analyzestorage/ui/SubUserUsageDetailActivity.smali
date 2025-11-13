.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$OnWidthChangedListener;
.implements Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$OnWidthChangedListener;",
        "Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final controller$delegate:Lkotlin/Lazy;

.field public instanceId:I

.field public layoutState:I

.field public final layoutWidthManager$delegate:Lkotlin/Lazy;

.field public final pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$controller$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$controller$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->controller$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_SUB_USER_USAGE_DETAIL:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$layoutWidthManager$2;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$layoutWidthManager$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutWidthManager$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutWidthManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    iget v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    const/16 v2, 0x24d

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutState:I

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->setContentWidthDp(IZ)V

    const p1, 0x7f0a0142

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "requireViewById(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setFlexibleSpacing(Landroid/view/View;)V

    return-void
.end method

.method public final onContentChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageInfo(ZZ)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "instanceId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->instanceId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "domainType"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string v4, "from_usage_type"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->onCreate(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageInfo(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->checkSupportedStorageList()V

    const v0, 0x7f0a106c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v9, "requireViewById(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f1403e6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    const/4 v10, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v10}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v3, v10}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v3, 0x7f0a038f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutWidthManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    const/16 v3, 0x24d

    if-lt v0, v3, :cond_2

    move v0, v10

    goto :goto_0

    :cond_2
    move v0, v8

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutState:I

    const v11, 0x7f0a0142

    invoke-virtual {p0, v11}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iget-object v0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getBaseContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->getUsageInfoList(I)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutState:I

    if-ne v1, v10, :cond_3

    move v4, v10

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ConfigurationUtils;->isInRTLMode(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    move-object v1, p0

    move v3, v12

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->setInitItem(Landroidx/lifecycle/LifecycleOwner;Ljava/util/List;IZLcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;ZZ)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->getUsageDetailData(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$bindDataObserver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity$bindDataObserver$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageInfo(ZZ)V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setFlexibleSpacing(Landroid/view/View;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->initStatusBar(Landroid/app/Activity;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutWidthManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onWidthChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutWidthManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    const/16 v1, 0x24d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->layoutState:I

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubUserUsageDetailActivity;->usageDetailItem:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    if-eqz p0, :cond_2

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->updateColumnCount(Z)V

    :cond_2
    return-void
.end method
