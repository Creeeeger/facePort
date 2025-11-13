.class public final enum Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
.super Ljava/lang/Enum;
.source "BnRFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/BnRFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum blacklist ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum blacklist INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum blacklist PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum blacklist STORAGE_FULL:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

.field public static final enum blacklist UNKNOWN_ERROR:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;


# instance fields
.field private blacklist code:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 65
    new-instance v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v1, "ERROR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->ERROR_NONE:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v1, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v3, "UNKNOWN_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->UNKNOWN_ERROR:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v5, "STORAGE_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->STORAGE_FULL:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v5, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v7, "INVALID_DATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->INVALID_DATA:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    new-instance v7, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    const-string v9, "PARTIAL_SUCCESS"

    const/4 v10, 0x4

    const/4 v11, 0x7

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->PARTIAL_SUCCESS:Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    .line 64
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->code:I

    .line 70
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;
    .locals 1

    .line 64
    sget-object v0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->$VALUES:[Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public blacklist getCode()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/android/wallpaperbackup/BnRFileHelper$ErrorCode;->code:I

    return v0
.end method
