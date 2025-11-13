.class public final synthetic Lcom/samsung/android/gtscell/data/GtsItem$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/gtscell/data/GtsItemFormat;->values()[Lcom/samsung/android/gtscell/data/GtsItemFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsItem$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_TEXT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_INT:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_LONG:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_DOUBLE:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URI:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsItemFormat;->FORMAT_URL:Lcom/samsung/android/gtscell/data/GtsItemFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    return-void
.end method
