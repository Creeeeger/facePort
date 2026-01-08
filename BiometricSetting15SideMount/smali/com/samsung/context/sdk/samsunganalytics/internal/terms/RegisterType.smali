.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;
.super Ljava/lang/Enum;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

.field public static final enum DELETE_SENSITIVE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

.field public static final enum SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 2
    .line 3
    const-string v1, "com.sec.android.diagmonagent.sa.terms.DELETE_APP_DATA"

    .line 4
    .line 5
    const-string v2, "DELETE_APP_DATA"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 12
    .line 13
    const-string v2, "com.sec.android.diagmonagent.sa.terms.DELETE_SENSITIVE_APP_DATA"

    .line 14
    .line 15
    const-string v3, "DELETE_SENSITIVE_APP_DATA"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->DELETE_SENSITIVE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 22
    .line 23
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 24
    .line 25
    const-string v3, "None"

    .line 26
    .line 27
    const-string v4, "SEND_PREVIOUS_REGISTRATION_INFO"

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->SEND_PREVIOUS_REGISTRATION_INFO:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 34
    .line 35
    filled-new-array {v0, v1, v2}, [Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->action:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
