.class public final enum Lcom/samsung/android/allshare/Item$SeekMode;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum whitelist ANY:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum whitelist BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum whitelist NONE:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum whitelist TIME:Lcom/samsung/android/allshare/Item$SeekMode;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 201
    new-instance v0, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 203
    new-instance v1, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v3, "TIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/Item$SeekMode;->TIME:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 205
    new-instance v3, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v5, "ANY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/Item$SeekMode;->ANY:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 207
    new-instance v5, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 209
    new-instance v7, Lcom/samsung/android/allshare/Item$SeekMode;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/samsung/android/allshare/Item$SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    .line 199
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/allshare/Item$SeekMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/allshare/Item$SeekMode;->$VALUES:[Lcom/samsung/android/allshare/Item$SeekMode;

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

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$SeekMode;->enumString:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 225
    if-nez p0, :cond_0

    .line 226
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 228
    :cond_0
    const-string v0, "ANY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->ANY:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 230
    :cond_1
    const-string v0, "BYTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 232
    :cond_2
    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 234
    :cond_3
    const-string v0, "TIME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->TIME:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 236
    :cond_4
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 239
    :cond_5
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 199
    const-class v0, Lcom/samsung/android/allshare/Item$SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1

    .line 199
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->$VALUES:[Lcom/samsung/android/allshare/Item$SeekMode;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$SeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$SeekMode;->enumString:Ljava/lang/String;

    return-object v0
.end method
