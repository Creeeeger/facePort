.class public final enum Lcom/samsung/android/lib/episode/SceneResult$ErrorType;
.super Ljava/lang/Enum;
.source "SceneResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/episode/SceneResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/lib/episode/SceneResult$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum DEFAULT_VALUE:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum DEVICE_TYPE_MISMATCH:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum FAST_TRACK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum NO_PERMISSION:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum STORAGE_FULL:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum TEMPORARY_BLOCK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

.field public static final enum UNKNOWN_ERROR:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;


# instance fields
.field private mErrorReasonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 188
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v1, "FAST_TRACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->FAST_TRACK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 189
    new-instance v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v3, "INVALID_DATA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 190
    new-instance v3, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v5, "STORAGE_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->STORAGE_FULL:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 191
    new-instance v5, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->UNKNOWN_ERROR:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 192
    new-instance v7, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v9, "DEFAULT_VALUE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEFAULT_VALUE:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 193
    new-instance v9, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v11, "NOT_SUPPORTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 194
    new-instance v11, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v13, "NO_PERMISSION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NO_PERMISSION:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 195
    new-instance v13, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v15, "TEMPORARY_BLOCK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->TEMPORARY_BLOCK:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 196
    new-instance v15, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const-string v14, "DEVICE_TYPE_MISMATCH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEVICE_TYPE_MISMATCH:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

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

    .line 187
    sput-object v14, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->$VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput-object p3, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mReason:Ljava/lang/String;

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mErrorReasonList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Ljava/util/List;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mErrorReasonList:Ljava/util/List;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult$ErrorType;
    .locals 1

    .line 187
    const-class v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;
    .locals 1

    .line 187
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->$VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->mReason:Ljava/lang/String;

    return-object p0
.end method
