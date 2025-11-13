.class Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;
.super Ljava/lang/Object;
.source "StorageSDCardEncryptionWarnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 115
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-static {p2}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$4;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
