.class public final Lcom/android/systemui/knox/CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

.field public mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field public mChargerConnectionSoundEnabledState:Z

.field public mHardKeyIntentState:Z

.field public mHideNotificationMessages:I

.field public mIsCustomSdkStatusBarHidden:Z

.field public mKnoxCustomDoubleTapState:Z

.field public mKnoxCustomLockScreenHiddenItems:I

.field public mKnoxCustomLockScreenOverrideMode:I

.field public mKnoxCustomQuickPanelButtonUsers:Z

.field public mKnoxCustomQuickPanelButtons:I

.field public mKnoxCustomQuickPanelEditMode:I

.field public mKnoxCustomUnlockSimOnBootState:Z

.field public mQuickPanelItems:Ljava/lang/String;

.field public mQuickPanelUnavailableButtons:Ljava/lang/String;

.field public mStatusBarIconsState:Z

.field public final mStatusBarMode:I

.field public mStatusBarNotificationsState:Z

.field public mStatusBarText:Ljava/lang/String;

.field public mStatusBarTextSize:I

.field public mStatusBarTextStyle:I

.field public mStatusBarTextWidth:I

.field public mUnlockSimPin:Ljava/lang/String;

.field public mVolumePanelEnabledState:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    iput-boolean v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    iput v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarMode:I

    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    iput v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "CustomSdkMonitor state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-mKnoxCustomLockScreenHiddenItems="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mKnoxCustomLockScreenOverrideMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mKnoxCustomUnlockSimOnBootState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mUnlockSimPin="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-mKnoxCustomQuickPanelButtons="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mKnoxCustomQuickPanelButtonUsers="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mKnoxCustomQuickPanelEditMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mQuickPanelItems="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-mQuickPanelUnavailableButtons="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-mKnoxCustomDoubleTapState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mStatusBarText="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "-mStatusBarMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarMode:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mStatusBarTextStyle="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mStatusBarTextSize="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mStatusBarTextWidth="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mStatusBarIconsState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    if-eqz p2, :cond_0

    const-string p2, "-mBatteryLevelColourItem="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "-mBatteryLevelColourItem=null"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string p2, "-mHideNotificationMessages="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "-mStatusBarNotificationsState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mChargerConnectionSoundEnabledState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mVolumePanelEnabledState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mIsCustomSdkStatusBarHidden="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "-mHardKeyIntentState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x139a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final setChargerConnectionSoundEnabledState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    :cond_0
    return-void
.end method

.method public final setHardKeyIntentState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHardKeyIntentState:Z

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v1, 0x13a3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final setHideNotificationMessages(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    :cond_0
    return-void
.end method

.method public final setLockScreenHiddenItems(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x1392

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setLockScreenOverrideMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x1393

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setQuickPanelButtonUsers(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x139f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setQuickPanelButtons(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x1394

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setQuickPanelEditMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x1395

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setQuickPanelItems(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x1396

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final setQuickPanelUnavailableButtons(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mQuickPanelUnavailableButtons:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x13a4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return-void
.end method

.method public final setStatusBarHidden(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x139b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setStatusBarIconsState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 v0, 0x1399

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setStatusBarNotificationsState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarNotificationsState:Z

    :cond_0
    return-void
.end method

.method public final setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    if-eq v0, p4, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextStyle:I

    iput p3, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextSize:I

    iput p4, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarTextWidth:I

    iget-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 p2, 0x1397

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public final setUnlockSimOnBootState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    :cond_0
    return-void
.end method

.method public final setUnlockSimPin(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final setVolumePanelEnabledState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    :cond_0
    return-void
.end method
