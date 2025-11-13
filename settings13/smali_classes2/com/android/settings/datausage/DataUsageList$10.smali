.class Lcom/android/settings/datausage/DataUsageList$10;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 1233
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$10;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1236
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$10;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1237
    sget v0, Lcom/android/settings/R$string;->reset_received_data:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1238
    sget v0, Lcom/android/settings/R$string;->reset_received_data_received_body:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1239
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$10$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$10$1;-><init>(Lcom/android/settings/datausage/DataUsageList$10;)V

    const p0, 0x104000a

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 v0, 0x0

    .line 1245
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1246
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
