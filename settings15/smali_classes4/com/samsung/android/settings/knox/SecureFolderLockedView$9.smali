.class public final Lcom/samsung/android/settings/knox/SecureFolderLockedView$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$9;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$9;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$9;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method
