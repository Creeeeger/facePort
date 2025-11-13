.class public final Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public mContext:Landroid/content/Context;

.field public mView:Landroid/view/View;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "NoFavoriteFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

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
    .locals 2

    const-string v0, "NoFavoriteFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0379

    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    const p2, 0x7f0a068e

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/SeslMenuItem;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    invoke-direct {p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeObserver;-><init>(Landroidx/appcompat/view/menu/SeslMenuItem;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    check-cast p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "NoFavoriteFragment"

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0d010d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mView:Landroid/view/View;

    const p2, 0x7f0a068f

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;-><init>(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    const p3, 0x7f070263

    invoke-static {p2, p1, p3}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object p2, Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mView:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "NoFavoriteFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    check-cast v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a068e

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuManageApp;

    sget-object v3, Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;

    invoke-direct {v0, v3}, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuManageApp;-><init>(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const-class p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_1
    const v0, 0x7f0a0b33

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuSetting;

    sget-object v3, Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;

    invoke-direct {v0, v3}, Lcom/android/systemui/controls/util/SALogger$Event$TapMenuSetting;-><init>(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    const-class p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;

    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    check-cast p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
