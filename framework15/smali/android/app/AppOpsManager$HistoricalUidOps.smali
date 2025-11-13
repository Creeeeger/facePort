.class public final Landroid/app/AppOpsManager$HistoricalUidOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalUidOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalUidOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoricalPackageOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalUidOps;->addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHistory(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->clearHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/app/AppOpsManager$HistoricalUidOps;->filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalUidOps;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalUidOps;D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppOpsManager$HistoricalUidOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalUidOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalUidOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$HistoricalPackageOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps-IA;)V

    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalUidOps-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    sget-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager$HistoricalUidOps-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 3

    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    move v3, p1

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-static/range {v2 .. v11}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method private blacklist clearHistory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private blacklist filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v14

    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, p1

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move-object/from16 v15, p1

    :cond_1
    move-object v3, v14

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v3 .. v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v15, p1

    return-void
.end method

.method private blacklist getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .locals 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    if-nez v0, :cond_1

    new-instance v1, Landroid/app/AppOpsManager$HistoricalPackageOps;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private blacklist increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 7

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    return-void
.end method

.method private blacklist increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 7

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    return-void
.end method

.method private blacklist increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 7

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    return-void
.end method

.method private blacklist isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalPackageOps;

    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_1
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_0

    new-instance v5, Landroid/app/AppOpsManager$HistoricalUidOps;

    iget v6, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(I)V

    move-object v0, v5

    :cond_0
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_1
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
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
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalUidOps;

    iget v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iget v4, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_3

    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_4

    return v1

    :cond_3
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public whitelist getPackageCount()I
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object v0
.end method

.method public whitelist getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .locals 1

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getUid()I
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    return-void
.end method
