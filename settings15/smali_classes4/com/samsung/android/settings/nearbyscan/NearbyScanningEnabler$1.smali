.class public final Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object p1, p1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningUtil;->getDBInt(Landroid/content/ContentResolver;)I

    move-result p1

    const-string v0, "mNearbyScanningObserver DB value : "

    const-string v1, "NearbyScanningEnabler"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p0, :cond_3

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method
