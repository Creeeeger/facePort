.class public final synthetic Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    check-cast p1, Lcom/android/settings/datausage/CellDataPreference$1;

    iget-object p0, p1, Lcom/android/settings/datausage/CellDataPreference$1;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
