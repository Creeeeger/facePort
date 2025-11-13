.class public Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;
.super Ljava/lang/Object;
.source "SplitActivityPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFullscreenActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    iput-object p1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic blacklist lambda$getInfo$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;)Z
    .locals 1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->matchWithWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$remove$0(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;)Z
    .locals 1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

    check-cast v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public blacklist getInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
