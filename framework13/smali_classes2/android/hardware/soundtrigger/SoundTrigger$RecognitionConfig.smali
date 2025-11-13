.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionConfig"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o allowMultipleTriggers:Z

.field public final blacklist audioCapabilities:I

.field public final greylist-max-r captureRequested:Z

.field public final greylist-max-r data:[B

.field public final greylist-max-r keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 0

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1453
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V
    .locals 6
    .param p1, "captureRequested"    # Z
    .param p2, "allowMultipleTriggers"    # Z
    .param p3, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B

    .line 1450
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    .line 1451
    return-void
.end method

.method public constructor blacklist <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V
    .locals 2
    .param p1, "captureRequested"    # Z
    .param p2, "allowMultipleTriggers"    # Z
    .param p3, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B
    .param p5, "audioCapabilities"    # I

    .line 1439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    .line 1441
    iput-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    .line 1442
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-array v1, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    :goto_0
    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1443
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    new-array v0, v0, [B

    :goto_1
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    .line 1444
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->audioCapabilities:I

    .line 1445
    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 10
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1465
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 1466
    .local v4, "captureRequested":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 1467
    .local v5, "allowMultipleTriggers":Z
    :goto_1
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1468
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1469
    .local v0, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    .line 1470
    .local v1, "data":[B
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1471
    .local v2, "audioCapabilities":I
    new-instance v9, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-object v3, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    return-object v9
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1486
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionConfig [captureRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowMultipleTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1493
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->audioCapabilities:I

    .line 1494
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1491
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1477
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1478
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1479
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1480
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 1481
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->audioCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    return-void
.end method
