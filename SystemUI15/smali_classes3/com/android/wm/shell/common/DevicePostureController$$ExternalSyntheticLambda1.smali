.class public final synthetic Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DevicePostureController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DevicePostureController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/DevicePostureController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/DevicePostureController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/DevicePostureController;

    check-cast p1, Lcom/android/wm/shell/common/DevicePostureController$OnDevicePostureChangedListener;

    iget p0, p0, Lcom/android/wm/shell/common/DevicePostureController;->mDevicePosture:I

    check-cast p1, Lcom/android/wm/shell/common/TabletopModeController;

    iget v0, p1, Lcom/android/wm/shell/common/TabletopModeController;->mDevicePosture:I

    if-eq v0, p0, :cond_0

    iget v0, p1, Lcom/android/wm/shell/common/TabletopModeController;->mDisplayRotation:I

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/common/TabletopModeController;->onDevicePostureOrDisplayRotationChanged(II)V

    :cond_0
    return-void
.end method
