.class public final Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;

.field private static final KEY_NEW_VALUE:Ljava/lang/String; = "key_new_value"

.field private static final MUTE_ACTION_PREFIX:Ljava/lang/String; = "mute"

.field public static final STREAM_ALL:I = 0x1f

.field public static final STREAM_BLUETOOTH:I = 0x1e

.field private static final SUPPORTED_FLAG:I = 0x3ff

.field private static final TAG:Ljava/lang/String; = "MusicControlActionInteractor"


# instance fields
.field private audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->Companion:Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    return-void
.end method

.method private final getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p0, "volume_control_system"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo p0, "volume_control_media"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo p0, "volume_control_bixby"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "mute_bluetooth_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "mute_all_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p0, 0x1f

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "volume_control"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getAdjustedStreamType(Landroid/content/Context;)I

    move-result p0

    goto :goto_1

    :sswitch_6
    const-string/jumbo p0, "volume_control_bluetooth"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x1e

    goto :goto_1

    :sswitch_7
    const-string/jumbo p0, "volume_control_ringtone"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :sswitch_8
    const-string p0, "mute_ringtones_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_9
    const-string p0, "mute_media_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_a
    const-string/jumbo p0, "volume_control_noti"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :sswitch_b
    const-string p0, "mute_bixby_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0xb

    goto :goto_1

    :sswitch_c
    const-string p0, "mute_system_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_d
    const-string p0, "mute_noti_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x5

    :goto_1
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74ea39a3 -> :sswitch_d
        -0x6e778c7c -> :sswitch_c
        -0x667eb989 -> :sswitch_b
        -0x5814cd63 -> :sswitch_a
        -0x2a696bc5 -> :sswitch_9
        -0x28ac1492 -> :sswitch_8
        -0x245ced37 -> :sswitch_7
        -0x5022f99 -> :sswitch_6
        0x1a0e3938 -> :sswitch_5
        0x3ae96d5e -> :sswitch_4
        0x4971c731 -> :sswitch_3
        0x54cf5b61 -> :sswitch_2
        0x5568421d -> :sswitch_1
        0x62fde716 -> :sswitch_0
    .end sparse-switch
.end method

.method private final matchAction(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor$Action;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "volume_control"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatus()I

    move-result p2

    iput p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatusCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result p0

    int-to-float v3, p0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "mute"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v2, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    move-result p0

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "control_music"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    const/16 p2, 0x3ff

    const-string v0, ""

    invoke-direct {p1, v1, p2, v0}, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadStateful in MusicActionInteractor(with CommandAction) action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cmdAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MusicControlActionInteractor"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p3, "volume_control"

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatus()I

    move-result p2

    iput p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatusCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    move-result p3

    int-to-float v1, p3

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result p3

    int-to-float v2, p3

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result p0

    int-to-float v3, p0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p3, "mute"

    invoke-static {p1, p3, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    sget-object p3, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    move-result p0

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "control_music"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p1, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    const/16 p2, 0x3ff

    const-string p3, ""

    invoke-direct {p1, v0, p2, p3}, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "performCommandActionInteractor "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlActionInteractor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "invalid_action"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    check-cast p2, Lcom/samsung/android/sdk/command/action/ModeAction;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/bixby2/util/MediaParamsParser;->getMediaInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {v6, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    const-string p1, "media_session"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroid/media/session/MediaSessionManager;

    iget v4, p2, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->create(Landroid/content/Context;ILcom/android/systemui/bixby2/util/MediaModeInfoBixby;Lcom/android/systemui/bixby2/util/AudioManagerWrapper;Landroid/media/session/MediaSessionManager;)Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->action()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_new_value"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    iget-object v1, p0, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/interactor/MusicControlActionInteractor;->getStreamTypeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;->create(Landroid/content/Context;I)Lcom/android/systemui/bixby2/controller/volume/VolumeType;

    move-result-object p0

    check-cast p2, Lcom/samsung/android/sdk/command/action/BooleanAction;

    iget-boolean p1, p2, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setMute(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    :goto_0
    iget p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    return-void
.end method
