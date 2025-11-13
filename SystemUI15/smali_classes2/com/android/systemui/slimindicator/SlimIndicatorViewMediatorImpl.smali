.class public final Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorManager;


# instance fields
.field public final mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

.field public mIsAddedTunable:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubscriberList:Ljava/util/HashMap;

.field public mUserSwitchListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;


# direct methods
.method public static $r8$lambda$lqyFPHTxnS2sH5Go2gjJjY1dJSs(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postUpdateAll() [newValue]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [SettingsHelper]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_3

    const-string/jumbo v1, "slimindicator_lock_carrier"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "slimindicator_home_carrier"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "slimindicator_panel_carrier"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput v1, v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    iput v3, v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance p2, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;-><init>(Landroid/content/Context;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V

    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-direct {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V

    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;I)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mUserSwitchListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;

    return-void
.end method


# virtual methods
.method public final getSubscriberTicketList()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string p0, "nothing"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubList:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isBlocked(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isHiddenBatteryIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "battery_icon"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHiddenLockScreenMum()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "lockscreen_mum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLeftClockPosition()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "left_clock_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "middle_clock_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "right_clock_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public final isMiddleClockPosition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "middle_clock_position"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRightClockPosition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "right_clock_position"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyNewsToSubscribers()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;->updateQuickStarStyle()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->postUpdateAll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final postUpdateAll(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "registerSubscriber("

    const-string v1, ") to "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->getSubscriberTicketList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;->updateQuickStarStyle()V

    :cond_0
    return-void
.end method

.method public final shouldShowSecondsClock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "slimindicator_show_seconds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showAmPmClock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "slimindicator_show_ampm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showDateClock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "slimindicator_show_date"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final unregisterSubscriber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unregisterSubscriber("

    const-string v1, ") From "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->getSubscriberTicketList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
