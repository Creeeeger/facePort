.class Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;
.super Ljava/lang/Object;
.source "ISehThermal.java"

# interfaces
.implements Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$sehGetTypeTemperaturesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;

    .line 981
    iput-object p1, p0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;->this$0:Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/thermal/V1_0/ThermalStatus;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;",
            ">;)V"
        }
    .end annotation

    .line 984
    .local p2, "temperatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;>;"
    iget-object v0, p0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 985
    iget-object v0, p0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 986
    iget-object v0, p0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 987
    iget-object v0, p0, Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 988
    return-void
.end method
