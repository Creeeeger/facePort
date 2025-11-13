.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$9;
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

.field final synthetic val$finalApChannel1:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;I)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$9;->val$finalApChannel1:I

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x1

    .line 1114
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
