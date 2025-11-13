.class public final Landroid/app/usage/UsageEventsQuery;
.super Ljava/lang/Object;
.source "UsageEventsQuery.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEventsQuery$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageEventsQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBeginTimeMillis:J

.field private final blacklist mEndTimeMillis:J

.field private final blacklist mEventTypes:[I

.field private final blacklist mPackageNames:[Ljava/lang/String;

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/UsageEventsQuery$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEventsQuery$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEventsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/usage/UsageEventsQuery$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/usage/UsageEventsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmEndTimeMillis(Landroid/app/usage/UsageEventsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmEventTypes(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmUserId(Landroid/app/usage/UsageEventsQuery$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmPackageNames(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmPackageNames(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/usage/UsageEventsQuery$Builder;Landroid/app/usage/UsageEventsQuery-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEventsQuery;-><init>(Landroid/app/usage/UsageEventsQuery$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    iget-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/usage/UsageEventsQuery-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEventsQuery;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBeginTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    return-wide v0
.end method

.method public whitelist getEndTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    return-wide v0
.end method

.method public whitelist getEventTypes()[I
    .locals 2

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    iget-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    iget v0, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
