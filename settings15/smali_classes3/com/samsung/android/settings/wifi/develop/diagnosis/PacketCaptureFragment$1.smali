.class public final Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->pktCaptureButtonState:Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "mgmtframe"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mgmtCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "dataframe"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->dataCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "ctrlframe"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->ctrlCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mgmtCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-boolean p2, p2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->dataCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->ctrlCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x4

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->pktCaptureButtonState:Z

    const-string v1, "Failed due to unknown errors"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/wifi/SemWifiManager;->startCapture(I)I

    move-result p2

    if-eqz p2, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "Capture is not started as device is connected to MLO AP"

    goto :goto_0

    :cond_3
    const-string v1, "Capture is not started as Wifi is not turned on or hotspot is turned on"

    goto :goto_0

    :cond_4
    const-string v1, "Failed as the capture is already running"

    goto :goto_0

    :cond_5
    const-string v1, "Failed due to unsupported command.So capture not started"

    goto :goto_0

    :cond_6
    const-string v1, "Failed as file system storage is not available.So capture not started"

    goto :goto_0

    :cond_7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "Packet Capture is in progress"

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->stopCapture()I

    move-result p2

    if-eqz p2, :cond_b

    if-eq p2, v3, :cond_a

    if-eq p2, v2, :cond_9

    goto :goto_1

    :cond_9
    const-string v1, "Failed to stop packet capture as input command is not supported"

    goto :goto_1

    :cond_a
    const-string/jumbo v1, "there is no running capture currently"

    goto :goto_1

    :cond_b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "Successfully stopped the capture"

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
