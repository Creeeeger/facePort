.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ALL_SOUND_MUTE_URI:Landroid/net/Uri;

.field public final ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

.field public final ZEN_MODE_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    const-string p1, "all_sound_off"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ALL_SOUND_MUTE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    move-result v1

    or-int/2addr p1, v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ALL_SOUND_MUTE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p2, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "all_sound_off"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-boolean v2, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAllSoundMute:Z

    if-eq v2, v0, :cond_3

    iput-boolean v0, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAllSoundMute:Z

    move p1, v1

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    sget-object p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateVolumeBar()V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_4
    return-void
.end method
