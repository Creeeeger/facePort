.class public final synthetic Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/MonitoringCertInfoActivity;

.field public final synthetic f$1:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/MonitoringCertInfoActivity;Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/MonitoringCertInfoActivity;

    iput-object p2, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->f$1:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/MonitoringCertInfoActivity;

    iget-object p0, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->f$1:Landroid/app/admin/DevicePolicyManager;

    sget v2, Lcom/android/settings/MonitoringCertInfoActivity;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerNameOnAnyUser()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f142d17

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/MonitoringCertInfoActivity;

    iget-object p0, p0, Lcom/android/settings/MonitoringCertInfoActivity$$ExternalSyntheticLambda0;->f$1:Landroid/app/admin/DevicePolicyManager;

    sget v2, Lcom/android/settings/MonitoringCertInfoActivity;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f142d16

    invoke-virtual {v2, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
