.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiApLiteFamilySharingPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 6

    .line 33
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Family Sharing onStateChanged() - resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    sget p1, Lcom/android/settings/R$string;->smart_tethering_internet_not_available:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    sget p1, Lcom/android/settings/R$string;->wifi_ap_not_signed_in:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_3
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    sget p1, Lcom/android/settings/R$string;->smart_tethering_nearby_can_not_available:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 59
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_invite_your_family_member:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyMemberList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 65
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$plurals;->wifi_ap_n_members:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isThereAnyNewInvitation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->separator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_new_invitations:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->mThisPreferenceScreen:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
