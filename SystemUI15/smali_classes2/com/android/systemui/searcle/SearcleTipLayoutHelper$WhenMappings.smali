.class public abstract synthetic Lcom/android/systemui/searcle/SearcleTipLayoutHelper$WhenMappings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->values()[Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->Left:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->Center:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;->Right:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$TipsNaviAlign;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->values()[Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->Y:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XYOnRTL:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;->XYOnLTR:Lcom/android/systemui/searcle/SearcleTipLayoutHelper$DirectionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-object v0, Lcom/android/systemui/searcle/SearcleTipLayoutHelper$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
