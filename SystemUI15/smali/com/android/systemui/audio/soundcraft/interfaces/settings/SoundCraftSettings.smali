.class public final Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public budsPluginPackageName:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public isAppSettingEnabled:Z

.field public isBudsActive:Z

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->isAppSettingEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->isBudsActive:Z

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    const-string v2, "[isAppSettingEnabled="

    const-string v3, ", isBudsActive="

    const-string v4, ", budsPluginPackageName="

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update()V
    .locals 4

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_soundcraft_app_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->isAppSettingEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "buds_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget v0, v0, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->device:I

    if-eqz v0, :cond_2

    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->isBudsActive:Z

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "buds_plugin_package_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    return-void
.end method
