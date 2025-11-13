.class public abstract synthetic Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->values()[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
