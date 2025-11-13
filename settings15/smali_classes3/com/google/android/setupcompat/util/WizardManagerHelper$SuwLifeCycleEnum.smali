.class public final enum Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

.field public static final enum UNKNOWN:Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;->UNKNOWN:Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    new-instance v1, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    const-string v2, "INITIALIZATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    const-string v3, "PREDEFERRED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    const-string v4, "DEFERRED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    const-string v5, "PORTAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    const-string v6, "RESTORE_ANYTIME"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;->$VALUES:[Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;->$VALUES:[Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/util/WizardManagerHelper$SuwLifeCycleEnum;

    return-object v0
.end method
