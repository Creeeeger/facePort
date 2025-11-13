.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HOME_HUB_FILES:[Ljava/lang/String;

.field public static final SOUND_THEME_FILES:[Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public soundID:I

.field public final soundIDs:[I

.field public soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/volume/util/SoundPoolWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string/jumbo v0, "system/media/audio/ui/TW_Volume_control_Fun.ogg"

    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control_Retro.ogg"

    const-string/jumbo v2, "system/media/audio/ui/TW_Volume_control.ogg"

    const-string/jumbo v3, "system/media/audio/ui/TW_Volume_control_Calm.ogg"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    const-string/jumbo v0, "system/media/audio/ui/HC_Volume_min.ogg"

    const-string/jumbo v1, "system/media/audio/ui/HC_Volume_max.ogg"

    const-string/jumbo v2, "system/media/audio/ui/HC_Volume_down.ogg"

    const-string/jumbo v3, "system/media/audio/ui/HC_Volume_up.ogg"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/HandlerWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundID:I

    sget-boolean p2, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    array-length p2, p2

    new-array v1, p2, [I

    :goto_0
    if-ge v0, p2, :cond_2

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    array-length p2, p2

    new-array v1, p2, [I

    :goto_1
    if-ge v0, p2, :cond_2

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v0, [I

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    return-void
.end method


# virtual methods
.method public final initSound(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNone(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110285

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x5

    :goto_0
    move p1, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;-><init>(Landroid/media/SoundPool;I)V

    invoke-virtual {v1, p0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
