.class public abstract synthetic Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkContentProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->values()[Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkContentProvider$1;->a:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->CALL_TYPE_CONDITION:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkContentProvider$1;->a:[I

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->CALL_TYPE_ACTION:Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
