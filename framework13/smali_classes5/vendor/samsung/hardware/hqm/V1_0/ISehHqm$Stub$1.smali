.class Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub$1;
.super Ljava/lang/Object;
.source "ISehHqm.java"

# interfaces
.implements Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$readHqmFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub;

    .line 609
    iput-object p1, p0, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub$1;->this$0:Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "data"    # Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    iget-object v0, p0, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 614
    iget-object v0, p0, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lvendor/samsung/hardware/hqm/V1_0/ISehHqm$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 616
    return-void
.end method
