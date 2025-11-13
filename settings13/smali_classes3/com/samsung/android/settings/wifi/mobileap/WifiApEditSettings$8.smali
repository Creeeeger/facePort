.class Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$8;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 1

    .line 489
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$8;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x2

    const/16 v0, 0x95

    .line 490
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
