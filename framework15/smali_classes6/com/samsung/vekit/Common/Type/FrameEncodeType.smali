.class public final enum Lcom/samsung/vekit/Common/Type/FrameEncodeType;
.super Ljava/lang/Enum;
.source "FrameEncodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/FrameEncodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/FrameEncodeType;

.field public static final enum blacklist AUTO:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

.field public static final enum blacklist OFF:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

.field public static final enum blacklist ON:Lcom/samsung/vekit/Common/Type/FrameEncodeType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/FrameEncodeType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->ON:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->OFF:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->AUTO:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FrameEncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->ON:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FrameEncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->OFF:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/FrameEncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->AUTO:Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->$values()[Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FrameEncodeType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/FrameEncodeType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/FrameEncodeType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/FrameEncodeType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/FrameEncodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/FrameEncodeType;

    return-object v0
.end method
