.class Lcom/android/settings/network/telephony/SignalStrengthListener$SignalStrengthTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/telephony/SignalStrengthListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/SignalStrengthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/SignalStrengthListener$SignalStrengthTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/SignalStrengthListener;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/SignalStrengthListener$SignalStrengthTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/SignalStrengthListener;

    iget-object p0, p0, Lcom/android/settings/network/telephony/SignalStrengthListener;->mCallback:Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/SignalStrengthListener$Callback;->onSignalStrengthChanged()V

    return-void
.end method
