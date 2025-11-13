.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;
.super Ljava/lang/Object;
.source "WifiApInvitationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 234
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OK clicked for id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmClickedInvitationConfig(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isCurrentUserIsGroupOwner(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyMemberList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmClickedInvitationConfig(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xdc

    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->groupDelegation(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->-$$Nest$fgetmClickedInvitationConfig(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->acceptInvitation(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
