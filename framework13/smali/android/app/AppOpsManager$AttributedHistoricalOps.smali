.class public final Landroid/app/AppOpsManager$AttributedHistoricalOps;
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
    name = "AttributedHistoricalOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->filter([Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessDuration(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseRejectCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 6790
    new-instance v0, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 6
    .param p1, "other"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6525
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6526
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6527
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6528
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6529
    .local v2, "origOp":Landroid/app/AppOpsManager$HistoricalOp;
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOp;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp-IA;)V

    .line 6530
    .local v3, "cloneOp":Landroid/app/AppOpsManager$HistoricalOp;
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    .line 6531
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6533
    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6527
    .end local v2    # "origOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v3    # "cloneOp":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6535
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 6771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6775
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 6776
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6777
    .local v1, "attributionTag":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 6778
    .local v2, "historicalOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;>;"
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 6779
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 6780
    const-class v3, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 6783
    :cond_1
    iput-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6784
    iput-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6787
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 6520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6521
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6522
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;)V"
        }
    .end annotation

    .line 6706
    .local p2, "historicalOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6707
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6708
    iput-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6711
    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 3
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 6661
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    .line 6662
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6663
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6664
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6666
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 8
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flag"    # I
    .param p4, "discreteAccessTime"    # J
    .param p6, "discreteAccessDuration"    # J
    .param p8, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 6616
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalOp;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6618
    return-void
.end method

.method private blacklist filter([Ljava/lang/String;IIDJJ)V
    .locals 13
    .param p1, "opNames"    # [Ljava/lang/String;
    .param p2, "filter"    # I
    .param p3, "historyFilter"    # I
    .param p4, "scaleFactor"    # D
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J

    .line 6575
    move-object v0, p0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    .line 6576
    .local v1, "opCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6577
    iget-object v3, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6578
    .local v3, "op":Landroid/app/AppOpsManager$HistoricalOp;
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_0

    .line 6579
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    .line 6578
    move-object v12, p1

    invoke-static {p1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6580
    iget-object v4, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 6578
    :cond_0
    move-object v12, p1

    .line 6582
    :cond_1
    move-object v4, v3

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalOp;IDJJ)V

    .line 6576
    .end local v3    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v12, p1

    .line 6585
    .end local v2    # "i":I
    return-void
.end method

.method private blacklist getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 3
    .param p1, "opCode"    # I

    .line 6669
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6670
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6672
    :cond_0
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsOpToString()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 6673
    .local v0, "opStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6674
    .local v1, "op":Landroid/app/AppOpsManager$HistoricalOp;
    if-nez v1, :cond_1

    .line 6675
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    move-object v1, v2

    .line 6676
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6678
    :cond_1
    return-object v1
.end method

.method private blacklist increaseAccessCount(IIIJ)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6600
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6601
    return-void
.end method

.method private blacklist increaseAccessDuration(IIIJ)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6610
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6611
    return-void
.end method

.method private blacklist increaseRejectCount(IIIJ)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6605
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6606
    return-void
.end method

.method private blacklist isEmpty()Z
    .locals 4

    .line 6588
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6589
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6590
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6591
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalOp;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6592
    const/4 v3, 0x0

    return v3

    .line 6589
    .end local v2    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6595
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 6
    .param p1, "other"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6557
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6558
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 6559
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6560
    .local v2, "otherOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 6561
    .local v3, "thisOp":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v3, :cond_0

    .line 6562
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    goto :goto_1

    .line 6564
    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    .line 6565
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6567
    :cond_1
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6558
    .end local v2    # "otherOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v3    # "thisOp":Landroid/app/AppOpsManager$HistoricalOp;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6570
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .locals 8
    .param p1, "fractionToRemove"    # D

    .line 6538
    const/4 v0, 0x0

    .line 6539
    .local v0, "splice":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    .line 6540
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 6541
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 6542
    .local v3, "origOps":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6543
    .local v4, "spliceOps":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v4, :cond_2

    .line 6544
    if-nez v0, :cond_0

    .line 6545
    new-instance v5, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    iget-object v6, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;Landroid/util/ArrayMap;)V

    move-object v0, v5

    .line 6547
    :cond_0
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 6548
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6550
    :cond_1
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6540
    .end local v3    # "origOps":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v4    # "spliceOps":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6553
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 6766
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 6728
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 6729
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 6731
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6733
    .local v2, "that":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6734
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6735
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6733
    :goto_0
    return v0

    .line 6729
    .end local v2    # "that":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 1
    .param p1, "opName"    # Ljava/lang/String;

    .line 6654
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6655
    const/4 v0, 0x0

    return-object v0

    .line 6657
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0
.end method

.method public whitelist getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 1
    .param p1, "index"    # I

    .line 6641
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 6644
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0

    .line 6642
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getOpCount()I
    .locals 1

    .line 6627
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6628
    const/4 v0, 0x0

    return v0

    .line 6630
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 1

    .line 6718
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 6744
    const/4 v0, 0x1

    .line 6745
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6746
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6747
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6756
    const/4 v0, 0x0

    .line 6757
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 6758
    :cond_0
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 6759
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 6760
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6761
    :cond_2
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 6762
    :cond_3
    return-void
.end method
