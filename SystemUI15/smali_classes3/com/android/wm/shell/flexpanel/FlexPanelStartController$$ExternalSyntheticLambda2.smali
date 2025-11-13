.class public final synthetic Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsFolded:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_1
    iput-boolean v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsFolded:Z

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTableMode:Z

    if-eq v0, p1, :cond_3

    const-string v0, "onFoldStateTableModeChanged: isTableMode="

    const-string v2, "FlexPanelStartController"

    invoke-static {v0, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mLastFullscreenPackage:Ljava/lang/String;

    :cond_2
    iput-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTableMode:Z

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    :cond_3
    return-void
.end method
