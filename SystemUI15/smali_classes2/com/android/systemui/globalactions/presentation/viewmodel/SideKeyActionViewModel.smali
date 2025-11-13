.class public final Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field public final mActivityStarterWrapper:Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

.field public final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field public mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mActivityStarterWrapper:Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    return-void
.end method


# virtual methods
.method public final getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object p0
.end method

.method public final onPress()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SideKeyActionViewModel"

    const-string v2, "Running side key settings activity"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v4, "611"

    const-string v5, "6111"

    const-string v6, "Side key settings"

    const-wide/16 v7, 0x8

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.SIDE_KEY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mActivityStarterWrapper:Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    return-void
.end method

.method public final setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/SideKeyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method
