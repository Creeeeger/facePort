.class public interface abstract Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 0

    return-void
.end method

.method public onUserSetupChanged()V
    .locals 0

    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    return-void
.end method
