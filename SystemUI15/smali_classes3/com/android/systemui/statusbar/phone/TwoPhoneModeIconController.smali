.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public currentUserId:I

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public isBModeCreated:Z

.field public isBModeUser:Z

.field public isOwner:Z

.field public modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

.field public final quickStarListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Landroid/os/UserManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userManager:Landroid/os/UserManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;-><init>(ZZZZ)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$settingsListener$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->quickStarListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    invoke-virtual {p7, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    move-result p2

    const-string v0, "featureEnabled="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    const-string/jumbo v0, "two phone mode created="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    const-string v2, "current user("

    const-string v3, ") is BMode="

    const-string v4, " or Owner="

    invoke-static {v2, p2, v3, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p2, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    const-string/jumbo p2, "two_phone_mode_icon"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isBlocked(Ljava/lang/String;)Z

    move-result p0

    const-string p2, "blocked by quick star="

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final featureEnabled()Z
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SHOW_TWO_PHONE_MODE_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getViewWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public final onViewAttached(Landroid/view/ViewGroup;)V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "two_register"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "two_account"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "two_call_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "two_sms_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v0, "TwoPhoneModeIconController"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->quickStarListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$quickStarListener$1;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->updateTwoPhoneMode()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    const-string v0, "TwoPhoneModeIconController"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationListener:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$configurationListener$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTrackerCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    return-void
.end method

.method public final updateTwoPhoneMode()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->userManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    if-ne v5, v6, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneCallEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneSMSEnabled()Z

    move-result v6

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;-><init>(ZZZZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111017a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->userCreated:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->registered:Z

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->msgEnabled:Z

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;->callEnabled:Z

    if-eqz v4, :cond_a

    if-nez v0, :cond_8

    if-eqz v6, :cond_f

    :cond_8
    if-eqz v5, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v0, :cond_9

    move-object v0, v1

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    const v5, 0x7f1312b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f08139a

    goto :goto_4

    :cond_a
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    if-eqz v4, :cond_f

    if-nez v0, :cond_b

    if-eqz v6, :cond_d

    :cond_b
    if-eqz v5, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v0, :cond_c

    move-object v0, v1

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    const v5, 0x7f1312b9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f081398

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v0, :cond_e

    move-object v0, v1

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    const v5, 0x7f1312b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f081399

    goto :goto_4

    :cond_f
    move v0, v3

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->state:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$TwoPhoneModeState;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateTwoPhoneMode state="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " current user("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is BMode="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> icon="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TwoPhoneModeIconController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_10

    move v4, v2

    goto :goto_5

    :cond_10
    move v4, v3

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v5, :cond_11

    goto :goto_9

    :cond_11
    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string/jumbo v5, "two_phone_mode_icon"

    invoke-virtual {v4, v5}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isBlocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_6

    :cond_12
    move v2, v3

    :goto_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez v4, :cond_13

    move-object v4, v1

    :cond_13
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->modeIconView:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconView;

    if-nez p0, :cond_14

    goto :goto_7

    :cond_14
    move-object v1, p0

    :goto_7
    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    const/16 v3, 0x8

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    return-void
.end method
