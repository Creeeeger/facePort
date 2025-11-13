.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeConfigureAndProceedFurther()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->requestStopAutohotspotAdvertisement(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->isClientAcceptedWifiProfileSharing(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_e
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :pswitch_f
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :pswitch_10
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_11
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$msendIntentToAutoHotspotD2DFamilyUpdate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_14
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_15
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_16
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_17
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
