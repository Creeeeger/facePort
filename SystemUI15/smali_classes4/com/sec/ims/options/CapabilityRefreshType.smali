.class public final enum Lcom/sec/ims/options/CapabilityRefreshType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/options/CapabilityRefreshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 7

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "ONLY_IF_NOT_FRESH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "ONLY_IF_EXPIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "ALWAYS_FORCE_REFRESH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "ONLY_IF_NOT_FRESH_IN_MSG_CTX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "DISABLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "FORCE_REFRESH_UCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "FORCE_REFRESH_SYNC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->$values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->$VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 1

    const-class v0, Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 1

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->$VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {v0}, [Lcom/sec/ims/options/CapabilityRefreshType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0
.end method
