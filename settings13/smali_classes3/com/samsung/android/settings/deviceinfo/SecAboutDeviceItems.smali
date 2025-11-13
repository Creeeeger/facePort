.class public Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;
.super Ljava/lang/Object;
.source "SecAboutDeviceItems.java"


# static fields
.field public static final ABOUTITEM_STATUS_BATTERY_CAPACITY:I

.field public static final ABOUTITEM_STATUS_FCC_CERTIFICATION:I

.field public static final ABOUTITEM_STATUS_ISED_CERTIFICATION:I

.field public static final ABOUTITEM_STATUS_MODELNUMBER_DS_SUFFIX:I

.field public static final ABOUTITEM_STATUS_MODELNUMBER_EXTRA_SUFFIX:I

.field public static final ABOUTITEM_STATUS_MODELNUMBER_NFC_SUFFIX:I

.field public static final ABOUTITEM_STATUS_RATED:I

.field public static final ABOUTITEM_STATUS_RATED_MAX:I

.field public static final ABOUTITEM_STATUS_SINGLE_SIM_REMOVE_NFC_SUFFIX:I

.field public static final ABOUTITEM_STATUS_SPEN_FCC_CERTIFICATION:I

.field public static final ABOUTITEM_STATUS_SPEN_ISED_CERTIFICATION:I

.field public static STATUS_DONT_CARE:I = -0x1

.field public static STATUS_NOT_SUPPORTED:I = 0x0

.field public static STATUS_SUPPORTED:I = 0x1

.field public static STATUS_SUPPORTED_WITH_VALUE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fcc"

    .line 66
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_FCC_CERTIFICATION:I

    const-string v0, "ised"

    .line 67
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_ISED_CERTIFICATION:I

    const-string v0, "fccforspen"

    .line 68
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_FCC_CERTIFICATION:I

    const-string v0, "isedforspen"

    .line 69
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_ISED_CERTIFICATION:I

    const-string v0, "rated"

    .line 70
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED:I

    const-string v0, "ratedmax"

    .line 71
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED_MAX:I

    const-string v0, "batterycapacity"

    .line 72
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_BATTERY_CAPACITY:I

    const-string v0, "modelnumberDSsuffix"

    .line 73
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_MODELNUMBER_DS_SUFFIX:I

    const-string v0, "modelnumberNFCsuffix"

    .line 74
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_MODELNUMBER_NFC_SUFFIX:I

    const-string v0, "singleSimRemoveNFCsuffix"

    .line 75
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SINGLE_SIM_REMOVE_NFC_SUFFIX:I

    const-string v0, "modelnumberEXTRAsuffix"

    .line 76
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_MODELNUMBER_EXTRA_SUFFIX:I

    return-void
.end method

.method public static getItemValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 175
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->isStatusSupportedWithValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 178
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigAboutDeviceItems"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "\""

    .line 189
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 190
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 191
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") IndexInfo = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecAboutDeviceItems"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getSupportedStatus(Ljava/lang/String;)I
    .locals 5

    .line 98
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigAboutDeviceItems"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SecAboutDeviceItems"

    if-eqz v1, :cond_0

    const-string p0, "Don\'t care - AboutDeviceItems Delta is Null"

    .line 101
    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_DONT_CARE:I

    return p0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSC value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", item: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ")"

    if-nez v1, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t care ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_DONT_CARE:I

    return p0

    .line 118
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=disabled"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT SUPPORTED ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_NOT_SUPPORTED:I

    return p0

    .line 125
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPORTED ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=enabled"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_SUPPORTED:I

    return p0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORTED with value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_SUPPORTED_WITH_VALUE:I

    return p0
.end method

.method private static isStatusSupportedWithValue(Ljava/lang/String;)Z
    .locals 4

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "batterycapacity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "ratedmax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "rated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "ised"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "fcc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "isedforspen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_0

    :sswitch_6
    const-string v0, "fccforspen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 165
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    .line 162
    :pswitch_0
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_BATTERY_CAPACITY:I

    goto :goto_1

    .line 159
    :pswitch_1
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED_MAX:I

    goto :goto_1

    .line 156
    :pswitch_2
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED:I

    goto :goto_1

    .line 147
    :pswitch_3
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_ISED_CERTIFICATION:I

    goto :goto_1

    .line 144
    :pswitch_4
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_FCC_CERTIFICATION:I

    goto :goto_1

    .line 153
    :pswitch_5
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_ISED_CERTIFICATION:I

    goto :goto_1

    .line 150
    :pswitch_6
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_FCC_CERTIFICATION:I

    .line 167
    :goto_1
    sget v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_SUPPORTED_WITH_VALUE:I

    if-ne v0, p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x508fadf7 -> :sswitch_6
        -0x469d935a -> :sswitch_5
        0x18b46 -> :sswitch_4
        0x317749 -> :sswitch_3
        0x6744f84 -> :sswitch_2
        0x1932f760 -> :sswitch_1
        0x222265c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
