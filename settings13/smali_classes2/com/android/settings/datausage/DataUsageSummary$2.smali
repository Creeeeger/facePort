.class Lcom/android/settings/datausage/DataUsageSummary$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "DataUsageSummary"

    const-string v1, "Vpn is connected."

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fputmIsVPNConnected(Lcom/android/settings/datausage/DataUsageSummary;Z)V

    .line 239
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "DataUsageSummary"

    const-string v1, "Vpn is disconnected."

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$fputmIsVPNConnected(Lcom/android/settings/datausage/DataUsageSummary;Z)V

    .line 246
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method
