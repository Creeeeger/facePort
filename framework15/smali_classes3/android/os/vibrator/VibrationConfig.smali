.class public Landroid/os/vibrator/VibrationConfig;
.super Ljava/lang/Object;
.source "VibrationConfig.java"


# instance fields
.field private final blacklist mDefaultAlarmVibrationIntensity:I

.field private final blacklist mDefaultHapticFeedbackIntensity:I

.field private final blacklist mDefaultKeyboardVibrationEnabled:Z

.field private final blacklist mDefaultMediaVibrationIntensity:I

.field private final blacklist mDefaultNotificationVibrationIntensity:I

.field private final blacklist mDefaultRingVibrationIntensity:I

.field private final blacklist mHapticChannelMaxVibrationAmplitude:F

.field private final blacklist mHasFixedKeyboardAmplitude:Z

.field private final blacklist mIgnoreVibrationsOnWirelessCharger:Z

.field private final blacklist mRampDownDurationMs:I

.field private final blacklist mRampStepDurationMs:I

.field private final blacklist mRequestVibrationParamsForUsages:[I

.field private final blacklist mRequestVibrationParamsTimeoutMs:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x10500e8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->loadFloat(Landroid/content/res/Resources;IF)F

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    const v0, 0x10e0169

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    const v0, 0x10e016a

    invoke-static {p1, v0, v2}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    const v0, 0x10e0121

    invoke-static {p1, v0, v2}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    const v0, 0x1070145

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    const v0, 0x11101b7

    invoke-static {p1, v0, v2}, Landroid/os/vibrator/VibrationConfig;->loadBoolean(Landroid/content/res/Resources;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    const v0, 0x1110133

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Landroid/os/vibrator/VibrationConfig;->loadBoolean(Landroid/content/res/Resources;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationEnabled:Z

    const v0, 0x10500ec

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {p1, v0, v4}, Landroid/os/vibrator/VibrationConfig;->loadFloat(Landroid/content/res/Resources;IF)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/os/vibrator/VibrationConfig;->mHasFixedKeyboardAmplitude:Z

    const v0, 0x10e006a

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    const v0, 0x10e0070

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    const v0, 0x10e0071

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    const v0, 0x10e0079

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    const v0, 0x10e0080

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    return-void
.end method

.method private blacklist getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static blacklist loadBoolean(Landroid/content/res/Resources;IZ)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private static blacklist loadDefaultIntensity(Landroid/content/res/Resources;I)I
    .locals 3

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method private static blacklist loadFloat(Landroid/content/res/Resources;IF)F
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private static blacklist loadIntArray(Landroid/content/res/Resources;I)[I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0
.end method

.method private static blacklist loadInteger(Landroid/content/res/Resources;II)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "VibrationConfig:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreVibrationsOnWirelessCharger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hapticChannelMaxAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rampStepDurationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rampDownDurationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestVibrationParamsForUsages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestVibrationParamsTimeoutMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getDefaultVibrationIntensity(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    return v0

    :sswitch_0
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    return v0

    :sswitch_1
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    return v0

    :sswitch_2
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    return v0

    :sswitch_3
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
        0x31 -> :sswitch_0
        0x32 -> :sswitch_2
        0x41 -> :sswitch_0
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .locals 2

    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    :cond_0
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    return v0
.end method

.method public blacklist getRampDownDurationMs()I
    .locals 1

    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    return v0
.end method

.method public blacklist getRampStepDurationMs()I
    .locals 1

    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    return v0
.end method

.method public blacklist getRequestVibrationParamsForUsages()[I
    .locals 1

    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    return-object v0
.end method

.method public blacklist getRequestVibrationParamsTimeoutMs()I
    .locals 2

    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public blacklist hasFixedKeyboardAmplitude()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mHasFixedKeyboardAmplitude:Z

    return v0
.end method

.method public blacklist ignoreVibrationsOnWirelessCharger()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    return v0
.end method

.method public blacklist isDefaultKeyboardVibrationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationConfig{mIgnoreVibrationsOnWirelessCharger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHapticChannelMaxVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampStepDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampDownDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestVibrationParamsForUsages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestVibrationParamsTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultAlarmIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultHapticFeedbackIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultMediaIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultNotificationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultRingIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultKeyboardVibrationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
