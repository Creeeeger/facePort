.class public final Lcom/android/settings/AirplaneModeEnabler$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onRadioPowerStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    iget-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method
