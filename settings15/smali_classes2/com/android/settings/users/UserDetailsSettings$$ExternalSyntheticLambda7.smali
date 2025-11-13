.class public final synthetic Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    const v0, 0x7f06053c

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    :pswitch_0
    sget v2, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    :pswitch_1
    sget v2, Lcom/android/settings/users/UserDetailsSettings;->$r8$clinit:I

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
