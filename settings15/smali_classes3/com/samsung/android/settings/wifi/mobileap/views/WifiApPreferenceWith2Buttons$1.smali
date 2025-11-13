.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "WifiApPreferenceWith2Buttons"

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mClickListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->INTENT_FILTER:Landroid/content/IntentFilter;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showing dialog for invitation with id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->val$invitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiApInvitationList"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mClickedInvitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Second button clicked for key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->mClickListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApInvitationList$2;->val$invitationConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApAutoHotspotInvitationConfig;->getGroupId()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->DBG:Z

    const-string v2, "Declining Invitation for id "

    const-string v3, "WifiApSmartTetheringApkUtils"

    invoke-static {v2, v0, v3}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->startSmartTetheringApk(Landroid/content/Context;ILjava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "First button clicked for key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreferenceWith2Buttons;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
