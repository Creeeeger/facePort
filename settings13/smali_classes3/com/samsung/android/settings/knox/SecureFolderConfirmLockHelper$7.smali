.class Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$7;
.super Ljava/lang/Object;
.source "SecureFolderConfirmLockHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showUninstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$7;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1088
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
