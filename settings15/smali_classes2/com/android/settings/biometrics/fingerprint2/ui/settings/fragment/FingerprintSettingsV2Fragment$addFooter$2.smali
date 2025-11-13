.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic $admin:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$admin:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$admin:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$addFooter$2;->$admin:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
