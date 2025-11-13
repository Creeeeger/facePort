.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginKnoxStateMonitor;


# instance fields
.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method public final isLockscreenAllDisabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/16 v0, 0x3ff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLockscreenBatteryInfoEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLockscreenClockEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final isLockscreenDateEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLockscreenOwnerInfoEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isStatusBarHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    move-result p0

    return p0
.end method

.method public final onUpdateLockscreenHiddenItems()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onUpdateLockscreenHiddenItems()V

    :cond_0
    return-void
.end method
