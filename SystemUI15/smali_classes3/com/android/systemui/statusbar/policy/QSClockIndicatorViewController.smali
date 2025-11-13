.class public final Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field private final dateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final qsClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final timeFormatChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;

.field public final view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->qsClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->dateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->timeFormatChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, p7, p8}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->setDependencies(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->callers:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " visibility = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " set from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    const-string v0, " clockVisibleByQuickStar = "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    const-string p2, " clockVisibleByDisableFlags = "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "clock"

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->calculateVisibility()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final onViewAttached()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->timeFormatChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/net/Uri;

    const-string/jumbo v4, "time_12_24"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-string v0, "icon_blacklist"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->dateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "status_bar_show_date"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->timeFormatChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->dateClockStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method
