.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

.field public static final enum DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

.field public static final enum UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;


# instance fields
.field abbrev:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    const/4 v1, 0x0

    const-string v2, "dvc"

    const-string v3, "DEVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    const/4 v2, 0x1

    const-string v3, "uix"

    const-string v4, "UIX"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    filled-new-array {v0, v1}, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v0

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

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

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->abbrev:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-object v0
.end method


# virtual methods
.method public final getAbbrev()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->abbrev:Ljava/lang/String;

    return-object p0
.end method
