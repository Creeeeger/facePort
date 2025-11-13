.class Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub$1;
.super Ljava/lang/Object;
.source "ISehAuthenticationFramework.java"

# interfaces
.implements Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$executeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub;

    .line 630
    iput-object p1, p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub$1;->this$0:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ZLjava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 633
    .local p2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 634
    iget-object v0, p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 635
    iget-object v0, p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 636
    iget-object v0, p0, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 637
    return-void
.end method
