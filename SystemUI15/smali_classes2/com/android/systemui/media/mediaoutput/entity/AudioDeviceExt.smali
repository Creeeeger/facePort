.class public final Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs filteredByType([Ljava/util/List;[Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;)Ljava/util/List;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v4}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    check-cast v2, Ljava/util/Collection;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    return-object p0
.end method

.method public static isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getState()Lcom/android/systemui/media/mediaoutput/entity/State;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static isConnected(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getState()Lcom/android/systemui/media/mediaoutput/entity/State;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
