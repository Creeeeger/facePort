.class Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;
.super Ljava/lang/Object;
.source "ISehRadioIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;

    .line 1495
    iput-object p1, p0, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;->this$0:Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILvendor/samsung/hardware/radio/V2_0/SehPacketUsage;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "usage"    # Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;

    .line 1498
    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1499
    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1500
    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1501
    iget-object v0, p0, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1502
    return-void
.end method
