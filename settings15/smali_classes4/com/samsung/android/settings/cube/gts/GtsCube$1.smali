.class synthetic Lcom/samsung/android/settings/cube/gts/GtsCube$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/gts/GtsCube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

.field static final synthetic $SwitchMap$com$samsung$android$settings$cube$ControlResult$ResultCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->values()[Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

    const/4 v1, 0x1

    const/4 v2, 0x7

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

    aput v2, v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

    aput v3, v4, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v4, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

    const/4 v5, 0x4

    aput v5, v4, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

    const/4 v5, 0x5

    aput v5, v4, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ErrorCode:[I

    const/4 v5, 0x6

    aput v5, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->values()[Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ResultCode:[I

    :try_start_6
    aput v1, v4, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ResultCode:[I

    aput v2, v0, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/samsung/android/settings/cube/gts/GtsCube$1;->$SwitchMap$com$samsung$android$settings$cube$ControlResult$ResultCode:[I

    aput v3, v0, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
