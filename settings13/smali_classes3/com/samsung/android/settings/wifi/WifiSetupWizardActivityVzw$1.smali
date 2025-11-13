.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;
.super Landroid/os/Handler;
.source "WifiSetupWizardActivityVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 122
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->-$$Nest$mshowAlertDialog(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
