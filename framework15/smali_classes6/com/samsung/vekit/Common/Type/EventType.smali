.class public final enum Lcom/samsung/vekit/Common/Type/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/EventType;

.field public static final enum blacklist DESTROYED:Lcom/samsung/vekit/Common/Type/EventType;

.field public static final enum blacklist INITIALIZED:Lcom/samsung/vekit/Common/Type/EventType;

.field public static final enum blacklist PLAY_COMPELTED:Lcom/samsung/vekit/Common/Type/EventType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/EventType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/EventType;->INITIALIZED:Lcom/samsung/vekit/Common/Type/EventType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/EventType;->DESTROYED:Lcom/samsung/vekit/Common/Type/EventType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/EventType;->PLAY_COMPELTED:Lcom/samsung/vekit/Common/Type/EventType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/EventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/EventType;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/EventType;->INITIALIZED:Lcom/samsung/vekit/Common/Type/EventType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/EventType;

    const-string v1, "DESTROYED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/EventType;->DESTROYED:Lcom/samsung/vekit/Common/Type/EventType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/EventType;

    const-string v1, "PLAY_COMPELTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/EventType;->PLAY_COMPELTED:Lcom/samsung/vekit/Common/Type/EventType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/EventType;->$values()[Lcom/samsung/vekit/Common/Type/EventType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/EventType;->$VALUES:[Lcom/samsung/vekit/Common/Type/EventType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/EventType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/EventType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/EventType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/EventType;->$VALUES:[Lcom/samsung/vekit/Common/Type/EventType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/EventType;

    return-object v0
.end method
