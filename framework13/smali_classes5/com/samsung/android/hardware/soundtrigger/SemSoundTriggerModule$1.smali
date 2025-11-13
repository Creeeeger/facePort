.class Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;
.super Ljava/lang/Object;
.source "SemSoundTriggerModule.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

.field final synthetic blacklist val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->this$0:Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    iput-object p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onModelUnloaded(I)V
    .locals 0
    .param p1, "modelHandle"    # I

    .line 75
    return-void
.end method

.method public blacklist onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 17
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 33
    iget-object v2, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceStateChange(I)V

    .line 34
    return-void

    .line 36
    :cond_0
    instance-of v2, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-eqz v2, :cond_3

    .line 37
    move-object v2, v1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 38
    .local v2, "stKeyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    array-length v3, v2

    new-array v3, v3, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    .line 39
    .local v3, "KeyphraseExtras":[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 40
    aget-object v5, v2, v4

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v5, v5

    new-array v5, v5, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    .line 41
    .local v5, "confidenceLevels":[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    aget-object v7, v2, v4

    iget-object v7, v7, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 42
    new-instance v7, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v8, v2, v4

    iget-object v8, v8, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v8, v8, v6

    iget v8, v8, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    aget-object v9, v2, v4

    iget-object v9, v9, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;-><init>(II)V

    aput-object v7, v5, v6

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 46
    .end local v6    # "j":I
    :cond_1
    new-instance v6, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    aget-object v7, v2, v4

    iget v7, v7, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    aget-object v8, v2, v4

    iget v8, v8, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    aget-object v9, v2, v4

    iget v9, v9, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;)V

    aput-object v6, v3, v4

    .line 39
    .end local v5    # "confidenceLevels":[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "i":I
    :cond_2
    iget-object v15, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    new-instance v14, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;

    iget v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v6, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget-boolean v7, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget v8, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v9, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v10, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget-boolean v11, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-object v12, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget-object v13, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    move-object v4, v14

    move-object/from16 v16, v2

    move-object v2, v14

    .end local v2    # "stKeyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .local v16, "stKeyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    move-object v14, v3

    invoke-direct/range {v4 .. v14}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;)V

    invoke-interface {v15, v2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    .line 60
    .end local v3    # "KeyphraseExtras":[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;
    .end local v16    # "stKeyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    goto :goto_2

    .line 61
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    new-instance v13, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;

    iget v4, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget-boolean v6, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget v7, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v8, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v9, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget-boolean v10, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-object v11, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget-object v12, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    invoke-interface {v2, v13}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    .line 71
    :goto_2
    return-void
.end method

.method public blacklist onResourcesAvailable()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceStateChange(I)V

    .line 80
    return-void
.end method

.method public blacklist onServiceDied()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {v0}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceDied()V

    .line 85
    return-void
.end method
