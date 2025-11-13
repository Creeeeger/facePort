.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$75;
.super Landroid/util/SparseIntArray;
.source "WifiApWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$mChannel:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$75;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$75;->val$mChannel:I

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x1

    .line 1761
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
