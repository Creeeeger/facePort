.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "WifiApDialogPreference"

    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    sget p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->$r8$clinit:I

    const-string p2, "Dialog OK button clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    sget p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->$r8$clinit:I

    const-string p2, "Dialog Negative button clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    sget p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;->$r8$clinit:I

    const-string p2, "Dialog Neutral button clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialogPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
