.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$SemMagnitudeType;,
        Landroid/os/VibrationEffect$Composed;,
        Landroid/os/VibrationEffect$Composition;,
        Landroid/os/VibrationEffect$WaveformBuilder;,
        Landroid/os/VibrationEffect$VibrationParameter;,
        Landroid/os/VibrationEffect$FrequencyVibrationParameter;,
        Landroid/os/VibrationEffect$AmplitudeVibrationParameter;,
        Landroid/os/VibrationEffect$Transformation;,
        Landroid/os/VibrationEffect$EffectType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_AMPLITUDE:I = -0x1

.field public static final whitelist EFFECT_CLICK:I = 0x0

.field public static final whitelist EFFECT_DOUBLE_CLICK:I = 0x1

.field public static final whitelist EFFECT_HEAVY_CLICK:I = 0x5

.field public static final greylist-max-r EFFECT_POP:I = 0x4

.field public static final blacklist EFFECT_STRENGTH_LIGHT:I = 0x0

.field public static final blacklist EFFECT_STRENGTH_MEDIUM:I = 0x1

.field public static final blacklist EFFECT_STRENGTH_STRONG:I = 0x2

.field public static final blacklist EFFECT_TEXTURE_TICK:I = 0x15

.field public static final greylist-max-r EFFECT_THUD:I = 0x3

.field public static final whitelist EFFECT_TICK:I = 0x2

.field public static final greylist-max-o MAX_AMPLITUDE:I = 0xff

.field private static final blacklist MAX_HAPTIC_FEEDBACK_COMPOSITION_SIZE:J = 0x3L

.field private static final blacklist MAX_HAPTIC_FEEDBACK_DURATION:J = 0x3e8L

.field public static final greylist-max-r RINGTONES:[I

.field private static final blacklist SCALE_GAMMA:F = 0.65f


# instance fields
.field protected blacklist mMagnitude:I

.field protected blacklist mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/VibrationEffect;->mMagnitude:I

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    iput-object v0, p0, Landroid/os/VibrationEffect;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-void
.end method

.method public static whitelist createOneShot(JI)Landroid/os/VibrationEffect;
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    filled-new-array {p2}, [I

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createPredefined(I)Landroid/os/VibrationEffect;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createWaveform([I[F[FI)Landroid/os/VibrationEffect;
    .locals 6

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    array-length v0, p0

    array-length v1, p2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/os/vibrator/StepSegment;

    aget v3, p1, v1

    aget v4, p2, v1

    aget v5, p0, v1

    invoke-direct {v2, v3, v4, v5}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amplitudes.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frequencies.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createWaveform([JI)Landroid/os/VibrationEffect;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createWaveform([J[II)Landroid/os/VibrationEffect;
    .locals 6

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_0
    aget v2, p1, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    :goto_1
    new-instance v3, Landroid/os/vibrator/StepSegment;

    aget-wide v4, p0, v1

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amplitudes.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist effectIdToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "TEXTURE_TICK"

    return-object v0

    :sswitch_1
    const-string v0, "HEAVY_CLICK"

    return-object v0

    :sswitch_2
    const-string v0, "POP"

    return-object v0

    :sswitch_3
    const-string v0, "THUD"

    return-object v0

    :sswitch_4
    const-string v0, "TICK"

    return-object v0

    :sswitch_5
    const-string v0, "DOUBLE_CLICK"

    return-object v0

    :sswitch_6
    const-string v0, "CLICK"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist effectStrengthToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "STRONG"

    return-object v0

    :pswitch_1
    const-string v0, "MEDIUM"

    return-object v0

    :pswitch_2
    const-string v0, "LIGHT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o get(I)Landroid/os/VibrationEffect;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o get(IZ)Landroid/os/VibrationEffect;
    .locals 3

    new-instance v0, Landroid/os/VibrationEffect$Composed;

    new-instance v1, Landroid/os/vibrator/PrebakedSegment;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/os/vibrator/PrebakedSegment;-><init>(IZI)V

    invoke-direct {v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/vibrator/VibrationEffectSegment;)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0
.end method

.method public static greylist-max-o get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, p0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    sget-object v5, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v5, v5

    if-ge v4, v5, :cond_5

    aget-object v5, v0, v4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v2, Landroid/os/VibrationEffect;->RINGTONES:[I

    aget v2, v2, v4

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    return-object v2

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static blacklist scale(FF)F
    .locals 11

    const v0, 0x3fc4ec4f

    invoke-static {p1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    mul-float v1, p0, v0

    return v1

    :cond_0
    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v2, p1

    invoke-static {p1, v2}, Landroid/util/MathUtils;->pow(FF)F

    move-result v2

    mul-float v3, p0, v0

    mul-float/2addr v3, v2

    mul-float v4, v0, v2

    invoke-static {v3}, Landroid/util/MathUtils;->exp(F)F

    move-result v5

    invoke-static {v4}, Landroid/util/MathUtils;->exp(F)F

    move-result v6

    add-float v7, v6, v1

    sub-float v8, v6, v1

    div-float/2addr v7, v8

    sub-float v8, v5, v1

    add-float v9, v5, v1

    div-float/2addr v8, v9

    mul-float v9, v7, v8

    const/4 v10, 0x0

    invoke-static {v9, v10, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1
.end method

.method public static blacklist scaleLinearly(FF)F
    .locals 3

    mul-float v0, p0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public static blacklist semCreateHaptic(II)Landroid/os/VibrationEffect;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/vibrator/SemHapticSegment;

    invoke-direct {v1, p0}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    :try_start_0
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v3, Landroid/os/vibrator/SemHapticSegment;

    const v4, 0xc3a4

    invoke-direct {v3, v4}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v3, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    move-object v1, v3

    :goto_0
    return-object v1
.end method

.method public static blacklist semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/vibrator/SemHapticSegment;

    invoke-direct {v1, p0}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, p2}, Landroid/os/VibrationEffect;->semSetMagnitudeType(Landroid/os/VibrationEffect$SemMagnitudeType;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v3, Landroid/os/vibrator/SemHapticSegment;

    const v4, 0xc3a4

    invoke-direct {v3, v4}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v3, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    move-object v1, v3

    :goto_0
    return-object v1
.end method

.method public static whitelist semCreateWaveform(II)Landroid/os/VibrationEffect;
    .locals 1

    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist startComposition()Landroid/os/VibrationEffect$Composition;
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$Composition;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$WaveformBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformBuilder;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2

    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2

    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
.end method

.method public abstract blacklist computeCreateWaveformOffOnTimingsOrNull()[J
.end method

.method public abstract blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o getDuration()J
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist resolve(I)Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist scale(F)Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(F)TT;"
        }
    .end annotation
.end method

.method public whitelist semApplyEffectStrength(I)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(I)TT;"
        }
    .end annotation

    return-object p0
.end method

.method public blacklist semGetMagnitude()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect;->mMagnitude:I

    return v0
.end method

.method public whitelist semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1

    iget-object v0, p0, Landroid/os/VibrationEffect;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method

.method public blacklist semSetMagnitude(I)V
    .locals 0

    iput p1, p0, Landroid/os/VibrationEffect;->mMagnitude:I

    return-void
.end method

.method public whitelist semSetMagnitudeType(Landroid/os/VibrationEffect$SemMagnitudeType;)V
    .locals 0

    iput-object p1, p0, Landroid/os/VibrationEffect;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-void
.end method

.method public abstract blacklist toDebugString()Ljava/lang/String;
.end method

.method public abstract greylist-max-o validate()V
.end method
