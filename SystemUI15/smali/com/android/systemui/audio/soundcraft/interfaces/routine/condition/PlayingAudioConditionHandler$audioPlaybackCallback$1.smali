.class public final Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 8

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->semGetPlayerState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    const/4 p1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration;->semGetClientUid()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/PackageExt;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iget-object v3, v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedPackageName:Ljava/lang/String;

    iget v2, v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedUid:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "onPlaybackConfigChanged : lastStartedPackageName="

    const-string v6, ", lastStartedUid="

    const-string v7, ", newStartedUid="

    invoke-static {v2, v5, v3, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newStartPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundCraft.PlayingAudioConditionHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iget v4, v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedUid:I

    if-ne v4, v0, :cond_4

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedPackageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    if-eq v0, p1, :cond_7

    :cond_4
    if-eq v0, p1, :cond_6

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "dolbygametest"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    goto :goto_4

    :goto_3
    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    const-string p1, "onPlaybackConfigChanged : notifyChanged"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$notifyChanged$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$notifyChanged$1;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread$sam$java_lang_Runnable$0;

    invoke-direct {v2, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/RoutineHandlerThread$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler$audioPlaybackCallback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    iput v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedUid:I

    sget-object p1, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/PackageExt;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/systemui/audio/soundcraft/utils/PackageExt;->getPackageNameForUid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedPackageName:Ljava/lang/String;

    :cond_7
    :goto_4
    return-void
.end method
