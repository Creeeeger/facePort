.class synthetic Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil$1;
.super Ljava/lang/Object;
.source "ChartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$ChartConstants$ChartType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->values()[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$ChartConstants$ChartType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil$1;->$SwitchMap$com$samsung$android$settings$wifi$mobileap$clients$report$chart$ChartConstants$ChartType:[I

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
