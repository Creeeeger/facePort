.class public final Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    iget-object v0, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    iget-object v0, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "pms_settings_refresh_rate_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mIsLowPowerMotionSmoothness:Z

    const-string p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    iget p2, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    iget-boolean p2, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mIsLowPowerMotionSmoothness:Z

    if-eqz p2, :cond_2

    iput v3, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    iget-object p1, p1, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    const-string p1, "HighRefreshRateFragment"

    const-string/jumbo p2, "onChange: change to normal mode"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI$3()V

    return-void
.end method
