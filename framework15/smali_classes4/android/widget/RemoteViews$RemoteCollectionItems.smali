.class public final Landroid/widget/RemoteViews$RemoteCollectionItems;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteCollectionItems"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHasStableIds:Z

.field private blacklist mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

.field private final blacklist mIds:[J

.field private final blacklist mViewTypeCount:I

.field private final blacklist mViews:[Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViews(Landroid/widget/RemoteViews$RemoteCollectionItems;)[Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToParcel(Landroid/os/Parcel;IZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews$RemoteCollectionItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0x186a0

    if-gt v0, v1, :cond_3

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    new-array v2, v0, [Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot unparcel a RemoteCollectionItems that was parceled as attached without providing data for a root RemoteViews"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    new-instance v11, Landroid/widget/RemoteViews;

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    aput-object v11, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate RemoteCollectionItems length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RemoteViews"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor blacklist <init>([J[Landroid/widget/RemoteViews;ZI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    iput-boolean p3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    iput p4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-lt p4, v0, :cond_2

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    if-gt v1, p4, :cond_1

    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    aget-object v2, p2, v2

    invoke-static {v2, v0}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View type count is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but the collection contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " different layout ids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View type count must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteCollectionItems has different number of ids and views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist visitUris(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;IZ)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    iget-boolean v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot call writeToParcelAttached for a RemoteCollectionItems without first calling setHierarchyRootData()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_2

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v3, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    invoke-static {v3, v2}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getItemCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    array-length v0, v0

    return v0
.end method

.method public whitelist getItemId(I)J
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getItemView(I)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    return v0
.end method

.method blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 4

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToParcel(Landroid/os/Parcel;IZ)V

    return-void
.end method
