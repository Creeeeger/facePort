.class public final enum Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter",
        "",
        "Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum FREQUENCY_2_4:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum FREQUENCY_5:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum FREQUENCY_6:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum OPEN:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum SECURED:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum WIFI_5:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum WIFI_6:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

.field public static final enum WIFI_7:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->OPEN:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v2, "SECURED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->SECURED:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v3, "FREQUENCY_2_4"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->FREQUENCY_2_4:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v4, "FREQUENCY_5"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->FREQUENCY_5:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v5, "FREQUENCY_6"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->FREQUENCY_6:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v6, "WIFI_5"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->WIFI_5:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v7, "WIFI_6"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->WIFI_6:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    new-instance v7, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    const-string v8, "WIFI_7"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->WIFI_7:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->$VALUES:[Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->$VALUES:[Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    return-object v0
.end method
