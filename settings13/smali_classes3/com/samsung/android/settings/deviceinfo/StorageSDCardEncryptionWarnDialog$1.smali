.class Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;
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

    .line 92
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 94
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$UnmountTask;

    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-static {p2}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->-$$Nest$fgetmVolume(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
