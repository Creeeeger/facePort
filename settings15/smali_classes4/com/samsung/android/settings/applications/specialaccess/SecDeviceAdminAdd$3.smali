.class public final Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1422e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mLayoutInflaternflater:Landroid/view/LayoutInflater;

    const v3, 0x1090049

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v4, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
