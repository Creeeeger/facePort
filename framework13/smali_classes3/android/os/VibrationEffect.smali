.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$SemMagnitudeType;,
        Landroid/os/VibrationEffect$FrequencyVibrationParameter;,
        Landroid/os/VibrationEffect$AmplitudeVibrationParameter;,
        Landroid/os/VibrationEffect$VibrationParameter;,
        Landroid/os/VibrationEffect$WaveformBuilder;,
        Landroid/os/VibrationEffect$Composition;,
        Landroid/os/VibrationEffect$Composed;,
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

    .line 149
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    .line 1479
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

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/VibrationEffect;->mMagnitude:I

    .line 1540
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_EXTRA:Landroid/os/VibrationEffect$SemMagnitudeType;

    iput-object v0, p0, Landroid/os/VibrationEffect;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 178
    return-void
.end method

.method public static whitelist createOneShot(JI)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "milliseconds"    # J
    .param p2, "amplitude"    # I

    .line 193
    if-eqz p2, :cond_0

    .line 198
    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    new-array v0, v0, [I

    aput p2, v0, v2

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 194
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
    .param p0, "effectId"    # I

    .line 293
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createWaveform([I[F[FI)Landroid/os/VibrationEffect;
    .locals 6
    .param p0, "timings"    # [I
    .param p1, "amplitudes"    # [F
    .param p2, "frequencies"    # [F
    .param p3, "repeat"    # I

    .line 1645
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    array-length v0, p0

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 1652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1654
    new-instance v2, Landroid/os/vibrator/StepSegment;

    aget v3, p1, v1

    aget v4, p2, v1

    aget v5, p0, v1

    invoke-direct {v2, v3, v4, v5}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1656
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p3}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 1657
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    .line 1658
    return-object v1

    .line 1646
    .end local v0    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    .end local v1    # "effect":Landroid/os/VibrationEffect;
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
    .param p0, "timings"    # [J
    .param p1, "repeat"    # I

    .line 227
    array-length v0, p0

    new-array v0, v0, [I

    .line 228
    .local v0, "amplitudes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 229
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createWaveform([J[II)Landroid/os/VibrationEffect;
    .locals 7
    .param p0, "timings"    # [J
    .param p1, "amplitudes"    # [I
    .param p2, "repeat"    # I

    .line 257
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 265
    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 266
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_0
    aget v2, p1, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 267
    .local v2, "parsedAmplitude":F
    :goto_1
    new-instance v3, Landroid/os/vibrator/StepSegment;

    const/4 v4, 0x0

    aget-wide v5, p0, v1

    long-to-int v5, v5

    invoke-direct {v3, v2, v4, v5}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v2    # "parsedAmplitude":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 270
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V

    .line 271
    return-object v1

    .line 258
    .end local v0    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/StepSegment;>;"
    .end local v1    # "effect":Landroid/os/VibrationEffect;
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
    .param p0, "effectId"    # I

    .line 586
    sparse-switch p0, :sswitch_data_0

    .line 602
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :sswitch_0
    const-string v0, "TEXTURE_TICK"

    return-object v0

    .line 592
    :sswitch_1
    const-string v0, "HEAVY_CLICK"

    return-object v0

    .line 596
    :sswitch_2
    const-string v0, "POP"

    return-object v0

    .line 598
    :sswitch_3
    const-string v0, "THUD"

    return-object v0

    .line 590
    :sswitch_4
    const-string v0, "TICK"

    return-object v0

    .line 594
    :sswitch_5
    const-string v0, "DOUBLE_CLICK"

    return-object v0

    .line 588
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
    .param p0, "effectStrength"    # I

    .line 608
    packed-switch p0, :pswitch_data_0

    .line 616
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :pswitch_0
    const-string v0, "STRONG"

    return-object v0

    .line 612
    :pswitch_1
    const-string v0, "MEDIUM"

    return-object v0

    .line 610
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
    .param p0, "effectId"    # I

    .line 316
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o get(IZ)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "effectId"    # I
    .param p1, "fallback"    # Z

    .line 343
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    new-instance v1, Landroid/os/vibrator/PrebakedSegment;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/os/vibrator/PrebakedSegment;-><init>(IZI)V

    invoke-direct {v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/vibrator/VibrationEffectSegment;)V

    .line 345
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 346
    return-object v0
.end method

.method public static greylist-max-o get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "uris":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 373
    return-object v2

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 377
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 378
    .local v3, "uncanonicalUri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 382
    move-object v3, p0

    .line 385
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    sget-object v5, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 386
    aget-object v6, v0, v4

    if-nez v6, :cond_2

    .line 387
    goto :goto_1

    .line 389
    :cond_2
    aget-object v6, v0, v4

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 390
    .local v6, "mappedUri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 391
    goto :goto_1

    .line 393
    :cond_3
    invoke-virtual {v6, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 394
    aget v2, v5, v4

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    return-object v2

    .line 385
    .end local v6    # "mappedUri":Landroid/net/Uri;
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 397
    .end local v4    # "i":I
    :cond_5
    return-object v2
.end method

.method public static blacklist scale(FF)F
    .locals 11
    .param p0, "intensity"    # F
    .param p1, "scaleFactor"    # F

    .line 560
    const v0, 0x3fc4ec4f

    invoke-static {p1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 562
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    .line 565
    mul-float v1, p0, v0

    return v1

    .line 569
    :cond_0
    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v2, p1

    invoke-static {p1, v2}, Landroid/util/MathUtils;->pow(FF)F

    move-result v2

    .line 570
    .local v2, "extraScale":F
    mul-float v3, p0, v0

    mul-float/2addr v3, v2

    .line 571
    .local v3, "x":F
    mul-float v4, v0, v2

    .line 573
    .local v4, "maxX":F
    invoke-static {v3}, Landroid/util/MathUtils;->exp(F)F

    move-result v5

    .line 574
    .local v5, "expX":F
    invoke-static {v4}, Landroid/util/MathUtils;->exp(F)F

    move-result v6

    .line 578
    .local v6, "expMaxX":F
    add-float v7, v6, v1

    sub-float v8, v6, v1

    div-float/2addr v7, v8

    .line 579
    .local v7, "a":F
    sub-float v8, v5, v1

    add-float v9, v5, v1

    div-float/2addr v8, v9

    .line 581
    .local v8, "fx":F
    mul-float v9, v7, v8

    const/4 v10, 0x0

    invoke-static {v9, v10, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1
.end method

.method public static blacklist semCreateHaptic(II)Landroid/os/VibrationEffect;
    .locals 5
    .param p0, "type"    # I
    .param p1, "repeat"    # I

    .line 1591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1592
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/SemHapticSegment;>;"
    new-instance v1, Landroid/os/vibrator/SemHapticSegment;

    invoke-direct {v1, p0}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 1595
    .local v1, "effect":Landroid/os/VibrationEffect;
    :try_start_0
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    goto :goto_0

    .line 1596
    :catch_0
    move-exception v2

    .line 1597
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1598
    new-instance v3, Landroid/os/vibrator/SemHapticSegment;

    const v4, 0xc3a4

    invoke-direct {v3, v4}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v3, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v3, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    move-object v1, v3

    .line 1601
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static blacklist semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;
    .locals 5
    .param p0, "type"    # I
    .param p1, "repeat"    # I
    .param p2, "magnitudeType"    # Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/SemHapticSegment;>;"
    new-instance v1, Landroid/os/vibrator/SemHapticSegment;

    invoke-direct {v1, p0}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1575
    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 1576
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v1, p2}, Landroid/os/VibrationEffect;->semSetMagnitudeType(Landroid/os/VibrationEffect$SemMagnitudeType;)V

    .line 1578
    :try_start_0
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    goto :goto_0

    .line 1579
    :catch_0
    move-exception v2

    .line 1580
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1581
    new-instance v3, Landroid/os/vibrator/SemHapticSegment;

    const v4, 0xc3a4

    invoke-direct {v3, v4}, Landroid/os/vibrator/SemHapticSegment;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v3, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v3, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    move-object v1, v3

    .line 1584
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static blacklist semCreateWaveform(II)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "type"    # I
    .param p1, "repeat"    # I

    .line 1566
    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "type"    # I
    .param p1, "repeat"    # I
    .param p2, "magnitudeType"    # Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1554
    invoke-static {p0, p1, p2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist startComposition()Landroid/os/VibrationEffect$Composition;
    .locals 1

    .line 407
    new-instance v0, Landroid/os/VibrationEffect$Composition;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 1

    .line 426
    new-instance v0, Landroid/os/VibrationEffect$WaveformBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformBuilder;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2
    .param p0, "initialParameter"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 446
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 447
    .local v0, "builder":Landroid/os/VibrationEffect$WaveformBuilder;
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 448
    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .locals 2
    .param p0, "initialParameter1"    # Landroid/os/VibrationEffect$VibrationParameter;
    .param p1, "initialParameter2"    # Landroid/os/VibrationEffect$VibrationParameter;

    .line 472
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 473
    .local v0, "builder":Landroid/os/VibrationEffect$WaveformBuilder;
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 474
    return-object v0
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .locals 0
    .param p1, "effectStrength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/VibrationEffect;",
            ">(I)TT;"
        }
    .end annotation

    .line 546
    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o getDuration()J
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 1

    .line 508
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

.method public blacklist semGetMagnitude()I
    .locals 1

    .line 1634
    iget v0, p0, Landroid/os/VibrationEffect;->mMagnitude:I

    return v0
.end method

.method public whitelist semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 1

    .line 1620
    iget-object v0, p0, Landroid/os/VibrationEffect;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object v0
.end method

.method public blacklist semSetMagnitude(I)V
    .locals 0
    .param p1, "magnitude"    # I

    .line 1627
    iput p1, p0, Landroid/os/VibrationEffect;->mMagnitude:I

    .line 1628
    return-void
.end method

.method public whitelist semSetMagnitudeType(Landroid/os/VibrationEffect$SemMagnitudeType;)V
    .locals 0
    .param p1, "magnitudeType"    # Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1610
    iput-object p1, p0, Landroid/os/VibrationEffect;->mMagnitudeType:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 1611
    return-void
.end method

.method public abstract greylist-max-o validate()V
.end method
