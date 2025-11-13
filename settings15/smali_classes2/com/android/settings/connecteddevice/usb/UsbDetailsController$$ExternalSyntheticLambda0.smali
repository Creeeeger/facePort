.class public final synthetic Lcom/android/settings/connecteddevice/usb/UsbDetailsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUserAuthenticated:Z

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
