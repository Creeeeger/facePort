.class public Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;
.super Ljava/lang/Object;
.source "SoundTriggerModuleWrapper.java"


# instance fields
.field private blacklist instance:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method public constructor blacklist <init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Landroid/media/permission/Identity;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Landroid/media/permission/Identity;->uid:I

    invoke-static {p1, p2, p3, v0}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModuleAsOriginator(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    return-void
.end method


# virtual methods
.method public blacklist detach()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    :cond_0
    return-void
.end method

.method public blacklist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;[I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public blacklist startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public blacklist stopRecognition(I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public blacklist unloadSoundModel(I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method
