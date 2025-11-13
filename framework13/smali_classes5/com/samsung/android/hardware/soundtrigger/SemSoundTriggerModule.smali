.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;
.super Ljava/lang/Object;
.source "SemSoundTriggerModule.java"


# static fields
.field private static final blacklist EVENT_RECOGNITION:I = 0x1

.field private static final blacklist EVENT_SERVICE_DIED:I = 0x2

.field private static final blacklist EVENT_SERVICE_STATE_CHANGE:I = 0x4

.field private static final blacklist EVENT_SOUNDMODEL:I = 0x3


# instance fields
.field private blacklist instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;


# direct methods
.method constructor blacklist <init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "listener"    # Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    .line 28
    new-instance v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;-><init>(Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;)V

    .line 87
    .local v0, "stListener":Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    invoke-direct {v1, p1, v0, p3}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;-><init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist detach()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->detach()V

    .line 98
    :cond_0
    return-void
.end method

.method public whitelist loadSoundModel(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;[I)I
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;
    .param p2, "soundModelHandle"    # [I

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    iget-object v1, p1, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {v0, v1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;[I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/high16 v1, -0x80000000

    return v1
.end method

.method public whitelist startRecognition(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;)I
    .locals 2
    .param p1, "soundModelHandle"    # I
    .param p2, "config"    # Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;

    .line 162
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p2, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->instance:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0

    .line 165
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist stopRecognition(I)I
    .locals 1
    .param p1, "soundModelHandle"    # I

    .line 183
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->stopRecognition(I)I

    move-result v0

    return v0

    .line 186
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist unloadSoundModel(I)I
    .locals 1
    .param p1, "soundModelHandle"    # I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->unloadSoundModel(I)I

    move-result v0

    return v0

    .line 140
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method
