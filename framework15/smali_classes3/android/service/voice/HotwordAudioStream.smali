.class public final Landroid/service/voice/HotwordAudioStream;
.super Ljava/lang/Object;
.source "HotwordAudioStream.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordAudioStream$Builder;,
        Landroid/service/voice/HotwordAudioStream$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_INITIAL_EMPTY_AUDIO:[B

.field public static final whitelist KEY_AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES:Ljava/lang/String; = "android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES"


# instance fields
.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private final blacklist mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mInitialAudio:[B

.field private final blacklist mMetadata:Landroid/os/PersistableBundle;

.field private final blacklist mTimestamp:Landroid/media/AudioTimestamp;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultInitialAudio()[B
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->defaultInitialAudio()[B

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultMetadata()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->defaultMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTimestamp()Landroid/media/AudioTimestamp;
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->defaultTimestamp()Landroid/media/AudioTimestamp;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/service/voice/HotwordAudioStream;->DEFAULT_INITIAL_EMPTY_AUDIO:[B

    new-instance v0, Landroid/service/voice/HotwordAudioStream$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordAudioStream$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordAudioStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioTimestamp;Landroid/os/PersistableBundle;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    iput-object p4, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p5, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/media/AudioTimestamp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTimestamp;

    :goto_0
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    iput-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    iput-object v5, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultInitialAudio()[B
    .locals 1

    sget-object v0, Landroid/service/voice/HotwordAudioStream;->DEFAULT_INITIAL_EMPTY_AUDIO:[B

    return-object v0
.end method

.method private static blacklist defaultMetadata()Landroid/os/PersistableBundle;
    .locals 1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultTimestamp()Landroid/media/AudioTimestamp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist initialAudioToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/HotwordAudioStream$Builder;
    .locals 3

    new-instance v0, Landroid/service/voice/HotwordAudioStream$Builder;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v2}, Landroid/service/voice/HotwordAudioStream$Builder;-><init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordAudioStream$Builder;->setTimestamp(Landroid/media/AudioTimestamp;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordAudioStream$Builder;->setMetadata(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordAudioStream$Builder;->setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordAudioStream;

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAudioFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getInitialAudio()[B
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    return-object v0
.end method

.method public whitelist getMetadata()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getTimestamp()Landroid/media/AudioTimestamp;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordAudioStream { audioFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioStreamParcelFileDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initialAudio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream;->initialAudioToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1
    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
