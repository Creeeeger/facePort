.class public final Lcom/android/systemui/edgelighting/effect/utils/SalesCode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final isChn:Z

.field public static final isIND:Z

.field public static final isKor:Z

.field public static final isMAL:Z

.field public static final isMYM:Z

.field public static final isPHI:Z

.field public static final isSIN:Z

.field public static final isTHL:Z

.field public static final isVn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XXV"

    const-string v2, "XEV"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "XTC"

    const-string v3, "SMA"

    const-string v4, "GLB"

    const-string v5, "XTE"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "XME"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "THL"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "XID"

    const-string v6, "XSE"

    const-string v7, "INS"

    const-string v8, "INU"

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "MYM"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "XSP"

    const-string v8, "SIN"

    const-string v9, "MM1"

    const-string v10, "STH"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    const-string v16, "LGT"

    const-string v17, "LUO"

    const-string v8, "SKC"

    const-string v9, "KTC"

    const-string v10, "LUC"

    const-string v11, "KOO"

    const-string v12, "SKT"

    const-string v13, "SKO"

    const-string v14, "KTT"

    const-string v15, "KTO"

    const-string v18, "K06"

    const-string v19, "K01"

    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "CHU"

    const-string v10, "CTC"

    const-string v11, "CHM"

    const-string v12, "CHC"

    const-string v13, "CHN"

    filled-new-array {v11, v9, v10, v12, v13}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isVn:Z

    invoke-static {v0, v2}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isPHI:Z

    invoke-static {v0, v3}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMAL:Z

    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isTHL:Z

    invoke-static {v0, v5}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isIND:Z

    invoke-static {v0, v6}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isMYM:Z

    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isSIN:Z

    invoke-static {v0, v8}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isKor:Z

    invoke-static {v0, v9}, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isChn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs is(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
