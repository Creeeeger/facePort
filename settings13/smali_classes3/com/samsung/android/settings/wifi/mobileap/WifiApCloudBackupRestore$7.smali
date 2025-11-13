.class Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$7;
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

.field final synthetic val$fapChannel:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;I)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApCloudBackupRestore$7;->val$fapChannel:I

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x1

    .line 487
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
