.class public final Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;

.field public static final dolbyEnabled:Z

.field public static final supportDolby:Z

.field public static final supportEQ:Z

.field public static final supportVoiceBoost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;->INSTANCE:Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_SOUNDALIVE_VERSION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "voice_boost"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;->supportVoiceBoost:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_DOLBY_AUDIO"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;->supportDolby:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eq_custom"

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;->supportEQ:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "spk_stereo"

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftFeatures;->dolbyEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
