.class public final enum Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;
.super Ljava/lang/Enum;
.source "ChartConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

.field public static final enum DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

.field public static final enum MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

.field public static final enum WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    const-string v1, "WEEKLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    const-string v3, "DAILY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    const-string v5, "MONTHLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->MONTHLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 46
    sput-object v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->$VALUES:[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;
    .locals 1

    .line 46
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;
    .locals 1

    .line 46
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->$VALUES:[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartConstants$ChartType;

    return-object v0
.end method
