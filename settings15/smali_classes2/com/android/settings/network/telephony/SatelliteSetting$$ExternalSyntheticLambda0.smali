.class public final synthetic Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/SatelliteSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/SatelliteSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/SatelliteSetting;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/SatelliteSetting$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/SatelliteSetting;

    iget p1, p0, Lcom/android/settings/network/telephony/SatelliteSetting;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/SatelliteSetting;->readSatelliteMoreInfoString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
