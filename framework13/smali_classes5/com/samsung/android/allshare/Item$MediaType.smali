.class public final enum Lcom/samsung/android/allshare/Item$MediaType;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum whitelist ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum whitelist ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum whitelist ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum whitelist ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

.field public static final enum whitelist ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 78
    new-instance v0, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v1, "ITEM_FOLDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    .line 80
    new-instance v1, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v3, "ITEM_AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    .line 82
    new-instance v3, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v5, "ITEM_IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    .line 84
    new-instance v5, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v7, "ITEM_VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    .line 86
    new-instance v7, Lcom/samsung/android/allshare/Item$MediaType;

    const-string v9, "ITEM_UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/samsung/android/allshare/Item$MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    .line 76
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/allshare/Item$MediaType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/allshare/Item$MediaType;->$VALUES:[Lcom/samsung/android/allshare/Item$MediaType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$MediaType;->enumString:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 102
    if-nez p0, :cond_0

    .line 103
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 105
    :cond_0
    const-string v0, "ITEM_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 107
    :cond_1
    const-string v0, "ITEM_FOLDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 109
    :cond_2
    const-string v0, "ITEM_IMAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 111
    :cond_3
    const-string v0, "ITEM_UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 113
    :cond_4
    const-string v0, "ITEM_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 116
    :cond_5
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/samsung/android/allshare/Item$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Item$MediaType;
    .locals 1

    .line 76
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->$VALUES:[Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$MediaType;->enumString:Ljava/lang/String;

    return-object v0
.end method
