.class public final Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;

    iget-object v0, v0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;

    iget-object p2, p2, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->updateSettingMenuEnabled(Z)V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method
