.class public final synthetic Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/android/settings/security/LockUnificationPreferenceController$1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController$1;->updatePreference()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricRemoveWarningDialog;->mCallback:Lcom/android/settings/security/LockUnificationPreferenceController$1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController$1;->updatePreference()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
