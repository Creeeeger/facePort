.class public final Landroid/hardware/soundtrigger/KeyphraseMetadata;
.super Ljava/lang/Object;
.source "KeyphraseMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mKeyphrase:Ljava/lang/String;

.field private final blacklist mRecognitionModeFlags:I

.field private final blacklist mSupportedLocales:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    iput-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    iput p4, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    iput-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-static {v5, v2, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-static {v5, v2, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v4, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
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

    check-cast v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    iget v4, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    iget v4, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    return v0
.end method

.method public blacklist getKeyphrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRecognitionModeFlags()I
    .locals 1

    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    return v0
.end method

.method public blacklist getSupportedLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    add-int/2addr v0, v2

    return v0
.end method

.method public greylist-max-o supportsLocale(Ljava/util/Locale;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getSupportedLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getSupportedLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o supportsPhrase(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getKeyphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getKeyphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyphraseMetadata { id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyphrase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedLocales = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModeFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
