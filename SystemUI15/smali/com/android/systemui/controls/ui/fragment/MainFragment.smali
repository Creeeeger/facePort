.class public final Lcom/android/systemui/controls/ui/fragment/MainFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public context:Landroid/content/Context;

.field public controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public controlsPanelUpdatedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

.field public final controlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public listView:Landroidx/recyclerview/widget/RecyclerView;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public panelPendingIntent:Landroid/app/PendingIntent;

.field public panelView:Landroid/widget/FrameLayout;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/SecControlsUiController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    return-void
.end method


# virtual methods
.method public final onConfigChanged()V
    .locals 4

    const-string v0, "MainFragment"

    const-string v1, "onConfigChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->view:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const v1, 0x7f0a0688

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getWidthPercentBasic(F)F

    move-result p0

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(FLandroid/view/View;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MainFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->context:Landroid/content/Context;

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a068e

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/SeslMenuItem;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    invoke-direct {p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeObserver;-><init>(Landroidx/appcompat/view/menu/SeslMenuItem;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    check-cast p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "MainFragment"

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0d010b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->onConfigChanged()V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->view:Landroid/view/View;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    const p3, 0x7f0a00c8

    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f070254

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p3, v1

    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, p3, v2, p3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->view:Landroid/view/View;

    if-nez p1, :cond_4

    move-object p1, p2

    :cond_4
    const p3, 0x7f0a08ba

    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    iget-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelPendingIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_5

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsPanelUpdatedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;->onPanelUpdated(Landroid/widget/FrameLayout;Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_5
    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object p3, Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;

    invoke-virtual {p1, p3}, Lcom/android/systemui/controls/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->view:Landroid/view/View;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object p2, p0

    :goto_2
    return-object p2
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    check-cast v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    const-string v0, "MainFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOptionsItemSelected item = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a068e

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuManageApp;

    sget-object v2, Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;

    invoke-direct {v0, v2}, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuManageApp;-><init>(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->context:Landroid/content/Context;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    const-class p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_3

    :cond_1
    const v0, 0x7f0a0379

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuDevicesToShow;

    sget-object v2, Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;

    invoke-direct {v0, v2}, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuDevicesToShow;-><init>(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/management/model/MainModel;

    instance-of v4, v4, Lcom/android/systemui/controls/management/model/MainComponentModel;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    check-cast v3, Lcom/android/systemui/controls/management/model/MainModel;

    if-eqz v3, :cond_4

    check-cast v3, Lcom/android/systemui/controls/management/model/MainComponentModel;

    iget-object v2, v3, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    new-instance v3, Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->context:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "extra_app_label"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/controls/ui/SecControlsActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra_from_activity"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_5

    iget-object p0, v0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const v0, 0x7f0a0b33

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuSetting;

    sget-object v2, Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;

    invoke-direct {v0, v2}, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuSetting;-><init>(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->context:Landroid/content/Context;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, p0

    :goto_2
    const-class p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;

    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_8
    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPrepareOptionsMenu selectedItem = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    check-cast v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V

    iget-object v0, v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    instance-of p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
