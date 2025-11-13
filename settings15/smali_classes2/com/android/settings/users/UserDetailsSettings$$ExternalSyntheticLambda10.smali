.class public final synthetic Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/users/UserDetailsSettings;

.field public final synthetic f$1:Lcom/android/settingslib/utils/CustomDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserDetailsSettings;Lcom/android/settingslib/utils/CustomDialogHelper;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->f$0:Lcom/android/settings/users/UserDetailsSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->f$1:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->f$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->f$1:Lcom/android/settingslib/utils/CustomDialogHelper;

    sget v0, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateUserAdminStatus(Z)V

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->f$0:Lcom/android/settings/users/UserDetailsSettings;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;->f$1:Lcom/android/settingslib/utils/CustomDialogHelper;

    sget v0, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateUserAdminStatus(Z)V

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
