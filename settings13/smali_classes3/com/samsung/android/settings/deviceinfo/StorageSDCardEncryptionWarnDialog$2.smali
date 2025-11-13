.class Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$2;
.super Ljava/lang/Object;
.source "StorageSDCardEncryptionWarnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->showProceedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$2;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$2;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
