.class public final Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mShowWarningDialog:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->mShowRemoveDialog:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$4;->this$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
