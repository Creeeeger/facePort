.class Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$9;
.super Landroid/util/SparseIntArray;
.source "WifiApEditSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->buildNewSoftApConfiguration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

.field final synthetic val$broadcastChannel:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$9;->val$broadcastChannel:I

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x1

    .line 501
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
