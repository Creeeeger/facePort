.class public final Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/util/AUIFacade;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public final soundIdMap:Ljava/util/Map;

.field public soundPool:Landroid/media/SoundPool;

.field public final soundResources:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const p2, 0x7f120025

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const p2, 0x7f120026

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const p2, 0x7f120032

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const p2, 0x7f120033

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const/high16 p2, 0x7f120000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const p2, 0x7f120001

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const p2, 0x7f120036

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    const p2, 0x7f120037

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v0 .. v7}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundResources:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public final initialize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-static {}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->values()[Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const-string/jumbo v2, "stv_touch_tone"

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundResources:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;-><init>(Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1
    return-void
.end method

.method public final playClick(IILandroid/view/View;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    const/4 v7, 0x1

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v7, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSoundId(): can\'t find customSound:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AUIFacadeImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    :cond_4
    if-nez v1, :cond_8

    const/16 p1, 0xd

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    if-eqz p4, :cond_5

    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    :goto_1
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    :goto_2
    move-object v1, p1

    goto :goto_4

    :cond_5
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    if-eqz p4, :cond_7

    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    :goto_3
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_2

    :cond_7
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    goto :goto_3

    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v7, p1}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_9
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method
