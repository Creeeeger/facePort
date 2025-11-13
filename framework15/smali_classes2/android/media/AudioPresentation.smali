.class public final Landroid/media/AudioPresentation;
.super Ljava/lang/Object;
.source "AudioPresentation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPresentation$Builder;,
        Landroid/media/AudioPresentation$MasteringIndicationType;,
        Landroid/media/AudioPresentation$ContentClassifier;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_COMMENTARY:I = 0x5

.field public static final whitelist CONTENT_DIALOG:I = 0x4

.field public static final whitelist CONTENT_EMERGENCY:I = 0x6

.field public static final whitelist CONTENT_HEARING_IMPAIRED:I = 0x3

.field public static final whitelist CONTENT_MAIN:I = 0x0

.field public static final whitelist CONTENT_MUSIC_AND_EFFECTS:I = 0x1

.field public static final whitelist CONTENT_UNKNOWN:I = -0x1

.field public static final whitelist CONTENT_VISUALLY_IMPAIRED:I = 0x2

.field public static final whitelist CONTENT_VOICEOVER:I = 0x7

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MASTERED_FOR_3D:I = 0x3

.field public static final whitelist MASTERED_FOR_HEADPHONE:I = 0x4

.field public static final whitelist MASTERED_FOR_STEREO:I = 0x1

.field public static final whitelist MASTERED_FOR_SURROUND:I = 0x2

.field public static final whitelist MASTERING_NOT_INDICATED:I = 0x0

.field public static final whitelist PRESENTATION_ID_UNKNOWN:I = -0x1

.field public static final whitelist PROGRAM_ID_UNKNOWN:I = -0x1


# instance fields
.field private final greylist-max-o mAudioDescriptionAvailable:Z

.field private final greylist-max-o mDialogueEnhancementAvailable:Z

.field private final blacklist mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLanguage:Landroid/icu/util/ULocale;

.field private final greylist-max-o mMasteringIndication:I

.field private final greylist-max-o mPresentationId:I

.field private final greylist-max-o mProgramId:I

.field private final greylist-max-o mSpokenSubtitlesAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/AudioPresentation$1;

    invoke-direct {v0}, Landroid/media/AudioPresentation$1;-><init>()V

    sput-object v0, Landroid/media/AudioPresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/icu/util/ULocale;",
            "IZZZ",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    iput p2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    iput-object p3, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    iput p4, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    iput-boolean p5, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    iput-boolean p6, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    iput-boolean p7, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;Landroid/media/AudioPresentation-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/AudioPresentation;-><init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    const-class v0, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPresentation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioPresentation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getULabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    return-object v0
.end method

.method private blacklist getULocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    return-object v0
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
    instance-of v1, p1, Landroid/media/AudioPresentation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/AudioPresentation;

    iget v3, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPresentation;->mProgramId:I

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-direct {v1}, Landroid/media/AudioPresentation;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getMasteringIndication()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasAudioDescription()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasSpokenSubtitles()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasDialogueEnhancement()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-direct {v1}, Landroid/media/AudioPresentation;->getULabels()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getLabels()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMasteringIndication()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    return v0
.end method

.method public whitelist getPresentationId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    return v0
.end method

.method public whitelist getProgramId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    return v0
.end method

.method public whitelist hasAudioDescription()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    return v0
.end method

.method public whitelist hasDialogueEnhancement()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    return v0
.end method

.method public whitelist hasSpokenSubtitles()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ presentation id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", program id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", labels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mastering indication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", audio description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", spoken subtitles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dialogue enhancement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Landroid/media/AudioPresentation;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    invoke-virtual {p0}, Landroid/media/AudioPresentation;->getMasteringIndication()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/media/AudioPresentation;->hasAudioDescription()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p0}, Landroid/media/AudioPresentation;->hasSpokenSubtitles()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p0}, Landroid/media/AudioPresentation;->hasDialogueEnhancement()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
