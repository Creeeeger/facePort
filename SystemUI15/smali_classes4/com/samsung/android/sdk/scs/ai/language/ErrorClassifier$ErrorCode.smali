.class public final enum Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SAFETY_FILTER_RECITATION_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

.field public static final enum SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;


# instance fields
.field private final mError:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v1, 0x64

    const-string v2, "DEVICE_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v2, 0x65

    const-string v3, "DEVICE_NETORK_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_NETORK_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v3, 0xc7

    const-string v4, "DEVICE_UNKNOWN_ERROR"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v4, 0xc8

    const-string v5, "CLIENT_ERROR"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->CLIENT_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v5, 0x12c

    const-string v6, "AUTH_ERROR"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v6, 0x12d

    const-string v7, "AUTH_SA_ERROR"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->AUTH_SA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v6, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v7, 0x190

    const-string v8, "SAFETY_FILTER_ERROR"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v7, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v8, 0x191

    const-string v9, "SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_UNSUPPORTED_LANGUAGE_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v8, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v9, 0x192

    const-string v10, "SAFETY_FILTER_RECITATION_ERROR"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SAFETY_FILTER_RECITATION_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v9, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v10, 0x1f4

    const-string v11, "SERVER_ERROR"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    new-instance v10, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    const/16 v11, 0x1f5

    const-string v12, "SERVER_QUOTA_ERROR"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->SERVER_QUOTA_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    filled-new-array/range {v0 .. v10}, [Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

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

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->mError:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    return-object v0
.end method
