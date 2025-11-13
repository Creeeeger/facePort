.class public final Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;


# instance fields
.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mContext:Landroid/content/Context;

.field public final mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field public final mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public final createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const-string v0, "power"

    const-string v1, "emergency"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "DEMO_MODE"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/globalactions/features/DemoModeStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/globalactions/features/DemoModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "KNOX_DEVICE_MANAGER"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "data_mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v3, Lcom/android/systemui/globalactions/features/KnoxMDMStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/features/KnoxMDMStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Lcom/samsung/android/globalactions/features/SktStrategy;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p1, v0, v1, v3, v4}, Lcom/samsung/android/globalactions/features/SktStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string p1, "ActionInteractionStrategy"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x65e8905 -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final createActionUpdateStrategies()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_SIDE_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/SideKeyStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-interface {p0, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/systemui/globalactions/features/SideKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Landroid/content/Context;Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_SIDE_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/SideKeyStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/globalactions/features/SideKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Landroid/content/Context;Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DATA_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/globalactions/features/DataModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/DataModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "LOCK_DOWN_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FORCE_RESTART_MESSAGE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/globalactions/features/ForceRestartMessageStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/globalactions/features/ForceRestartMessageStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p1, "ActionsCreationStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "emergency"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    const-string v3, "SCOVER"

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "SAFETY_CARE"

    invoke-interface {p2, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p2, p1, v1, v4}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "DESKTOP_MODE"

    invoke-interface {p2, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p2, v1, v4, v5, v6}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "KNOX_SDK"

    invoke-interface {p2, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v4, p2

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    invoke-interface {p2, v3}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string p2, "RESERVE_BATTERY_MODE"

    invoke-interface {p1, p2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, p2}, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "bug_report"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    invoke-interface {p2, v3}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v1, "emergency_call"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    invoke-interface {p2, v3}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v1, "medical_info"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    invoke-interface {p2, v3}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    const-string p1, "DefaultActionsCreationStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SUPPORT_SIDE_KEY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/globalactions/features/SideKeyStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/globalactions/features/SideKeyStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Landroid/content/Context;Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FRONT_LARGE_COVER_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FRONT_COVER_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "DESKTOP_MODE"

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p1, "DisposingStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SAFETY_CARE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "DESKTOP_MODE"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_CONTAINER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, "InitializationStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "KNOX_SDK"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {v2, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "OnKeyListenerStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 12

    const-string/jumbo v0, "restart"

    const-string v1, "power"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "emergency"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "side_key_settings"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "data_mode"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "safe_mode"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "FINGERPRINT_IN_DISPLAY"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;-><init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "SCOVER"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v4, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v7, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v4, v7}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v4, v3

    move-object v7, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v4, "POWER_OFF_LOCK"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v6, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v0, "FRONT_LARGE_COVER_DISPLAY"

    invoke-interface {p2, v0}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object p2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v0, "FRONT_COVER_DISPLAY"

    invoke-interface {p2, v0}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p2, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-direct {p2, p1, v0, p0}, Lcom/samsung/android/globalactions/features/FrontDisplayStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x436d1ceb -> :sswitch_5
        -0x15abc2e8 -> :sswitch_4
        0x65e8905 -> :sswitch_3
        0x41113beb -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "restart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/samsung/android/globalactions/features/SecFOTAForceUpdateStrategy;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/globalactions/features/SecFOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public final createViewInflateStrategy()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SF_EFFECT"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/globalactions/features/SepBlurStrategy;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/features/SepBlurStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "CAPTURED_BLUR"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/globalactions/features/CapturedBlurStrategy;-><init>(Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "NAV_BAR"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "FRONT_LARGE_COVER_DISPLAY"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2}, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v2, "SCOVER"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v2, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p1, "WindowDecorationStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 9

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    const-string v1, "SCOVER"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "WindowManagerFunctionStrategy"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->loggingStrategy(Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method public final loggingStrategy(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string p2, "check "

    const-string v1, " [ "

    const-string v2, "]"

    invoke-static {p2, p1, v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalActionsFeatureFactory"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
