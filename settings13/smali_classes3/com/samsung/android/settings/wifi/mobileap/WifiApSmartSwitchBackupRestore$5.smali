.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$5;
.super Landroid/util/SparseIntArray;
.source "WifiApSmartSwitchBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->loadWifiApConfig(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;)V
    .locals 1

    .line 1091
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 1092
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
