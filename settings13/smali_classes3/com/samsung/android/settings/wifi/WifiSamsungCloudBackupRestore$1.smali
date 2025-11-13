.class Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;
.super Ljava/lang/Object;
.source "WifiSamsungCloudBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore;->backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore;

.field final synthetic val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSamsungCloudBackupRestore$1;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->onProgress(JJ)V

    const-string p0, "WifiSamsungCloudBackupRestore"

    const-string p1, "transferred 1"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
