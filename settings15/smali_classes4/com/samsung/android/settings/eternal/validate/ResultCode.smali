.class final enum Lcom/samsung/android/settings/eternal/validate/ResultCode;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/eternal/validate/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/eternal/validate/ResultCode;

.field public static final enum CONDITIONAL_PASS:Lcom/samsung/android/settings/eternal/validate/ResultCode;

.field public static final enum FAIL:Lcom/samsung/android/settings/eternal/validate/ResultCode;

.field public static final enum PASS:Lcom/samsung/android/settings/eternal/validate/ResultCode;

.field public static final enum SKIP:Lcom/samsung/android/settings/eternal/validate/ResultCode;


# instance fields
.field private mResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/eternal/validate/ResultCode;

    const-string v1, "PASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/settings/eternal/validate/ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->PASS:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    new-instance v1, Lcom/samsung/android/settings/eternal/validate/ResultCode;

    const-string v2, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/samsung/android/settings/eternal/validate/ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/eternal/validate/ResultCode;->FAIL:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    new-instance v2, Lcom/samsung/android/settings/eternal/validate/ResultCode;

    const-string v3, "SKIP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/samsung/android/settings/eternal/validate/ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/eternal/validate/ResultCode;->SKIP:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    new-instance v3, Lcom/samsung/android/settings/eternal/validate/ResultCode;

    const/4 v4, 0x3

    const-string v5, "CONDITIONAL PASS"

    const-string v6, "CONDITIONAL_PASS"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/android/settings/eternal/validate/ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/settings/eternal/validate/ResultCode;->CONDITIONAL_PASS:Lcom/samsung/android/settings/eternal/validate/ResultCode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/settings/eternal/validate/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->$VALUES:[Lcom/samsung/android/settings/eternal/validate/ResultCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->mResult:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/validate/ResultCode;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/eternal/validate/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/eternal/validate/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/eternal/validate/ResultCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->$VALUES:[Lcom/samsung/android/settings/eternal/validate/ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/eternal/validate/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/eternal/validate/ResultCode;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/validate/ResultCode;->mResult:Ljava/lang/String;

    return-object p0
.end method
