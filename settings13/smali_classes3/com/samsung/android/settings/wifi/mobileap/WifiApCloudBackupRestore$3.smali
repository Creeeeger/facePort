.class Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$3;
.super Landroid/util/SparseIntArray;
.source "WifiApCloudBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;->restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;)V
    .locals 1

    .line 465
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x2

    const/16 v0, 0x95

    .line 466
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
