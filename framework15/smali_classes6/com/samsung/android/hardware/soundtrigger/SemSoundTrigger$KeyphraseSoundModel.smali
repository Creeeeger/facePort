.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyphraseSoundModel"
.end annotation


# instance fields
.field blacklist instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

.field public final whitelist keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;

.field public final whitelist uuid:Ljava/util/UUID;


# direct methods
.method public constructor whitelist <init>(Ljava/util/UUID;Ljava/util/UUID;[B[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p4

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v3, p4, v1

    invoke-static {v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-$$Nest$fgetid(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I

    move-result v4

    aget-object v3, p4, v1

    invoke-static {v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-$$Nest$fgetrecognitionModes(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I

    move-result v5

    aget-object v3, p4, v1

    invoke-static {v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-$$Nest$fgetlocale(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/util/Locale;

    move-result-object v6

    aget-object v3, p4, v1

    invoke-static {v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-$$Nest$fgettext(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/lang/String;

    move-result-object v7

    aget-object v3, p4, v1

    invoke-static {v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->-$$Nest$fgetusers(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)[I

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-direct {v1, p1, p2, p3, v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iput-object p4, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;

    iput-object p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    return-void
.end method
