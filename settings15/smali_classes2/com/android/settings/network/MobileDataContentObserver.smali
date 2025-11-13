.class public final Lcom/android/settings/network/MobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;


# direct methods
.method public static getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 3

    const-string v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/settings/network/MobileDataContentObserver;->mListener:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->$r8$lambda$xOOY7ghYE0QJlhiayspoV-xPThs(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)V

    :cond_0
    return-void
.end method
