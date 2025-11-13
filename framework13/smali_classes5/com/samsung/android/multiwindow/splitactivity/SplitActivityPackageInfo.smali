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

    .line 51
    new-instance v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    .line 36
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    .line 44
    sget-object v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "fullscreenActivities":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic blacklist lambda$getInfo$1(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;)Z
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    .line 77
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->matchWithWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$remove$0(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;)Z
    .locals 1
    .param p0, "sourceName"    # Ljava/lang/String;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    .line 68
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 64
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;

    .line 85
    .local v2, "that":Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;
    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    .line 86
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    .line 87
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 83
    .end local v2    # "that":Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    .line 76
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "targetName"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 69
    return-void
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    .line 111
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo$$ExternalSyntheticLambda1;-><init>()V

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

    .line 110
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    .local v0, "tmpArray":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityPackageInfo;->mFullscreenActivities:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    return-void
.end method
