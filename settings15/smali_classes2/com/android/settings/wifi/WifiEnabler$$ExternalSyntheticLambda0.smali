.class public final synthetic Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/WifiEnabler;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiEnabler;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/WifiEnabler;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/WifiEnabler;

    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v1, v1, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enabler changed - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    const p0, 0x7f1436c5

    invoke-virtual {v1, p0}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/settings/wifi/WifiSettings;->mIgnoreUpdateOnDisabling:Z

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    const p0, 0x7f1436d2

    invoke-virtual {v1, p0}, Lcom/android/settings/wifi/WifiSettings;->setEmptyView(I)V

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mIgnoreUpdateOnDisabling:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/WifiEnabler;

    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, v1, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_1

    xor-int/2addr p0, v0

    invoke-virtual {v1, p0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked$2(Z)V

    invoke-virtual {v1, v0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarEnabled(ZZ)V

    iget-object v2, v1, Lcom/android/settings/wifi/WifiEnabler;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/wifi/WifiEnabler;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0, v0}, Lcom/android/settings/wifi/WifiEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiEnabler;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
