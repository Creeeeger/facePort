.class public final Landroid/telephony/ims/DelegateRegistrationState;
.super Ljava/lang/Object;
.source "DelegateRegistrationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/DelegateRegistrationState$Builder;,
        Landroid/telephony/ims/DelegateRegistrationState$DeregisteringReason;,
        Landroid/telephony/ims/DelegateRegistrationState$DeregisteredReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEREGISTERED_REASON_NOT_PROVISIONED:I = 0x1

.field public static final whitelist DEREGISTERED_REASON_NOT_REGISTERED:I = 0x2

.field public static final whitelist DEREGISTERED_REASON_UNKNOWN:I = 0x0

.field public static final whitelist DEREGISTERING_REASON_DESTROY_PENDING:I = 0x6

.field public static final whitelist DEREGISTERING_REASON_FEATURE_TAGS_CHANGING:I = 0x5

.field public static final whitelist DEREGISTERING_REASON_LOSING_PDN:I = 0x7

.field public static final whitelist DEREGISTERING_REASON_PDN_CHANGE:I = 0x3

.field public static final whitelist DEREGISTERING_REASON_PROVISIONING_CHANGE:I = 0x4

.field public static final whitelist DEREGISTERING_REASON_UNSPECIFIED:I = 0x8


# instance fields
.field private final blacklist mDeregisteredTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeregisteringTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRegisteredTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRegisteringTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeregisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeregisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$1;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/DelegateRegistrationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/DelegateRegistrationState;->readStateFromParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/DelegateRegistrationState;->readStateFromParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/DelegateRegistrationState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/DelegateRegistrationState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/DelegateRegistrationState-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/DelegateRegistrationState;-><init>()V

    return-void
.end method

.method private blacklist readStateFromParcel(Landroid/os/Parcel;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v4, v2, v3}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist writeStateToParcel(Landroid/os/Parcel;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
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

    check-cast v2, Landroid/telephony/ims/DelegateRegistrationState;

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

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

.method public whitelist getDeregisteredFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist getDeregisteringFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist getRegisteredFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist getRegisteringFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DelegateRegistrationState{ registered={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, registering={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, deregistering={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, deregistered={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteredTags:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteringTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState;->writeStateToParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mDeregisteredTags:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState;->writeStateToParcel(Landroid/os/Parcel;Ljava/util/Set;)V

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState;->mRegisteringTags:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    return-void
.end method
