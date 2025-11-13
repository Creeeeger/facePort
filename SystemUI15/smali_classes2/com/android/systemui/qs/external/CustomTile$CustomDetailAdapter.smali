.class public final Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public final mInteractionHandler:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

.field public final mService:Landroid/service/quicksettings/IQSTileService;

.field public final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/IQSTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mInteractionHandler:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string p2, "getDetailView remoteViews = "

    iget-object p3, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-boolean v1, p3, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p3, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    iget-object v1, p3, Lcom/android/systemui/qs/external/CustomTile;->mDetailView:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object v1

    iget-boolean v4, p3, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz v4, :cond_3

    iput-object v1, p3, Lcom/android/systemui/qs/external/CustomTile;->mDetailView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v2}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    :cond_3
    :goto_0
    iget-object p3, p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mInteractionHandler:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    invoke-virtual {v1, p1, p2, p0, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x10c

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/external/CustomTile;->mSettingsIntent:Landroid/content/Intent;

    return-object p0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object p0

    iget-boolean v2, v0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz v2, :cond_2

    iput-object p0, v0, Lcom/android/systemui/qs/external/CustomTile;->mSettingsIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    return-object v1
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v0, Lcom/android/systemui/qs/external/CustomTile;->mDetailViewTitle:Ljava/lang/CharSequence;

    return-object p0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object p0

    iget-boolean v2, v0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz v2, :cond_2

    iput-object p0, v0, Lcom/android/systemui/qs/external/CustomTile;->mDetailViewTitle:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    return-object v1
.end method

.method public final getToggleEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToggleEnabled:Z

    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p0, v0, Lcom/android/systemui/qs/external/CustomTile;->mIsToggleButtonExist:Z

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v2}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonExists()Z

    move-result v2

    iget-boolean v3, v0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz v3, :cond_3

    iput-boolean v2, v0, Lcom/android/systemui/qs/external/CustomTile;->mIsToggleButtonExist:Z

    :cond_3
    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public final setToggleState(Z)V
    .locals 8

    const-string/jumbo v0, "setToggleState state = "

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object v3, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const-string/jumbo v5, "setToggleState  "

    const-string v6, "getTileSpec() = "

    invoke-static {v5, v6, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-eqz v3, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v3, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v3, v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/2addr v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    const-string/jumbo p0, "setToggleState blocked"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    const-string v7, "ALL"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    const-string v7, "ON"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    const-string v7, "OFF"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_4

    :goto_0
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v3, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_4
    :try_start_0
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0, p1}, Landroid/service/quicksettings/IQSTileService;->semSetToggleButtonChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    :cond_6
    :goto_1
    return-void
.end method
