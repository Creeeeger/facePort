.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;


# instance fields
.field domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const/4 v1, 0x0

    const-string v2, "https://regi.di.atlas.samsung.com"

    const-string v3, "REGISTRATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const/4 v2, 0x1

    const-string v3, "https://dc.di.atlas.samsung.com"

    const-string v4, "POLICY"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const/4 v3, 0x2

    const-string v4, ""

    const-string v5, "DLS"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    move-result-object v0

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object v0
.end method


# virtual methods
.method public final setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method
