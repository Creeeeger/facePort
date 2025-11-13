.class Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneCallStateTelephonyCallback"
.end annotation


# instance fields
.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 2

    const-string v0, "onCallStateChanged:"

    const-string v1, "EnabledNetworkMode"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;I)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->-$$Nest$fgetmBuilder(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->-$$Nest$mupdatePreference(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    return-void
.end method
