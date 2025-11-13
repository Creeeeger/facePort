.class public final enum Lcom/samsung/vekit/Common/Type/PVRequestType;
.super Ljava/lang/Enum;
.source "PVRequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/PVRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/PVRequestType;

.field public static final enum blacklist SET_DELETE_KEY_FRAME:Lcom/samsung/vekit/Common/Type/PVRequestType;

.field public static final enum blacklist SET_KEY_FRAMES:Lcom/samsung/vekit/Common/Type/PVRequestType;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/PVRequestType;
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVRequestType;->SET_KEY_FRAMES:Lcom/samsung/vekit/Common/Type/PVRequestType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/PVRequestType;->SET_DELETE_KEY_FRAME:Lcom/samsung/vekit/Common/Type/PVRequestType;

    filled-new-array {v0, v1}, [Lcom/samsung/vekit/Common/Type/PVRequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVRequestType;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "SET_KEY_FRAMES"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/vekit/Common/Type/PVRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVRequestType;->SET_KEY_FRAMES:Lcom/samsung/vekit/Common/Type/PVRequestType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVRequestType;

    const/4 v1, 0x1

    const/4 v2, 0x7

    const-string v3, "SET_DELETE_KEY_FRAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/vekit/Common/Type/PVRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVRequestType;->SET_DELETE_KEY_FRAME:Lcom/samsung/vekit/Common/Type/PVRequestType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/PVRequestType;->$values()[Lcom/samsung/vekit/Common/Type/PVRequestType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVRequestType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVRequestType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/vekit/Common/Type/PVRequestType;->value:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/PVRequestType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/PVRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/PVRequestType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/PVRequestType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVRequestType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVRequestType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/PVRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/PVRequestType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Type/PVRequestType;->value:I

    return v0
.end method
