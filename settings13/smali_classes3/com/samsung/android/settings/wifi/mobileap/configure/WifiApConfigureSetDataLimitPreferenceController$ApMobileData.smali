.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;
.super Ljava/lang/Object;
.source "WifiApConfigureSetDataLimitPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApMobileData"
.end annotation


# instance fields
.field private apContext:Landroid/content/Context;

.field private isLimited:Z

.field private limitDataStr:Ljava/lang/String;

.field private limitText:Ljava/lang/String;

.field private limitUnit:Ljava/lang/String;

.field private limitValue:Ljava/math/BigDecimal;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

.field private usageText:Ljava/lang/String;

.field private usageUnit:Ljava/lang/String;

.field private usageValue:Ljava/math/BigDecimal;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;Landroid/content/Context;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    return-void
.end method

.method private getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_0

    .line 265
    invoke-virtual {p1, p2, p3, p4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    .line 266
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "f"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    .line 267
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p4, p0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    new-array p3, v0, [Ljava/lang/Object;

    .line 270
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, p0

    const-string p0, "%d"

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method getLimitedUnit()Ljava/lang/String;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitUnit:Ljava/lang/String;

    return-object p0
.end method

.method getLimitedValue()Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitText:Ljava/lang/String;

    return-object p0
.end method

.method getLimitedValueByUnite(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2

    .line 285
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 286
    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method getUsageUnit()Ljava/lang/String;
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageUnit:Ljava/lang/String;

    return-object p0
.end method

.method getUsageValue()Ljava/lang/String;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageText:Ljava/lang/String;

    return-object p0
.end method

.method isLimited()Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited:Z

    return p0
.end method

.method saveMobileDataLimitChange()V
    .locals 3

    .line 238
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save DataLimited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited:Z

    const-string v1, "wifi_ap_mobile_data_limit"

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    const-string v1, "wifi_ap_mobile_data_limit_value"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method setMobileDataLimited(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited:Z

    .line 218
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetMB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    .line 219
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    .line 221
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetGB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    const/4 v0, 0x6

    if-gez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetMB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitText:Ljava/lang/String;

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_display_mb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitUnit:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetGB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitText:Ljava/lang/String;

    .line 226
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_display_gb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitUnit:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method setMobileDataUnLimited()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited:Z

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    return-void
.end method

.method updateApMobileDataLimit()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_mobile_data_limit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited:Z

    if-eqz v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_mobile_data_limit_value"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limited? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->isLimited:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " limit Value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 204
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitDataStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetGB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, 0x6

    if-gez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetMB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitText:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->data_usage_display_mb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitUnit:Ljava/lang/String;

    goto :goto_2

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitValue:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetGB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitText:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->data_usage_display_gb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->limitUnit:Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method

.method updateUsageValue(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 248
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageValue:Ljava/math/BigDecimal;

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetMB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x2

    if-gez p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageValue:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetKB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageText:Ljava/lang/String;

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_display_kb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageUnit:Ljava/lang/String;

    goto :goto_1

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageValue:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetGB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gez p1, :cond_2

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageValue:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetMB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageText:Ljava/lang/String;

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_display_mb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageUnit:Ljava/lang/String;

    goto :goto_1

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageValue:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetGB(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->getBigDecimalValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageText:Ljava/lang/String;

    .line 258
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_display_gb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->usageUnit:Ljava/lang/String;

    :goto_1
    return-void
.end method
