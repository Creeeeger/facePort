.class Lcom/samsung/android/settings/knox/SecureFolderLockedView$8;
.super Ljava/lang/Object;
.source "SecureFolderLockedView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/SecureFolderLockedView;->showUninstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$8;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 495
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$8;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 496
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$8;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fputmAlertDialog(Lcom/samsung/android/settings/knox/SecureFolderLockedView;Landroid/app/AlertDialog;)V

    return-void
.end method
