.class public final enum Lcom/samsung/android/allshare/Item$ContentAttributeType;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentAttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Item$ContentAttributeType;

.field public static final enum whitelist CONTENT_360_VIEW:Lcom/samsung/android/allshare/Item$ContentAttributeType;

.field public static final enum whitelist CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .locals 2

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_360_VIEW:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    sget-object v1, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/allshare/Item$ContentAttributeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    const/4 v1, 0x0

    const-string v2, "360View"

    const-string v3, "CONTENT_360_VIEW"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/allshare/Item$ContentAttributeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_360_VIEW:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    new-instance v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    const/4 v1, 0x1

    const-string v2, "UNKNOWN"

    const-string v3, "CONTENT_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/allshare/Item$ContentAttributeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    invoke-static {}, Lcom/samsung/android/allshare/Item$ContentAttributeType;->$values()[Lcom/samsung/android/allshare/Item$ContentAttributeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->$VALUES:[Lcom/samsung/android/allshare/Item$ContentAttributeType;

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

    iput-object p3, p0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->enumString:Ljava/lang/String;

    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0

    :cond_0
    const-string v0, "360View"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_360_VIEW:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0

    :cond_1
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->$VALUES:[Lcom/samsung/android/allshare/Item$ContentAttributeType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$ContentAttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->enumString:Ljava/lang/String;

    return-object v0
.end method
