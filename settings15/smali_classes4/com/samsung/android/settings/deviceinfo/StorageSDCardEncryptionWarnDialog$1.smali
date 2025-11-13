.class public final Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    iget-object p2, p2, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_1
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;

    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    iget-object v0, p2, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mContext:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    iget-object p2, p2, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog$1;->this$0:Lcom/samsung/android/settings/deviceinfo/StorageSDCardEncryptionWarnDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
