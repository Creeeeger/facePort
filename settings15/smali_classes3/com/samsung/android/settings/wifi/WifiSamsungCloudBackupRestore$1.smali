.class public final Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transferred(JJ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->onProgress(JJ)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->onProgress(JJ)V

    const-string p0, "WifiSamsungCloudBackupRestore"

    const-string/jumbo p1, "transferred 1"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
