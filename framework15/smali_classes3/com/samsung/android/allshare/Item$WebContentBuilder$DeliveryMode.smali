.class public final enum Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item$WebContentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field public static final enum whitelist REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field public static final enum whitelist RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 3

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    sget-object v2, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const-string v1, "RELAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const-string v1, "REDIRECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-static {}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->$values()[Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->$VALUES:[Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumString:Ljava/lang/String;

    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0

    :cond_0
    const-string v0, "REDIRECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0

    :cond_1
    const-string v0, "RELAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0

    :cond_2
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0

    :cond_3
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->$VALUES:[Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumString:Ljava/lang/String;

    return-object v0
.end method
