.class Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;
.super Ljava/lang/Object;
.source "ISehIfaa.java"

# interfaces
.implements Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$skpm_provisioning_cmdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;

    .line 669
    iput-object p1, p0, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;->this$0:Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;)V
    .locals 2
    .param p1, "res"    # I
    .param p2, "out"    # Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;

    .line 672
    iget-object v0, p0, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 673
    iget-object v0, p0, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 674
    iget-object v0, p0, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Lvendor/samsung/hardware/ifaa/V1_0/SehIfaaData;->writeToParcel(Landroid/os/HwParcel;)V

    .line 675
    iget-object v0, p0, Lvendor/samsung/hardware/ifaa/V1_0/ISehIfaa$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 676
    return-void
.end method
