.class public final Landroid/service/voice/VisualQueryDetectedResult;
.super Ljava/lang/Object;
.source "VisualQueryDetectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryDetectedResult$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisualQueryDetectedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessibilityDetectionData:[B

.field private final blacklist mPartialQuery:Ljava/lang/String;

.field private final blacklist mSpeakerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAccessibilityDetectionData()[B
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultAccessibilityDetectionData()[B

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultPartialQuery()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultPartialQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSpeakerId()I
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultSpeakerId()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryDetectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisualQueryDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    iput-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult;->onConstructed()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    iput-object p3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultAccessibilityDetectionData()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultPartialQuery()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static blacklist defaultSpeakerId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getMaxSpeakerId()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method private blacklist onConstructed()V
    .locals 4

    iget v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->getMaxSpeakerId()I

    move-result v1

    const-string/jumbo v2, "speakerId"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .locals 2

    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;-><init>()V

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setPartialQuery(Ljava/lang/String;)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setSpeakerId(I)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setAccessibilityDetectionData([B)Landroid/service/voice/VisualQueryDetectedResult$Builder;

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

    check-cast v2, Landroid/service/voice/VisualQueryDetectedResult;

    iget-object v3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    iget v4, v2, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    iget-object v4, v2, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

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

.method public whitelist getAccessibilityDetectionData()[B
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    return-object v0
.end method

.method public whitelist getPartialQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSpeakerId()I
    .locals 1

    iget v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualQueryDetectedResult { partialQuery = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessibilityDetectionData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

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
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
