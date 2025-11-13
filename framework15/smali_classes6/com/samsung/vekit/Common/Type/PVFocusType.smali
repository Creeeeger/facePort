.class public final enum Lcom/samsung/vekit/Common/Type/PVFocusType;
.super Ljava/lang/Enum;
.source "PVFocusType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/PVFocusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist AF:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist AF_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist FD:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist FD_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist NONE:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist TF:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist TFD:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist TFD_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

.field public static final enum blacklist TF_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/PVFocusType;
    .locals 9

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->NONE:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/PVFocusType;->AF_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/PVFocusType;->AF:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/PVFocusType;->TF_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/PVFocusType;->TF:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/PVFocusType;->FD_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/PVFocusType;->FD:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/PVFocusType;->TFD_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    sget-object v8, Lcom/samsung/vekit/Common/Type/PVFocusType;->TFD:Lcom/samsung/vekit/Common/Type/PVFocusType;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/vekit/Common/Type/PVFocusType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->NONE:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "AF_TRACKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->AF_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "AF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->AF:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "TF_TRACKING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->TF_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "TF"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->TF:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "FD_TRACKING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->FD_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "FD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->FD:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "TFD_TRACKING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->TFD_TRACKING:Lcom/samsung/vekit/Common/Type/PVFocusType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    const-string v1, "TFD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PVFocusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->TFD:Lcom/samsung/vekit/Common/Type/PVFocusType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/PVFocusType;->$values()[Lcom/samsung/vekit/Common/Type/PVFocusType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVFocusType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/PVFocusType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/PVFocusType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/PVFocusType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/PVFocusType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PVFocusType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/PVFocusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/PVFocusType;

    return-object v0
.end method
