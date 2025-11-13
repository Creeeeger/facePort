.class public final synthetic Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/storage/LeaseInfoListView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/storage/LeaseInfoListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mContext:Lcom/android/settings/development/storage/LeaseInfoListView;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140c20

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/storage/LeaseInfoListView$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/development/storage/LeaseInfoListView;)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
