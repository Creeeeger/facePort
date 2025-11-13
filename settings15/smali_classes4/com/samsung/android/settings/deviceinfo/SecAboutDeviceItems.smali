.class public abstract Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ABOUTITEM_STATUS_BATTERY_CAPACITY:I

.field public static final ABOUTITEM_STATUS_EU_ECO_DESIGN:I

.field public static final ABOUTITEM_STATUS_FCC_CERTIFICATION:I

.field public static final ABOUTITEM_STATUS_ISED_CERTIFICATION:I

.field public static final ABOUTITEM_STATUS_MODELNUMBER_DS_SUFFIX:I

.field public static final ABOUTITEM_STATUS_MODELNUMBER_EXTRA_SUFFIX:I

.field public static final ABOUTITEM_STATUS_RATED:I

.field public static final ABOUTITEM_STATUS_RATED_MAX:I

.field public static final ABOUTITEM_STATUS_SPEN_FCC_CERTIFICATION:I

.field public static final ABOUTITEM_STATUS_SPEN_ISED_CERTIFICATION:I

.field public static final ABOUTITEM_STATUS_TRA_NUMBERS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fcc"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_FCC_CERTIFICATION:I

    const-string v0, "ised"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_ISED_CERTIFICATION:I

    const-string v0, "fccforspen"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_FCC_CERTIFICATION:I

    const-string v0, "isedforspen"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_ISED_CERTIFICATION:I

    const-string/jumbo v0, "rated"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED:I

    const-string/jumbo v0, "ratedmax"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED_MAX:I

    const-string v0, "batterycapacity"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_BATTERY_CAPACITY:I

    const-string/jumbo v0, "modelnumberDSsuffix"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_MODELNUMBER_DS_SUFFIX:I

    const-string/jumbo v0, "modelnumberNFCsuffix"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    const-string/jumbo v0, "singleSimRemoveNFCsuffix"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    const-string/jumbo v0, "modelnumberEXTRAsuffix"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_MODELNUMBER_EXTRA_SUFFIX:I

    const-string/jumbo v0, "traNumber"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_TRA_NUMBERS:I

    const-string v0, "ecoDesign"

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_EU_ECO_DESIGN:I

    return-void
.end method

.method public static getItemValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "batterycapacity"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v3, "ratedmax"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v3, "ecoDesign"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "traNumber"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "rated"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "ised"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v3, "fcc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_0

    :sswitch_7
    const-string v3, "isedforspen"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_0

    :sswitch_8
    const-string v3, "fccforspen"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getSupportedStatus(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :pswitch_0
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_BATTERY_CAPACITY:I

    goto :goto_1

    :pswitch_1
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED_MAX:I

    goto :goto_1

    :pswitch_2
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_EU_ECO_DESIGN:I

    goto :goto_1

    :pswitch_3
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_TRA_NUMBERS:I

    goto :goto_1

    :pswitch_4
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_RATED:I

    goto :goto_1

    :pswitch_5
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_ISED_CERTIFICATION:I

    goto :goto_1

    :pswitch_6
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_FCC_CERTIFICATION:I

    goto :goto_1

    :pswitch_7
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_ISED_CERTIFICATION:I

    goto :goto_1

    :pswitch_8
    sget v2, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_FCC_CERTIFICATION:I

    :goto_1
    if-ne v0, v2, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_ConfigAboutDeviceItems"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\""

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Item ("

    const-string v5, ") IndexInfo = "

    const-string v6, "/"

    invoke-static {v2, v3, p0, v5, v6}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecAboutDeviceItems"

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    const-string p0, ""

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x508fadf7 -> :sswitch_8
        -0x469d935a -> :sswitch_7
        0x18b46 -> :sswitch_6
        0x317749 -> :sswitch_5
        0x6744f84 -> :sswitch_4
        0x84282cc -> :sswitch_3
        0x14b684af -> :sswitch_2
        0x1932f760 -> :sswitch_1
        0x222265c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSupportedStatus(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigAboutDeviceItems"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "SecAboutDeviceItems"

    if-eqz v1, :cond_0

    const-string p0, "Don\'t care - AboutDeviceItems Delta is Null"

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CSC value: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", item: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, ")"

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t care ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOT SUPPORTED ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUPPORTED ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUPPORTED with value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method
