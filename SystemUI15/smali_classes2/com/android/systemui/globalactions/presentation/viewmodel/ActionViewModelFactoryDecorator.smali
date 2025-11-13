.class public final Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# instance fields
.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mDecoratedFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

.field public mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public final mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field public final mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mDecoratedFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    return-void
.end method


# virtual methods
.method public final createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 14

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v1, p2

    const-string v2, "knox_custom"

    const-string/jumbo v10, "side_key_settings"

    const-string/jumbo v4, "screen_capture_popup"

    const-string v11, "pro_kiosk"

    new-instance v12, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-direct {v12}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v5, v13

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mDecoratedFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    invoke-virtual {v12, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_CUSTOM_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iput-object v12, v1, Lcom/android/systemui/globalactions/presentation/viewmodel/KnoxCustomActionViewModel;->mActionInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v1

    :pswitch_1
    new-instance v11, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v5, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    invoke-interface {v1, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    iget-object v8, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v9, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    move-object v1, v11

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    invoke-virtual {v12, v10}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->KEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iput-object v12, v11, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v11

    :pswitch_2
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-direct {v1, v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;-><init>(Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V

    invoke-virtual {v12, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_POPUP_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iput-object v12, v1, Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v1

    :pswitch_3
    new-instance v10, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object v8, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v13, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/AlertDialogFactory;Lcom/samsung/android/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    invoke-virtual {v12, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_8P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_PROKIOSK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    iput-object v12, v10, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    invoke-virtual {v10, v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V

    return-object v10

    :sswitch_data_0
    .sparse-switch
        -0x47c42329 -> :sswitch_3
        -0x181e0c20 -> :sswitch_2
        0x41113beb -> :sswitch_1
        0x7f650484 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
