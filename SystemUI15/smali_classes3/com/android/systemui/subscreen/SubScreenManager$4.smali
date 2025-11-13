.class public final Lcom/android/systemui/subscreen/SubScreenManager$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 6

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onDeviceStateChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubScreenManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;->INSTANCE:Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "setEnableOnBackInvokedCallback true"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->setEnableOnBackInvokedCallback(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v1, "setEnableOnBackInvokedCallback false"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->setEnableOnBackInvokedCallback(Z)V

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v3, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/subscreen/SubScreenManager;->isTurnOnWhenUnFolding()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget v3, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "main display do not on.So pending request. state : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget v3, v3, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    invoke-static {v3, v2, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iput-boolean v4, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v4}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x64

    invoke-interface {v1, v3, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v0, :cond_6

    const-string p0, "onDeviceStateChanged() no plugin"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string v0, "onDeviceStateChanged() "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDeviceStateChanged(I)V

    :goto_4
    return-void
.end method
