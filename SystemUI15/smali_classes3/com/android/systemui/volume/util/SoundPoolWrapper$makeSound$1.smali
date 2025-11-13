.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    array-length v2, v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    sget-object v6, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v1, v6, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    array-length v2, v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    sget-object v6, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v1, v6, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "system/media/audio/ui/TW_Volume_control.ogg"

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundID:I

    :cond_2
    iput-object v1, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    return-void
.end method
