.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$Companion;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ViewConfigCoordinator"


# instance fields
.field private final colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mDispatchUiModeChangeOnUserSwitched:Z

.field private final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private mIsSwitchingUser:Z

.field private final mKeyguardUpdateCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mReinflateNotificationsOnUserSwitched:Z

.field private mThemeSeq:I

.field private final mUserChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->Companion:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->$stable:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mUserChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;

    return-void
.end method

.method public static final synthetic access$applyChangesOnUserSwitched(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->applyChangesOnUserSwitched()V

    return-void
.end method

.method public static final synthetic access$getColorUpdateLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;)Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    return-object p0
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$setMIsSwitchingUser$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mIsSwitchingUser:Z

    return-void
.end method

.method private final applyChangesOnUserSwitched()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mReinflateNotificationsOnUserSwitched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnDensityOrFontScaleChanged()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mReinflateNotificationsOnUserSwitched:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mDispatchUiModeChangeOnUserSwitched:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnUiModeChanged()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mDispatchUiModeChangeOnUserSwitched:Z

    :cond_1
    return-void
.end method

.method private static synthetic getMThemeSeq$annotations()V
    .locals 0

    return-void
.end method

.method private final log(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getDEBUG$cp()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "ViewConfigCoordinator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->reinflateOngoingActivity()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens$3()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyRoundnessAndInvalidate()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initDimens$1()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reInflateViews$1()V

    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final updateNotificationsOnUiModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewConfigCoordinator"

    const-string v1, "ViewConfigCoordinator.updateNotificationsOnUiModeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "updateNotifOnUiModeChanged"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->reinflateOngoingActivity()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onUiModeChanged()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_5
    return-void

    :goto_1
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    throw p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mUserChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mUserChangedListener$1;

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$mKeyguardUpdateCallback$1;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mThemeSeq:I

    iget p1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mThemeSeq:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->onUiModeChanged()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mIsSwitchingUser:Z

    const-string v2, "ViewConfigCoordinator.onDensityOrFontScaleChanged() isSwitchingUser="

    const-string v3, " keyguardUpdateMonitor.isSwitchingUser="

    const-string v4, "ViewConfigCoordinator"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    invoke-static {}, Lcom/android/internal/widget/MessagingMessage;->dropCache()V

    invoke-static {}, Lcom/android/internal/widget/MessagingGroup;->dropCache()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mIsSwitchingUser:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnDensityOrFontScaleChanged()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mReinflateNotificationsOnUserSwitched:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic onDisplayDeviceTypeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLayoutDirectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLocaleListChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMaxBoundsChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSmallestScreenWidthChanged()V
    .locals 0

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->colorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;->Companion:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mIsSwitchingUser:Z

    const-string v2, "ViewConfigCoordinator.onUiModeChanged() isSwitchingUser="

    const-string v3, " keyguardUpdateMonitor.isSwitchingUser="

    const-string v4, "ViewConfigCoordinator"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mIsSwitchingUser:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->updateNotificationsOnUiModeChanged()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;->mDispatchUiModeChangeOnUserSwitched:Z

    :goto_0
    return-void
.end method
