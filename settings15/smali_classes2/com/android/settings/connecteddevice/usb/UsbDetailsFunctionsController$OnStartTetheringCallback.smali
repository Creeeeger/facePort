.class final Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    return-void
.end method


# virtual methods
.method public final onTetheringFailed(I)V
    .locals 2

    const-string v0, "onTetheringFailed() error : "

    const-string v1, "UsbDetailsCtrlFunction"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    iget-object p0, p1, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    return-void
.end method
