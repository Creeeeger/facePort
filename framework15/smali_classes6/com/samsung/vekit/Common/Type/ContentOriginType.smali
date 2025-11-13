.class public final enum Lcom/samsung/vekit/Common/Type/ContentOriginType;
.super Ljava/lang/Enum;
.source "ContentOriginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ContentOriginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/ContentOriginType;

.field public static final enum blacklist EXTERNAL:Lcom/samsung/vekit/Common/Type/ContentOriginType;

.field public static final enum blacklist SAMSUNG:Lcom/samsung/vekit/Common/Type/ContentOriginType;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/vekit/Common/Type/ContentOriginType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/ContentOriginType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->UNKNOWN:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentOriginType;->SAMSUNG:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ContentOriginType;->EXTERNAL:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/ContentOriginType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ContentOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->UNKNOWN:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;

    const-string v1, "SAMSUNG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ContentOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->SAMSUNG:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;

    const-string v1, "EXTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ContentOriginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->EXTERNAL:Lcom/samsung/vekit/Common/Type/ContentOriginType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ContentOriginType;->$values()[Lcom/samsung/vekit/Common/Type/ContentOriginType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ContentOriginType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ContentOriginType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/ContentOriginType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentOriginType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ContentOriginType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ContentOriginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ContentOriginType;

    return-object v0
.end method
