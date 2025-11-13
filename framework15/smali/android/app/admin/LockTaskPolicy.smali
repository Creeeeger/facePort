.class public final Landroid/app/admin/LockTaskPolicy;
.super Landroid/app/admin/PolicyValue;
.source "LockTaskPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/admin/PolicyValue<",
        "Landroid/app/admin/LockTaskPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/LockTaskPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_LOCK_TASK_FLAG:I = 0x10


# instance fields
.field private blacklist mFlags:I

.field private blacklist mPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/LockTaskPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/LockTaskPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/LockTaskPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    iput p1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/admin/LockTaskPolicy;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    iget v0, p1, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/LockTaskPolicy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;->setPackagesInternal(Ljava/util/Set;)V

    :cond_0
    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;->setPackagesInternal(Ljava/util/Set;)V

    :cond_0
    iput p2, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist setPackagesInternal(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxPackageNameLength(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

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

    check-cast v2, Landroid/app/admin/LockTaskPolicy;

    iget-object v3, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    iget-object v4, v2, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    iget v4, v2, Landroid/app/admin/LockTaskPolicy;->mFlags:I

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

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    return v0
.end method

.method public whitelist getPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getValue()Landroid/app/admin/LockTaskPolicy;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getValue()Landroid/app/admin/LockTaskPolicy;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    iget v1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setFlags(I)V
    .locals 0

    iput p1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    return-void
.end method

.method public blacklist setPackages(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;->setPackagesInternal(Ljava/util/Set;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockTaskPolicy {mPackages= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    iget-object v2, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mFlags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

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
    .locals 2

    iget-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
