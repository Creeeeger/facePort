.class public final Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mControlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final mHasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mListingCallback:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;

.field public final mSecControlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

.field public final mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/controls/controller/SecDeviceControlsController;Lcom/android/systemui/controls/dagger/ControlsComponent;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mHasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mListingCallback:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;

    iget-object p2, p11, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsUiController:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p11, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsUiController:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/controls/ui/SecControlsUiController;

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mSecControlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p4, "getSecControlsUiController() is empty"

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p11, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p11, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/android/systemui/controls/management/ControlsListingController;

    :cond_2
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mControlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    if-eqz p3, :cond_3

    check-cast p3, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {p3, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, "getSecControlsListingController() is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mControlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mListingCallback:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda1;

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e99

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const/4 p2, 0x1

    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e95

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const p2, 0x7f080b0f

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130e99

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mHasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p0, "handleUpdateState hasControlsApps is false"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mSecControlsUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    if-nez p0, :cond_1

    const-string p0, "mSecControlsUiController is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    invoke-static {p0}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;->getSelectedComponent$default(Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const-string v1, ""

    if-nez p2, :cond_3

    move-object p2, v1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.samsung.android.oneconnect"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p0}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;->getSelectedComponent$default(Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->name:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const p0, 0x7f080e6c

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "handleUpdateState appName = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method
