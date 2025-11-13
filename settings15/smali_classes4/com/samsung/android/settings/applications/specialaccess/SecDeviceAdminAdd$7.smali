.class public final Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p1, p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v0, 0x1605a

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p1, p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v0, 0x1605b

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p1, p1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->detailDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$3;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$7;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->toggleMessageEllipsis(Landroid/widget/TextView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
