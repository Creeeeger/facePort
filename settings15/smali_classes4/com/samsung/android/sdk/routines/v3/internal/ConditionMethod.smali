.class public final enum Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string/jumbo v1, "unknown"

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string v2, "isSatisfied"

    const-string v3, "IS_SATISFIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string/jumbo v3, "onEnabled"

    const-string v4, "ON_ENABLED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string/jumbo v4, "onDisabled"

    const-string v5, "ON_DISABLED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string v5, "getLabelParam"

    const-string v6, "GET_LABEL_PARAM"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string v6, "isValid"

    const-string v7, "IS_VALID"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string v7, "isSupport"

    const-string v8, "IS_SUPPORT"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string v8, "getConfigTemplateContents"

    const-string v9, "GET_CONFIG_TEMPLATE_CONTENTS"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string v9, "getErrorDialogContents"

    const-string v10, "GET_ERROR_DIALOG_CONTENTS"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const-string/jumbo v10, "onMigrate"

    const-string v11, "ON_MIGRATE"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    return-object v0
.end method
