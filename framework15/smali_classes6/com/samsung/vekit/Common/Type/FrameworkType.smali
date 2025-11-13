.class public final enum Lcom/samsung/vekit/Common/Type/FrameworkType;
.super Ljava/lang/Enum;
.source "FrameworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/FrameworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/FrameworkType;

.field public static final enum blacklist MULTI:Lcom/samsung/vekit/Common/Type/FrameworkType;

.field public static final enum blacklist SINGLE:Lcom/samsung/vekit/Common/Type/FrameworkType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/FrameworkType;
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/FrameworkType;->SINGLE:Lcom/samsung/vekit/Common/Type/FrameworkType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/FrameworkType;->MULTI:Lcom/samsung/vekit/Common/Type/FrameworkType;

    filled-new-array {v0, v1}, [Lcom/samsung/vekit/Common/Type/FrameworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/FrameworkType;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FrameworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FrameworkType;->SINGLE:Lcom/samsung/vekit/Common/Type/FrameworkType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FrameworkType;

    const-string v1, "MULTI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FrameworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FrameworkType;->MULTI:Lcom/samsung/vekit/Common/Type/FrameworkType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/FrameworkType;->$values()[Lcom/samsung/vekit/Common/Type/FrameworkType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/FrameworkType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FrameworkType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/FrameworkType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/FrameworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/FrameworkType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/FrameworkType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/FrameworkType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FrameworkType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/FrameworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/FrameworkType;

    return-object v0
.end method
