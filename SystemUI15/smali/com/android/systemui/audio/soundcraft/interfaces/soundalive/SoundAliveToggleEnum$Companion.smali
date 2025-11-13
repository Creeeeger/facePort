.class public final Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum$Companion;-><init>()V

    return-void
.end method

.method public static getBooleanActionValue(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->ON:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->getRoutineActionValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->getValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->OFF:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveToggleEnum;->getValue()Z

    move-result p0

    :goto_0
    return p0
.end method
