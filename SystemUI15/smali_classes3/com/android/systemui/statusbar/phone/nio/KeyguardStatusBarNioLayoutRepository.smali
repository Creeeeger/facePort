.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;


# instance fields
.field public final bootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

.field public final configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final gardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final gardenScale:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final listeners:Ljava/util/List;

.field public final mainHandler:Landroid/os/Handler;

.field public nioContainerView:Landroid/view/View;

.field public final nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

.field public final ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->bootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->gardenScale:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->gardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->listeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;)V

    iput-object p1, p5, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateRing:Ljava/lang/Runnable;

    check-cast p3, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    invoke-virtual {p3, p0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    return-void
.end method


# virtual methods
.method public final notifyNioUpdated()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioContainerView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->updateNioLayoutMargin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioContainerView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " SKIP notifyNioUpdated() - onLayoutChanged will be called or nioContainerView is null? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Next Ring will be coming."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->bootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

    check-cast v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    iget-object v0, v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " SKIP notifyNioUpdated() - isBootAnimationFinished not yet "

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " * notifyNioUpdated() !!!  size["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;->onNioLayoutUpdated(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onBootAnimationFinished()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->bootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

    check-cast v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    iget-object v0, v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->bootAnimationFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBootAnimationFinished() isBootAnimationFinished:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->gardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->addCallback(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "lockscreen_minimizing_notification"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->notifyNioUpdated()V

    return-void
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsDot()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result v2

    const-string v3, "SettingsHelper.onChanged() showOnKeyguard:"

    const-string v4, ", dot?"

    const-string v5, ", icon?"

    invoke-static {v3, v4, v5, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", card?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onChanged$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onDensityOrFontScaleChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onGardenChanged(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 1

    const-string v0, "onGardenChanged()"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onGardenChanged$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onGardenChanged$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance p3, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;

    invoke-direct {p3, p1, p4, p0, p2}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutChange$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;ILcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;I)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLayoutDirectionChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLayoutDirectionChanged(rtl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutDirectionChanged$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onLayoutDirectionChanged$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onOngoingCallStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOngoingCallStateChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onOngoingCallStateChanged$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onOngoingCallStateChanged$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSmallestScreenWidthChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final printLog(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingLeft:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->paddingRight:I

    iget v4, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->totalHeight:I

    iget v5, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->topMargin:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->getEndMargin()I

    move-result v6

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isRtl:Z

    iget v8, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerEndX:I

    iget v9, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->containerStartX:I

    sub-int v10, v8, v9

    iget v11, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconSize:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->iconScaleRatio:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->visibleCallChip:Z

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isShowNotificationOnKeyguard:Z

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isNotificationIconsOnlyOn:Z

    move/from16 p0, v14

    iget v14, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->numberOfNio:I

    move/from16 v16, v14

    iget v14, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->keyguardStatusBarViewAlpha:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->keyguardStatusBarViewVisibility:I

    const-string v14, "[pL:"

    move/from16 v17, v0

    const-string v0, ", pR:"

    move-object/from16 v18, v1

    const-string v1, ", H:"

    invoke-static {v2, v3, v14, v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mT:"

    const-string v2, ", mR:"

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rtl?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", (x2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - x1:"

    const-string v2, " = avW:"

    invoke-static {v0, v8, v1, v9, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "), iconSize:"

    const-string v2, ", ratio:"

    invoke-static {v0, v10, v1, v11, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callChip?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", settingsShow?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", settingNio?"

    const-string v2, ", numberOfNio?"

    move/from16 v3, p0

    invoke-static {v0, v3, v1, v15, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", KSBV(a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")] "

    move/from16 v2, v17

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "     "

    const-string v3, "KeyguardStatusBarNioLayoutRepository"

    move-object/from16 v4, p1

    invoke-static {v1, v4, v2, v0, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateNioLayoutMargin()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioContainerView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->getEndMargin()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->getEndMargin()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateNioLayoutMargin() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->getEndMargin()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
