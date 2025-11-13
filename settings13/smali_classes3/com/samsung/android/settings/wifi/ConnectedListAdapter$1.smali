.class Lcom/samsung/android/settings/wifi/ConnectedListAdapter$1;
.super Ljava/lang/Object;
.source "ConnectedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->updateTencentSecuritySummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$1;->this$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 347
    invoke-static {}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 349
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$1;->this$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->startWifiSecurityDetection(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
