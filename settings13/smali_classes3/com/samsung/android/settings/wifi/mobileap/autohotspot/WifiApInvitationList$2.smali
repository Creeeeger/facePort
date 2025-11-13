.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;
.super Ljava/lang/Object;
.source "WifiApInvitationList.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$WifiApPreferenceWith2ButtonsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->updateInvitationPreferenceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

.field final synthetic val$invitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->val$invitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstButtonClicked(Ljava/lang/Object;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->val$invitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->declineInvitation(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceClicked(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSecondButtonClicked(Ljava/lang/Object;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->val$invitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$mshowDialogForInvitationClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;)V

    return-void
.end method
