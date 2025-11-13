.class public final Lcom/android/systemui/qp/SubscreenQsPanelController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;
.implements Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;


# instance fields
.field public mBaseViewController:Lcom/android/systemui/util/ViewController;

.field public final mBaseViewFactory:Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

.field public final mContext:Landroid/content/Context;

.field public final mFactory:Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

.field public mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    iput-object p3, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p1, p2}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/util/QsResetSettingsManager;->registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/util/QsResetSettingsManager;->registerDemoApplier(Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;)V

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "sub_screen_brightness_mode"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-instance p1, Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

    invoke-direct {p1}, Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mFactory:Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

    invoke-direct {p1, p0}, Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelController;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewFactory:Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

    return-void
.end method


# virtual methods
.method public final applyDemoResetSetting()V
    .locals 2

    const-string v0, "SubscreenQsPanelController"

    const-string v1, "applyDemoResetSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    const-string v0, "ShowDifferentHelpViewText"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "helpViewTextCount"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final applyResetSetting()V
    .locals 2

    const-string v0, "SubscreenQsPanelController"

    const-string v1, "applyResetSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const-string/jumbo v1, "sub_screen_brightness_mode"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public final getInstance(I)Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mFactory:Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/qp/SubscreenAirplaneController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenAirplaneController;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/qp/SubscreenBleController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenBleController;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/qp/SubscreenWifiController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenWifiController;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewFactory:Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const v2, 0x7f0a0c92

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelController;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    iget-object v3, v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    iget-object v3, v3, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;Lcom/android/systemui/qs/QSTileHost;)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    invoke-direct {v1, v0}, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewController:Lcom/android/systemui/util/ViewController;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init() controller: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewController:Lcom/android/systemui/util/ViewController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenQsPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewController:Lcom/android/systemui/util/ViewController;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/qp/SubscreenQSControllerContract$BaseViewController;->initView()V

    :cond_2
    return-void
.end method
