.class public final synthetic Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/utils/CustomDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/utils/CustomDialogHelper;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;->f$0:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;->f$0:Lcom/android/settingslib/utils/CustomDialogHelper;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    sget p1, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
