.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum DEVICE_NOT_PROVISIONED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum DEVICE_PROVISION_FAILED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_INCOMPATIBLE_DEVICE_MODEL:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_INTERNAL_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_INVALID_ARGUMENTS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_MODEL_KEY_REVOKED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_MODEL_PACKAGE_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_MODEL_POLICY_VIOLATION:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNSUPPORTED_COMPUTEUNIT:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNSUPPORTED_MODEL_TYPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum KNOX_AI_UNSUPPORTED_OP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static final enum SUCCESS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

.field public static valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 14

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->SUCCESS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_NOT_PROVISIONED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_PROVISION_FAILED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v5, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INTERNAL_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v6, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_OP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v7, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_POLICY_VIOLATION:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v8, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_PACKAGE_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v9, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_COMPUTEUNIT:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v10, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_MODEL_TYPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v11, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INVALID_ARGUMENTS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v12, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_KEY_REVOKED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    sget-object v13, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INCOMPATIBLE_DEVICE_MODEL:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    filled-new-array/range {v0 .. v13}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const/4 v1, -0x1

    const-string v2, "KNOX_AI_UNKNOWN_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->SUCCESS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "DEVICE_NOT_PROVISIONED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_NOT_PROVISIONED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "DEVICE_PROVISION_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->DEVICE_PROVISION_FAILED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_SERVICE_FAILURE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_INTERNAL_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INTERNAL_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_UNSUPPORTED_OP"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_OP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_MODEL_POLICY_VIOLATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_POLICY_VIOLATION:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_MODEL_PACKAGE_ERROR"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_PACKAGE_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_UNSUPPORTED_COMPUTEUNIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_COMPUTEUNIT:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_UNSUPPORTED_MODEL_TYPE"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNSUPPORTED_MODEL_TYPE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_INVALID_ARGUMENTS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INVALID_ARGUMENTS:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_MODEL_KEY_REVOKED"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_MODEL_KEY_REVOKED:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    const-string v1, "KNOX_AI_INCOMPATIBLE_DEVICE_MODEL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_INCOMPATIBLE_DEVICE_MODEL:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->valueMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->valueMap:Ljava/util/Map;

    iget v5, v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->value:I

    return-void
.end method

.method public static getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->value:I

    return p0
.end method
