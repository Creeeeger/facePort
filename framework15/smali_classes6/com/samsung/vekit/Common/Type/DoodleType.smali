.class public final enum Lcom/samsung/vekit/Common/Type/DoodleType;
.super Ljava/lang/Enum;
.source "DoodleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/DoodleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/DoodleType;

.field public static final enum blacklist EDIT:Lcom/samsung/vekit/Common/Type/DoodleType;

.field public static final enum blacklist LIVE:Lcom/samsung/vekit/Common/Type/DoodleType;

.field public static final enum blacklist STATIC:Lcom/samsung/vekit/Common/Type/DoodleType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/DoodleType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/DoodleType;->LIVE:Lcom/samsung/vekit/Common/Type/DoodleType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/DoodleType;->STATIC:Lcom/samsung/vekit/Common/Type/DoodleType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/DoodleType;->EDIT:Lcom/samsung/vekit/Common/Type/DoodleType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/DoodleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/DoodleType;

    const-string v1, "LIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/DoodleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/DoodleType;->LIVE:Lcom/samsung/vekit/Common/Type/DoodleType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/DoodleType;

    const-string v1, "STATIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/DoodleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/DoodleType;->STATIC:Lcom/samsung/vekit/Common/Type/DoodleType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/DoodleType;

    const-string v1, "EDIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/DoodleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/DoodleType;->EDIT:Lcom/samsung/vekit/Common/Type/DoodleType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/DoodleType;->$values()[Lcom/samsung/vekit/Common/Type/DoodleType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/DoodleType;->$VALUES:[Lcom/samsung/vekit/Common/Type/DoodleType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/DoodleType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/DoodleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/DoodleType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/DoodleType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/DoodleType;->$VALUES:[Lcom/samsung/vekit/Common/Type/DoodleType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/DoodleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/DoodleType;

    return-object v0
.end method
