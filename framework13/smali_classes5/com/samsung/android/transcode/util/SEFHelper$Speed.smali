.class public final enum Lcom/samsung/android/transcode/util/SEFHelper$Speed;
.super Ljava/lang/Enum;
.source "SEFHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/util/SEFHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Speed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/transcode/util/SEFHelper$Speed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

.field public static final enum blacklist TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 46
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    new-instance v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v4, "HALF"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    new-instance v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v6, "ONE_FOURTH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v8, "ONE_EIGHTH"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v10, "TWO_TIMES"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    new-instance v10, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v12, "FOUR_TIMES"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 47
    new-instance v12, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v14, "EIGHT_TIMES"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    new-instance v14, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v13, "SIXTEEN_TIMES"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    new-instance v13, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const-string v15, "THIRTY_TWO_TIMES"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 45
    new-array v9, v9, [Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v13, v9, v11

    sput-object v9, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->$VALUES:[Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "va"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    .line 53
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .locals 1

    .line 45
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->$VALUES:[Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v0}, [Lcom/samsung/android/transcode/util/SEFHelper$Speed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0
.end method
