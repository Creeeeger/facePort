.class public final enum Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET_CONFIG_TEMPLATE_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum GET_ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum GET_LABEL_PARAM:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum IS_SATISFIED:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum IS_SUPPORT:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum IS_VALID:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum ON_DISABLED:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum ON_ENABLED:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum ON_MIGRATE:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v2, 0x1

    const-string v3, "isSatisfied"

    const-string v4, "IS_SATISFIED"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->IS_SATISFIED:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v3, 0x2

    const-string v4, "onEnabled"

    const-string v5, "ON_ENABLED"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->ON_ENABLED:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v4, 0x3

    const-string v5, "onDisabled"

    const-string v6, "ON_DISABLED"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->ON_DISABLED:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v4, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v5, 0x4

    const-string v6, "getLabelParam"

    const-string v7, "GET_LABEL_PARAM"

    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->GET_LABEL_PARAM:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v6, 0x5

    const-string v7, "isValid"

    const-string v8, "IS_VALID"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->IS_VALID:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v6, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v7, 0x6

    const-string v8, "isSupport"

    const-string v9, "IS_SUPPORT"

    invoke-direct {v6, v9, v7, v8}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->IS_SUPPORT:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v7, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/4 v8, 0x7

    const-string v9, "getConfigTemplateContents"

    const-string v10, "GET_CONFIG_TEMPLATE_CONTENTS"

    invoke-direct {v7, v10, v8, v9}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->GET_CONFIG_TEMPLATE_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v8, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/16 v9, 0x8

    const-string v10, "getErrorDialogContents"

    const-string v11, "GET_ERROR_DIALOG_CONTENTS"

    invoke-direct {v8, v11, v9, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->GET_ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    new-instance v9, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

    const/16 v10, 0x9

    const-string v11, "onMigrate"

    const-string v12, "ON_MIGRATE"

    invoke-direct {v9, v12, v10, v11}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;->ON_MIGRATE:Lcom/samsung/android/sdk/routines/v3/internal/ConditionMethod;

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
