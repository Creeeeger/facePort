.class public final Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;


# instance fields
.field public final audioPlaybackCallback:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;

.field public final context:Landroid/content/Context;

.field public final enableList:Ljava/util/Set;

.field public lastStartedPackageName:Ljava/lang/String;

.field public lastStartedUid:I

.field public final settingObserver:Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedUid:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->enableList:Ljava/util/Set;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->audioPlaybackCallback:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$settingObserver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$settingObserver$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;)V

    const-string v2, "audio_soundcraft_app_setting"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->settingObserver:Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;

    const-string p1, "SoundCraft.PlayingAudioConditionHandler"

    const-string v0, "init"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->onCreate()V

    return-void
.end method


# virtual methods
.method public final isBudsPluginCanAction()Z
    .locals 3

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "buds_plugin_connection_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "buds_enable"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public final onCreate()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->settingObserver:Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->systemSettingName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register : settingName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundCraft.SystemBooleanSettingObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->updateValue(Z)V

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->systemSettingName:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread;->thread$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->audioPlaybackCallback:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/audio/soundcraft/utils/SystemServiceExtension;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedUid:I

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/PackageExt;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedUid:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate : lastStartedUid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", lastStartedPackageName="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoundCraft.PlayingAudioConditionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final uidPackageName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/PackageExt;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
