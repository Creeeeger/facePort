.class public final Lcom/android/internal/app/RgbGainController;
.super Ljava/lang/Object;
.source "RgbGainController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/RgbGainController$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "RgbGainController"


# instance fields
.field private blacklist mCallback:Lcom/android/internal/app/RgbGainController$Callback;

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monSettingChanged(Lcom/android/internal/app/RgbGainController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/RgbGainController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RgbGainController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    new-instance v0, Lcom/android/internal/app/RgbGainController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/RgbGainController$1;-><init>(Lcom/android/internal/app/RgbGainController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/RgbGainController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static blacklist isAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onSettingChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSettingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RgbGainController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "rgb_gain_display_blue_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "rgb_gain_display_red_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "rgb_gain_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "rgb_gain_display_green_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getRgbGainBlueLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onRgbGainBlueLevelChanged(I)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getRgbGainGreenLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onRgbGainGreenLevelChanged(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getRgbGainRedLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onRgbGainRedLevelChanged(I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/RgbGainController$Callback;->onActivated(Z)V

    nop

    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d6ece43 -> :sswitch_3
        0xe99d586 -> :sswitch_2
        0x56e8520b -> :sswitch_1
        0x5cef6e4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getDefaultRgbGainLevel()I
    .locals 1

    const/16 v0, 0x7f

    return v0
.end method

.method public blacklist getMaximumRgbGainLevel()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public blacklist getMinimumRgbGainLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRgbGainBlueLevel()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_blue_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v1, "RgbGainController"

    const-string v2, "Using default value for setting: rgb_gain_display_blue_level"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    :cond_0
    return v0
.end method

.method public blacklist getRgbGainGreenLevel()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_green_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v1, "RgbGainController"

    const-string v2, "Using default value for setting: rgb_gain_display_green_level"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    :cond_0
    return v0
.end method

.method public blacklist getRgbGainRedLevel()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_red_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v1, "RgbGainController"

    const-string v2, "Using default value for setting: rgb_gain_display_red_level"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    :cond_0
    return v0
.end method

.method public blacklist isActivated()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_activated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method public blacklist setActivated(Z)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RgbGainController;->setRgbGainRedLevel(I)Z

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RgbGainController;->setRgbGainGreenLevel(I)Z

    invoke-virtual {p0}, Lcom/android/internal/app/RgbGainController;->getDefaultRgbGainLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RgbGainController;->setRgbGainBlueLevel(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const-string/jumbo v2, "rgb_gain_display_activated"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setListener(Lcom/android/internal/app/RgbGainController$Callback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/android/internal/app/RgbGainController;->mCallback:Lcom/android/internal/app/RgbGainController$Callback;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "rgb_gain_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "rgb_gain_display_red_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "rgb_gain_display_green_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "rgb_gain_display_blue_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/RgbGainController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setRgbGainBlueLevel(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rgb_gain_display_blue_level"

    iget v2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setRgbGainGreenLevel(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rgb_gain_display_green_level"

    iget v2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setRgbGainRedLevel(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/RgbGainController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rgb_gain_display_red_level"

    iget v2, p0, Lcom/android/internal/app/RgbGainController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
