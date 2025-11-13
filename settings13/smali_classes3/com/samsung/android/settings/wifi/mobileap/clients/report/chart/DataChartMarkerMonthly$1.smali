.class synthetic Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly$1;
.super Ljava/lang/Object;
.source "DataChartMarkerMonthly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->values()[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DataChartMarkerMonthly$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$CategoryViewConstants$CategoryType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_UNLOCK:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
