.class public final enum Lcom/samsung/vekit/Common/Type/PVFocusObjectType;
.super Ljava/lang/Enum;
.source "PVFocusObjectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/PVFocusObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist BG:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist HUMAN_BODY:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist HUMAN_FACE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist HUMAN_HEAD:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist NONE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist OT:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist PET_BODY:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

.field public static final enum blacklist PET_FACE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/PVFocusObjectType;
    .locals 8

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->NONE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->HUMAN_FACE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->PET_FACE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->HUMAN_BODY:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->PET_BODY:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->HUMAN_HEAD:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->OT:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->BG:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->NONE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const-string v1, "HUMAN_FACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->HUMAN_FACE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const-string v1, "PET_FACE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->PET_FACE:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const-string v1, "HUMAN_BODY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->HUMAN_BODY:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const-string v1, "PET_BODY"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->PET_BODY:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const-string v1, "HUMAN_HEAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->HUMAN_HEAD:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const-string v1, "OT"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->OT:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    const-string v1, "BG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->BG:Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->$values()[Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

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

    iput p3, p0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->value:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/PVFocusObjectType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/PVFocusObjectType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/PVFocusObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/PVFocusObjectType;

    return-object v0
.end method
