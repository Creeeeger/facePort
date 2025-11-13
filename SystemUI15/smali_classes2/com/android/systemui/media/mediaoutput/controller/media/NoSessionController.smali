.class public final Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;
.super Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final colorSchemeLoader$delegate:Lkotlin/Lazy;

.field public mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

.field public final packageName$delegate:Lkotlin/Lazy;

.field public final semSoundAssistantManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->audioManager:Landroid/media/AudioManager;

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$semSoundAssistantManager$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$semSoundAssistantManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->semSoundAssistantManager$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$colorSchemeLoader$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$colorSchemeLoader$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->colorSchemeLoader$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$packageName$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$packageName$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->packageName$delegate:Lkotlin/Lazy;

    const-string p1, "NoSessionController"

    const-string p2, "init()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->_mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->update$1()V

    return-void
.end method


# virtual methods
.method public final execute(JJ)V
    .locals 0

    new-instance p3, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p0, p4}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;-><init>(JLcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, p4, p4, p3, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->getRecentPlayPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/systemui/media/mediaoutput/ext/PackageManagerExtKt;->getAppLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->context:Landroid/content/Context;

    const v0, 0x7f130cf2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->packageName$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getRecentPlayPackageName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->semSoundAssistantManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    const-string v1, "media_button_package"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "media_button_receiver"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x6

    const-string v3, "/"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, v4, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    const-string p0, "recent packageName = "

    const-string v3, "NoSessionController"

    invoke-static {p0, v0, v3}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/media/SessionController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->BLUETOOTH_MEDIA_SESSION_PACKAGE:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->MEDIA_SESSION_BLOCKED_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->RECENT_BLOCKED_LIST:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    move-object v2, v0

    :cond_6
    if-eqz v2, :cond_7

    move-object v1, v2

    :cond_7
    return-object v1
.end method

.method public final declared-synchronized update(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final update$1()V
    .locals 11

    const-string v0, "NoSessionController"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->getRecentPlayPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    iget-object v3, v2, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v9

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v6, :cond_1

    move-object v3, p0

    goto :goto_1

    :cond_1
    move-object v3, v9

    :goto_1
    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/systemui/media/mediaoutput/ext/ImageString;

    sget-object v4, Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;

    sget-object v4, Lcom/android/systemui/media/mediaoutput/icons/action/PlayKt;->Play$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/vector/ImageVector;

    const v5, 0x7f13133f

    const-string v7, "%s"

    invoke-direct {v3, v5, v7, v4}, Lcom/android/systemui/media/mediaoutput/ext/ImageString;-><init>(ILjava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    :goto_2
    move-object v10, v3

    goto :goto_3

    :cond_2
    new-instance v3, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v4, 0x7f130cf2

    const/4 v5, 0x2

    invoke-direct {v3, v4, v9, v5, v9}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :goto_3
    sget-object v3, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->play:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    if-eqz v6, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_4
    move v7, v4

    goto :goto_5

    :cond_3
    const v4, 0x3f1c28f6    # 0.61f

    goto :goto_4

    :goto_5
    const/4 v8, 0x7

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaAction;JZFI)Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x41

    move-object v3, v1

    move-object v4, v10

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update() - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, v1

    goto :goto_6

    :cond_4
    move-object v0, v9

    :goto_6
    if-nez v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->colorSchemeLoader$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->context:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$update$4$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$update$4$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader$process$3;-><init>(Landroid/content/Context;Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/ColorSchemeLoader;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0, v9, v9, p0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_6
    :goto_7
    return-void
.end method
