.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WifiApAutoHotspotEnablingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApAutoHotspotEnablingActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnAutoHotspotStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

.field private mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendResult(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->sendResult(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mOnAutoHotspotStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    return-void
.end method

.method private sendResult(I)V
    .locals 3

    .line 100
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_message"

    const-string v2, "TODO MSG"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 108
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 86
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_dummy_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    .line 90
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    .line 91
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mOnAutoHotspotStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->setOnStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotEnablingActivity;->mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState(Z)V

    return-void
.end method
