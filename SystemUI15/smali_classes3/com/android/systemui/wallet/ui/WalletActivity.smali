.class public Lcom/android/systemui/wallet/ui/WalletActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHandler:Landroid/os/Handler;

.field public mHasRegisteredListener:Z

.field public final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field public mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/settings/UserTracker;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object p3, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p7, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object p8, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p9, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p10, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p11, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p12, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f0d031a

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f080867

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0603c5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f13007c

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    const p1, 0x7f0a0ea3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletView;

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    new-instance v12, Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-object v3, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v4, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v5, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v8, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v9, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v10, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v11, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/wallet/ui/WalletScreenController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallet/ui/WalletView;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/internal/logging/UiEventLogger;)V

    iput-object v12, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallet/ui/WalletActivity$1;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object v0, p1, Lcom/android/systemui/wallet/ui/WalletView;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;I)V

    iput-object v0, p1, Lcom/android/systemui/wallet/ui/WalletView;->mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;I)V

    iput-object v0, p1, Lcom/android/systemui/wallet/ui/WalletView;->mDeviceLockedActionOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-boolean v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->notifyWalletDismissed()V

    iget-object v2, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    iget-object v3, v2, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v2, Lcom/android/systemui/wallet/ui/WalletView;->mAnimationTranslationX:F

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/wallet/ui/WalletView;->mOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, v2, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iput-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHasRegisteredListener:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_0
    const v1, 0x7f0a0ea1

    if-ne v0, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCK_SCREEN_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->requestFp(Z)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    const v2, 0x1120026

    invoke-static {p0, v2, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->requestFp(Z)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {p0}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->onWalletLaunched()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHasRegisteredListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->addWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHasRegisteredListener:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p0, "WalletActivity"

    const-string p1, "onWalletServiceEvent: Unknown event type"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    :cond_1
    :goto_0
    return-void
.end method
