.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;
.super Ljava/lang/Object;
.source "WifiApFamilySharingSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 145
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edit Family Button`s onClick() - Triggered, mEditYourFamilyButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmEditYourFamilyButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->isFamilySharingServiceRegisteredOn(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmEditYourFamilyButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fputmEditYourFamilyButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;Z)V

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->launchEditGroupActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 151
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Family service registered check condition failed."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object p0

    const/16 p1, 0x384

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->launchFamilyServiceRegisterActivityForResult(Lcom/android/settings/SettingsPreferenceFragment;I)V

    :cond_2
    :goto_1
    return v0
.end method
