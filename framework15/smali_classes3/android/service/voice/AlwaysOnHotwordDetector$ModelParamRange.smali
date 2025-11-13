.class public final Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelParamRange"
.end annotation


# instance fields
.field private final blacklist mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getEnd()I
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->getEnd()I

    move-result v0

    return v0
.end method

.method public whitelist getStart()I
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->getStart()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;->mModelParamRange:Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
