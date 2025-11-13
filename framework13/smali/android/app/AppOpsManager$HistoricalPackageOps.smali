.class public final Landroid/app/AppOpsManager$HistoricalPackageOps;
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
    name = "HistoricalPackageOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributedHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$HistoricalPackageOps;->addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessDuration(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseRejectCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 6414
    new-instance v0, Landroid/app/AppOpsManager$HistoricalPackageOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalPackageOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .locals 6
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6179
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6180
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6181
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6182
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 6183
    .local v2, "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    new-instance v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps-IA;)V

    .line 6184
    .local v3, "cloneOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    .line 6185
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6187
    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6181
    .end local v2    # "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v3    # "cloneOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6189
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6193
    sget-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6194
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager$HistoricalPackageOps-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6175
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 6176
    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 3
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 6253
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    .line 6254
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6255
    .local v0, "attributionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6256
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6258
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 11
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flag"    # I
    .param p5, "discreteAccessTime"    # J
    .param p7, "discreteAccessDuration"    # J
    .param p9, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 6292
    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    move v3, p1

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-static/range {v2 .. v10}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6294
    return-void
.end method

.method private blacklist filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .locals 15
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "opNames"    # [Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "historyFilter"    # I
    .param p5, "fractionToRemove"    # D
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J

    .line 6236
    move-object v0, p0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 6237
    .local v1, "attributionCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 6238
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v13

    .line 6239
    .local v13, "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_0

    .line 6240
    invoke-virtual {v13}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 6239
    move-object/from16 v14, p1

    invoke-static {v14, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6241
    iget-object v3, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 6239
    :cond_0
    move-object/from16 v14, p1

    .line 6243
    :cond_1
    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-static/range {v3 .. v12}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V

    .line 6245
    invoke-virtual {v13}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 6246
    iget-object v3, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6237
    .end local v13    # "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v14, p1

    .line 6250
    .end local v2    # "i":I
    return-void
.end method

.method private blacklist getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .locals 2
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 6307
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6308
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6310
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6312
    .local v0, "historicalAttributionOp":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-nez v0, :cond_1

    .line 6313
    new-instance v1, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 6314
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6316
    :cond_1
    return-object v0
.end method

.method private blacklist increaseAccessCount(ILjava/lang/String;IIJ)V
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 6273
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6275
    return-void
.end method

.method private blacklist increaseAccessDuration(ILjava/lang/String;IIJ)V
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 6285
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6287
    return-void
.end method

.method private blacklist increaseRejectCount(ILjava/lang/String;IIJ)V
    .locals 6
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 6279
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 6281
    return-void
.end method

.method private blacklist isEmpty()Z
    .locals 4

    .line 6261
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6262
    .local v0, "attributionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6263
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6264
    .local v2, "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-static {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6265
    const/4 v3, 0x0

    return v3

    .line 6262
    .end local v2    # "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6268
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .locals 6
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6216
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 6217
    .local v0, "attributionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 6218
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 6219
    .local v2, "otherAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    nop

    .line 6220
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 6219
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 6221
    .local v3, "thisAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-eqz v3, :cond_0

    .line 6222
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    goto :goto_1

    .line 6224
    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    .line 6225
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6227
    :cond_1
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6217
    .end local v2    # "otherAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v3    # "thisAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6231
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .locals 7
    .param p1, "fractionToRemove"    # D

    .line 6197
    const/4 v0, 0x0

    .line 6198
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 6199
    .local v1, "attributionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 6200
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 6201
    .local v3, "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 6202
    .local v4, "spliceOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-eqz v4, :cond_2

    .line 6203
    if-nez v0, :cond_0

    .line 6204
    new-instance v5, Landroid/app/AppOpsManager$HistoricalPackageOps;

    iget-object v6, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 6206
    :cond_0
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 6207
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 6209
    :cond_1
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6199
    .end local v3    # "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v4    # "spliceOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6212
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 6405
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6429
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 6430
    return v0

    .line 6432
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 6435
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6436
    .local v2, "other":Landroid/app/AppOpsManager$HistoricalPackageOps;
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6437
    return v1

    .line 6439
    :cond_2
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_3

    .line 6440
    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_4

    .line 6441
    return v1

    .line 6443
    :cond_3
    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6444
    return v1

    .line 6446
    :cond_4
    return v0

    .line 6433
    .end local v2    # "other":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :cond_5
    :goto_0
    return v1
.end method

.method public whitelist getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .locals 1
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 6495
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6496
    const/4 v0, 0x0

    return-object v0

    .line 6498
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object v0
.end method

.method public whitelist getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .locals 1
    .param p1, "index"    # I

    .line 6481
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 6484
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object v0

    .line 6482
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getAttributedOpsCount()I
    .locals 1

    .line 6465
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6466
    const/4 v0, 0x0

    return v0

    .line 6468
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 6
    .param p1, "opName"    # Ljava/lang/String;

    .line 6383
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6384
    return-object v1

    .line 6387
    :cond_0
    const/4 v0, 0x0

    .line 6388
    .local v0, "combinedOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    .line 6389
    .local v2, "numAttributions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 6390
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6391
    .local v4, "attributionOp":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v4, :cond_2

    .line 6392
    if-nez v0, :cond_1

    .line 6393
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v5, v4, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp-IA;)V

    move-object v0, v5

    goto :goto_1

    .line 6395
    :cond_1
    invoke-static {v0, v4}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    .line 6389
    .end local v4    # "attributionOp":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6400
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method public whitelist getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 6
    .param p1, "index"    # I

    .line 6353
    const/4 v0, 0x0

    .line 6354
    .local v0, "numOpsFound":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 6356
    .local v1, "numAttributions":I
    const/4 v2, 0x0

    .local v2, "code":I
    :goto_0
    const/16 v3, 0x79

    if-ge v2, v3, :cond_3

    .line 6357
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    .line 6359
    .local v3, "opName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "attributionNum":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 6360
    invoke-virtual {p0, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6361
    if-ne v0, p1, :cond_0

    .line 6362
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    return-object v5

    .line 6364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 6365
    goto :goto_2

    .line 6359
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6356
    .end local v3    # "opName":Ljava/lang/String;
    .end local v4    # "attributionNum":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6371
    .end local v2    # "code":I
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public whitelist getOpCount()I
    .locals 6

    .line 6326
    const/4 v0, 0x0

    .line 6327
    .local v0, "numOps":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 6329
    .local v1, "numAttributions":I
    const/4 v2, 0x0

    .local v2, "code":I
    :goto_0
    const/16 v3, 0x79

    if-ge v2, v3, :cond_2

    .line 6330
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    .line 6332
    .local v3, "opName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "attributionNum":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 6333
    invoke-virtual {p0, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6334
    add-int/lit8 v0, v0, 0x1

    .line 6335
    goto :goto_2

    .line 6332
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6329
    .end local v3    # "opName":Ljava/lang/String;
    .end local v4    # "attributionNum":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6340
    .end local v2    # "code":I
    :cond_2
    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 6302
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 6451
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6452
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_1

    .line 6453
    invoke-virtual {v3}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    add-int/2addr v2, v1

    .line 6454
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6410
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6411
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 6412
    return-void
.end method
