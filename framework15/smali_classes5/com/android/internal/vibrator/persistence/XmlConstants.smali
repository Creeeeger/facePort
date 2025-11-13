.class public final Lcom/android/internal/vibrator/persistence/XmlConstants;
.super Ljava/lang/Object;
.source "XmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;,
        Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;,
        Lcom/android/internal/vibrator/persistence/XmlConstants$Flags;
    }
.end annotation


# static fields
.field public static final blacklist ATTRIBUTE_AMPLITUDE:Ljava/lang/String; = "amplitude"

.field public static final blacklist ATTRIBUTE_DELAY_MS:Ljava/lang/String; = "delayMs"

.field public static final blacklist ATTRIBUTE_DURATION_MS:Ljava/lang/String; = "durationMs"

.field public static final blacklist ATTRIBUTE_FALLBACK:Ljava/lang/String; = "fallback"

.field public static final blacklist ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field public static final blacklist ATTRIBUTE_SCALE:Ljava/lang/String; = "scale"

.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1

.field public static final blacklist NAMESPACE:Ljava/lang/String;

.field public static final blacklist TAG_PREDEFINED_EFFECT:Ljava/lang/String; = "predefined-effect"

.field public static final blacklist TAG_PRIMITIVE_EFFECT:Ljava/lang/String; = "primitive-effect"

.field public static final blacklist TAG_REPEATING:Ljava/lang/String; = "repeating"

.field public static final blacklist TAG_VIBRATION_EFFECT:Ljava/lang/String; = "vibration-effect"

.field public static final blacklist TAG_VIBRATION_SELECT:Ljava/lang/String; = "vibration-select"

.field public static final blacklist TAG_WAVEFORM_EFFECT:Ljava/lang/String; = "waveform-effect"

.field public static final blacklist TAG_WAVEFORM_ENTRY:Ljava/lang/String; = "waveform-entry"

.field public static final blacklist VALUE_AMPLITUDE_DEFAULT:Ljava/lang/String; = "default"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
