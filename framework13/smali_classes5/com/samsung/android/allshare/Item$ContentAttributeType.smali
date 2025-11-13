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
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 133
    new-instance v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    const-string v1, "CONTENT_360_VIEW"

    const/4 v2, 0x0

    const-string v3, "360View"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/allshare/Item$ContentAttributeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_360_VIEW:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 135
    new-instance v1, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    const-string v3, "CONTENT_UNKNOWN"

    const/4 v4, 0x1

    const-string v5, "UNKNOWN"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/allshare/Item$ContentAttributeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 131
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/allshare/Item$ContentAttributeType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/allshare/Item$ContentAttributeType;->$VALUES:[Lcom/samsung/android/allshare/Item$ContentAttributeType;

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

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->enumString:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 151
    if-nez p0, :cond_0

    .line 152
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0

    .line 154
    :cond_0
    const-string v0, "360View"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_360_VIEW:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0

    .line 156
    :cond_1
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0

    .line 159
    :cond_2
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->CONTENT_UNKNOWN:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    const-class v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .locals 1

    .line 131
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->$VALUES:[Lcom/samsung/android/allshare/Item$ContentAttributeType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Item$ContentAttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Item$ContentAttributeType;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$ContentAttributeType;->enumString:Ljava/lang/String;

    return-object v0
.end method
