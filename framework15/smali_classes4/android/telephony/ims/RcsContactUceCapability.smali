.class public final Landroid/telephony/ims/RcsContactUceCapability;
.super Ljava/lang/Object;
.source "RcsContactUceCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;,
        Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;,
        Landroid/telephony/ims/RcsContactUceCapability$RequestResult;,
        Landroid/telephony/ims/RcsContactUceCapability$SourceType;,
        Landroid/telephony/ims/RcsContactUceCapability$CapabilityMechanism;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_MECHANISM_OPTIONS:I = 0x2

.field public static final whitelist CAPABILITY_MECHANISM_PRESENCE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_RESULT_FOUND:I = 0x3

.field public static final whitelist REQUEST_RESULT_NOT_FOUND:I = 0x2

.field public static final whitelist REQUEST_RESULT_NOT_ONLINE:I = 0x1

.field public static final whitelist REQUEST_RESULT_UNKNOWN:I = 0x0

.field public static final whitelist SOURCE_TYPE_CACHED:I = 0x1

.field public static final whitelist SOURCE_TYPE_NETWORK:I


# instance fields
.field private blacklist mCapabilityMechanism:I

.field private final blacklist mContactUri:Landroid/net/Uri;

.field private blacklist mEntityUri:Landroid/net/Uri;

.field private final blacklist mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPresenceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestResult:I

.field private blacklist mSourceType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFeatureTags(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresenceTuples(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEntityUri(Landroid/telephony/ims/RcsContactUceCapability;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestResult(Landroid/telephony/ims/RcsContactUceCapability;I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactUceCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    iput-object p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    iput p2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    iput p3, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    const-class v2, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactUceCapability-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCapabilityMechanism()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    return v0
.end method

.method public whitelist getCapabilityTuple(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple;
    .locals 4

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public whitelist getCapabilityTuples()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContactUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getEntityUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRequestResult()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    return v0
.end method

.method public whitelist getSourceType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RcsContactUceCapability"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "(presence) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    if-ne v1, v2, :cond_1

    const-string v1, "(options) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "(?) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const-string v4, "XXX"

    const-string/jumbo v5, "null"

    if-eqz v1, :cond_2

    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "uri (isNull)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    move-object v1, v4

    goto :goto_1

    :cond_3
    move-object v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_5

    const-string v1, "entity uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v1, "entity uri (isNull)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const-string/jumbo v4, "}"

    if-ne v1, v3, :cond_7

    const-string v1, ", presenceTuples={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    if-ne v1, v2, :cond_8

    const-string v1, ", featureTags={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
