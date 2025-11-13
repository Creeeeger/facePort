.class public final synthetic Lcom/samsung/android/gtscell/data/GtsExpressionRaw$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/gtscell/data/GtsExpressionType;->values()[Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_COLOR:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON_URI:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_URL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_LEVEL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_PROGRESS:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method
