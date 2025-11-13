.class public final Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->update$3$1()V

    return-void
.end method
