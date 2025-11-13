.class public final Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/DataUsageList;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f141ee2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f141ee3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;-><init>(Lcom/android/settings/datausage/DataUsageList;I)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f142f42

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f141ee4

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageList$mAlertTotalSentListener$1$1;-><init>(Lcom/android/settings/datausage/DataUsageList;I)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
