.class public final Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iput p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;->val$userId:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;->val$userId:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->removeUser(I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$1;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
