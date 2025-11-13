.class public final enum Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
.super Ljava/lang/Enum;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

.field public static final enum blacklist NV12:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

.field public static final enum blacklist NV12_UBWC:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

.field public static final enum blacklist NV12_VENUS:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

.field public static final enum blacklist RGBA8888:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

.field public static final enum blacklist YV12:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;


# instance fields
.field private blacklist value:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetName(I)Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->getName(I)Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 13

    .line 435
    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    const-string v1, "NV12"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->NV12:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 440
    new-instance v1, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    const-string v4, "NV12_VENUS"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->NV12_VENUS:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 445
    new-instance v4, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    const-string v7, "NV12_UBWC"

    const/4 v8, 0x5

    invoke-direct {v4, v7, v3, v8}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->NV12_UBWC:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 450
    new-instance v7, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    const-string v9, "YV12"

    const/4 v10, 0x3

    const/16 v11, 0xb

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->YV12:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 455
    new-instance v9, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    const-string v11, "RGBA8888"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v6, v12}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->RGBA8888:Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    .line 431
    new-array v8, v8, [Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v3

    aput-object v7, v8, v10

    aput-object v9, v8, v6

    sput-object v8, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 481
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 482
    iput p3, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->value:I

    .line 483
    return-void
.end method

.method private static blacklist getName(I)Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    .locals 5
    .param p0, "value"    # I

    .line 472
    invoke-static {}, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->values()[Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    move-result-object v0

    .line 473
    .local v0, "colorFormats":[Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 474
    .local v3, "colorFormat":Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    iget v4, v3, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->value:I

    if-ne v4, p0, :cond_0

    .line 475
    return-object v3

    .line 473
    .end local v3    # "colorFormat":Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 431
    const-class v0, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;
    .locals 1

    .line 431
    sget-object v0, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->$VALUES:[Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;->value:I

    return v0
.end method
