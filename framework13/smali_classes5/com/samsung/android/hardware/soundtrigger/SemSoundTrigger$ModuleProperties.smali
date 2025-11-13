.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation


# instance fields
.field public final whitelist id:I

.field public final whitelist uuid:Ljava/util/UUID;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "implementor"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "supportedModelArch"    # Ljava/lang/String;
    .param p7, "maxSoundModels"    # I
    .param p8, "maxKeyphrases"    # I
    .param p9, "maxUsers"    # I
    .param p10, "recognitionModes"    # I
    .param p11, "supportsCaptureTransition"    # Z
    .param p12, "maxBufferMs"    # I
    .param p13, "supportsConcurrentCapture"    # Z
    .param p14, "powerConsumptionMw"    # I
    .param p15, "returnsTriggerInEvent"    # Z
    .param p16, "audioCapabilities"    # I

    .line 57
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    move v1, p1

    iput v1, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;->id:I

    .line 59
    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
