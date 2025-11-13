.class public final Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "always_on_display_constants"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public final update(Landroid/net/Uri;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object p1, p1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v0, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_on_display_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, v1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AlwaysOnDisplayPolicy"

    const-string v1, "Bad AOD constants"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "prox_screen_off_delay"

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "prox_cooldown_trigger"

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "prox_cooldown_period"

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "wallpaper_fade_out_duration"

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "wallpaper_visibility_timeout"

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    const v1, 0x10e0136

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->defaultDozeBrightness:I

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    const v1, 0x10e0135

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimBrightness:I

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    const v2, 0x7f030036

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_array"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    iget-object p0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    const v1, 0x7f030037

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    const-string v1, "dimming_scrim_array"

    invoke-virtual {v0, v1, p1}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    :cond_1
    return-void
.end method
