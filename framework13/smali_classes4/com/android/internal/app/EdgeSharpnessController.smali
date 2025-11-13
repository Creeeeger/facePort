.class public final Lcom/android/internal/app/EdgeSharpnessController;
.super Ljava/lang/Object;
.source "EdgeSharpnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/EdgeSharpnessController$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "EdgeSharpnessController"


# instance fields
.field private blacklist mCallback:Lcom/android/internal/app/EdgeSharpnessController$Callback;

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monSettingChanged(Lcom/android/internal/app/EdgeSharpnessController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/EdgeSharpnessController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/EdgeSharpnessController;-><init>(Landroid/content/Context;I)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContext:Landroid/content/Context;

    .line 71
    iput p2, p0, Lcom/android/internal/app/EdgeSharpnessController;->mUserId:I

    .line 73
    new-instance v0, Lcom/android/internal/app/EdgeSharpnessController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/EdgeSharpnessController$1;-><init>(Lcom/android/internal/app/EdgeSharpnessController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContentObserver:Landroid/database/ContentObserver;

    .line 84
    return-void
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static blacklist isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onSettingChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSettingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeSharpnessController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mCallback:Lcom/android/internal/app/EdgeSharpnessController$Callback;

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "edge_sharpness_display_activated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "edge_sharpness_display_intensity_level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mCallback:Lcom/android/internal/app/EdgeSharpnessController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/EdgeSharpnessController;->getEdgeSharpnessIntensityLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/EdgeSharpnessController$Callback;->onEdgeSharpnessIntensityLevelChanged(I)V

    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mCallback:Lcom/android/internal/app/EdgeSharpnessController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/EdgeSharpnessController;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/EdgeSharpnessController$Callback;->onActivated(Z)V

    .line 163
    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x685b8405 -> :sswitch_1
        0x1602ff94 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getDefaultIntensityLevel()I
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEdgeSharpnessIntensityLevel()I
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/EdgeSharpnessController;->getDefaultIntensityLevel()I

    move-result v1

    iget v2, p0, Lcom/android/internal/app/EdgeSharpnessController;->mUserId:I

    .line 112
    const-string v3, "edge_sharpness_display_intensity_level"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist getMaximumIntensityLevel()I
    .locals 1

    .line 138
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getMinimumIntensityLevel()I
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isActivated()Z
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/EdgeSharpnessController;->mUserId:I

    const-string v2, "edge_sharpness_display_activated"

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
    .param p1, "activated"    # Z

    .line 101
    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/app/EdgeSharpnessController;->getDefaultIntensityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/EdgeSharpnessController;->setEdgeSharpnessIntensityLevel(I)Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/android/internal/app/EdgeSharpnessController;->mUserId:I

    .line 104
    const-string v2, "edge_sharpness_display_activated"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setEdgeSharpnessIntensityLevel(I)Z
    .locals 3
    .param p1, "level"    # I

    .line 123
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/EdgeSharpnessController;->mUserId:I

    const-string v2, "edge_sharpness_display_intensity_level"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setListener(Lcom/android/internal/app/EdgeSharpnessController$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/internal/app/EdgeSharpnessController$Callback;

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/EdgeSharpnessController;->mCallback:Lcom/android/internal/app/EdgeSharpnessController$Callback;

    .line 170
    .local v0, "oldCallback":Lcom/android/internal/app/EdgeSharpnessController$Callback;
    if-eq v0, p1, :cond_1

    .line 171
    iput-object p1, p0, Lcom/android/internal/app/EdgeSharpnessController;->mCallback:Lcom/android/internal/app/EdgeSharpnessController$Callback;

    .line 173
    if-nez p1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 176
    :cond_0
    if-nez v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 179
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "edge_sharpness_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/EdgeSharpnessController;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 181
    const-string v2, "edge_sharpness_display_intensity_level"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/EdgeSharpnessController;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/internal/app/EdgeSharpnessController;->mUserId:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 185
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void
.end method
