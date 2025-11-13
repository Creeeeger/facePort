.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyphrase"
.end annotation


# instance fields
.field private final blacklist id:I

.field blacklist instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

.field private final blacklist locale:Ljava/util/Locale;

.field private final blacklist recognitionModes:I

.field private final blacklist text:Ljava/lang/String;

.field private final blacklist users:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetid(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlocale(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecognitionModes(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettext(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetusers(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    return-object p0
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;[I)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "recognitionModes"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "users"    # [I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    .line 101
    iput p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    .line 102
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/util/Locale;

    .line 103
    iput-object p4, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    .line 105
    new-instance v6, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    iput-object v6, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyphrase [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    .line 111
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method
