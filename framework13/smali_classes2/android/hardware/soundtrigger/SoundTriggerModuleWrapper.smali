.class public Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;
.super Ljava/lang/Object;
.source "SoundTriggerModuleWrapper.java"


# instance fields
.field private blacklist instance:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method public constructor blacklist <init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 14
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 15
    .local v0, "originatorIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Landroid/media/permission/Identity;->pid:I

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Landroid/media/permission/Identity;->uid:I

    .line 17
    invoke-static {p1, p2, p3, v0}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModuleAsOriginator(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist detach()V
    .locals 1

    .line 21
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 24
    :cond_0
    return-void
.end method

.method public blacklist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;[I)I
    .locals 1
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p2, "soundModelHandle"    # [I

    .line 27
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v0

    return v0

    .line 30
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public blacklist startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 1
    .param p1, "soundModelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 43
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0

    .line 46
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public blacklist stopRecognition(I)I
    .locals 1
    .param p1, "soundModelHandle"    # I

    .line 51
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v0

    return v0

    .line 54
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public blacklist unloadSoundModel(I)I
    .locals 1
    .param p1, "soundModelHandle"    # I

    .line 35
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v0

    return v0

    .line 38
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method
