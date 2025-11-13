.class public final Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x1

    iget p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p2, p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object p1, p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    sget v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->$r8$clinit:I

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rampart_blocked_device_admin_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p2, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$5;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->addAndFinish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
