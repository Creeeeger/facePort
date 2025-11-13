.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    const-string/jumbo v1, "rejected"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->insertSaLoggingForPasswordShare(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "WifiConnectPrefController"

    const-string v3, "Stop share timer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setProfileSharingMode(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->finishActivity$2()V

    return-void

    :pswitch_1
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->save(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
