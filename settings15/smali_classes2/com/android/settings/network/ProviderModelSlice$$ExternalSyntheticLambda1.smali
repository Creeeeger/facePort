.class public final synthetic Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/ProviderModelSlice;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ProviderModelSlice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/ProviderModelSlice;

    iput p2, p0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/ProviderModelSlice;

    iget p0, p0, Lcom/android/settings/network/ProviderModelSlice$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "setMobileDataEnabled: false"

    invoke-static {p2}, Lcom/android/settings/network/ProviderModelSlice;->log$6(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(ILandroid/content/Context;ZZ)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/network/ProviderModelSlice;->doCarrierNetworkAction(ZZI)V

    iget-object p0, p1, Lcom/android/settings/network/ProviderModelSlice;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PrefHasTurnedOffMobileData"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
