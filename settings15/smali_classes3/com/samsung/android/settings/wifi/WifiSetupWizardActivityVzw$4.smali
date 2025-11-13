.class public final Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    return-void
.end method


# virtual methods
.method public final onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    const-string v0, "WifiSetupWizardActivityVzw"

    const-string v1, "onItemClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method
