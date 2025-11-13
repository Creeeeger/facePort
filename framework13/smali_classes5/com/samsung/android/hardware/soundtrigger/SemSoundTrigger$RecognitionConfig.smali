.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionConfig"
.end annotation


# instance fields
.field private final blacklist allowMultipleTriggers:Z

.field private final blacklist captureRequested:Z

.field private final blacklist data:[B

.field blacklist instance:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private final blacklist keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method public constructor whitelist <init>(ZZ[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;[B)V
    .locals 7
    .param p1, "captureRequested"    # Z
    .param p2, "allowMultipleTriggers"    # Z
    .param p3, "keyphrases"    # [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    array-length v0, p3

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 263
    .local v0, "stKeyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 264
    aget-object v2, p3, v1

    iget-object v2, v2, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    array-length v2, v2

    new-array v2, v2, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 265
    .local v2, "confidenceLevels":[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p3, v1

    iget-object v4, v4, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 266
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v5, p3, v1

    iget-object v5, v5, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->userId:I

    aget-object v6, p3, v1

    iget-object v6, v6, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-direct {v4, v5, v6}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    aput-object v4, v2, v3

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 270
    .end local v3    # "j":I
    :cond_0
    new-instance v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    aget-object v4, p3, v1

    iget v4, v4, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->id:I

    aget-object v5, p3, v1

    iget v5, v5, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    aget-object v6, p3, v1

    iget v6, v6, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    aput-object v3, v0, v1

    .line 263
    .end local v2    # "confidenceLevels":[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-direct {v1, p1, p2, v0, p4}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    iput-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->instance:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 276
    iput-boolean p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->captureRequested:Z

    .line 277
    iput-boolean p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    .line 278
    iput-object p3, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    .line 279
    iput-object p4, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->data:[B

    .line 280
    return-void
.end method
