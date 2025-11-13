.class public final Lcom/android/settings/wfd/WifiDisplaySettings$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/settings/wfd/WifiDisplaySettings$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$1;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->resumeWifiDisplay()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->this$1:Lcom/android/settings/wfd/WifiDisplaySettings$1;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
