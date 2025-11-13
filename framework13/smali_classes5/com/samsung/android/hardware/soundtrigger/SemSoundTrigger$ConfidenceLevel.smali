.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfidenceLevel"
.end annotation


# instance fields
.field public final whitelist confidenceLevel:I

.field blacklist instance:Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

.field public final whitelist userId:I


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "confidenceLevel"    # I

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->instance:Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 306
    iget v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iput v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->userId:I

    .line 307
    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->instance:Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    iget v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iput v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->confidenceLevel:I

    .line 308
    return-void
.end method
