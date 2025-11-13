.class public final synthetic Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onUsbConnectionChanged(ZJIIZ)V
    .locals 6

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mControllers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v0, p6

    check-cast v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v1, "controller.refresh : connected : "

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " functions : "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " powerRole : "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dataRole : "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v1, "UsbDetailsFragment"

    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->refresh(ZJII)V

    goto :goto_0

    :cond_0
    return-void
.end method
