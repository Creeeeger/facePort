.class public final Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public mSummary:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/SyncTile;->hasUserRestriction()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03b4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0701

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f1304cf

    goto :goto_0

    :cond_1
    const p0, 0x7f1304cd

    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1390

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f4a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SyncTile;->isBlockedEdmSettingsChange$2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_1

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SyncTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/SyncTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-nez v1, :cond_1

    new-instance p1, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isKeyguardVisible() = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSecure() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canSkipBouncer() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLockFunctionsEnabled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SyncTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/SyncTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    sget-object v1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const p1, 0x7f1304cf

    goto :goto_0

    :cond_2
    const p1, 0x7f1304cd

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
