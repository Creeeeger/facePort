.class public final enum Lcom/samsung/android/sume/core/types/ImgpType;
.super Ljava/lang/Enum;
.source "ImgpType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/ImgpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist ANY:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CROP:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist QUALITY:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 10
    new-instance v1, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v3, "RESIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 11
    new-instance v3, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v5, "CVT_COLOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 12
    new-instance v5, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v7, "CVT_DATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 13
    new-instance v7, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v9, "ROTATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 14
    new-instance v9, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v11, "CROP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 15
    new-instance v11, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v13, "SPLIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 16
    new-instance v13, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v15, "MERGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 17
    new-instance v15, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v14, "QUALITY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/sume/core/types/ImgpType;->QUALITY:Lcom/samsung/android/sume/core/types/ImgpType;

    .line 8
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/sume/core/types/ImgpType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/samsung/android/sume/core/types/ImgpType;->$VALUES:[Lcom/samsung/android/sume/core/types/ImgpType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ImgpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ImgpType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/ImgpType;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->$VALUES:[Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/ImgpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/ImgpType;

    return-object v0
.end method
