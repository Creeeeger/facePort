.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
.super Ljava/lang/Enum;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

.field public static final enum GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

.field public static final enum POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;


# instance fields
.field method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 12
    .line 13
    const-string v2, "POST"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->method:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    .line 8
    .line 9
    return-object v0
.end method
