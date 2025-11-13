.class public final Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const-string p0, "mOmaCpObserver.onChange(), selfUpdate="

    const-string v0, "OmaCpUtils"

    invoke-static {p0, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->sActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
