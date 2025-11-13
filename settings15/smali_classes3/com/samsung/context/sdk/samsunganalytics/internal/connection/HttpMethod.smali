.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

.field public static final enum GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

.field public static final enum POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;


# instance fields
.field method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    filled-new-array {v0, v1}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    move-result-object v0

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->method:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
    .locals 1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    return-object v0
.end method
