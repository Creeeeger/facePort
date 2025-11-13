.class Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 485
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object p1, p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 486
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v0, 0x1605b

    .line 485
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 488
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 489
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    return-void
.end method
