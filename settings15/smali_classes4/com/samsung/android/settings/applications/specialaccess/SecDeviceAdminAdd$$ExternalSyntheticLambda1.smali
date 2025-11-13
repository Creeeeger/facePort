.class public final synthetic Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;Ljava/lang/CharSequence;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iput-object p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iput-object p2, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    sget v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->$r8$clinit:I

    const v1, 0x7f140c73

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    sget v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->$r8$clinit:I

    const v1, 0x7f140c72

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;

    iget-object p0, p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget v1, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->$r8$clinit:I

    const v1, 0x7f140c74

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
