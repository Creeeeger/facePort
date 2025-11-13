.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;
.super Ljava/lang/Object;
.source "WellbeingConstants.java"


# static fields
.field public static final DAYS_OF_WEEK:I

.field public static final MAX_DAYS:I

.field public static final MAX_WEEKS:I

.field public static final SAMSUNG_UNSUSPENDABLE_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOUND_DB_URI:Landroid/net/Uri;

.field public static final SUPPORTED_DAYS_OF_DAILY_VIEW_ONE_UI_3_0:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Ljava/time/Period;->ofWeeks(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Period;->getDays()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    const-string v1, "content://com.sec.android.app.volumemonitorprovider.VolumeMonitorProvider"

    .line 98
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->SOUND_DB_URI:Landroid/net/Uri;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.vending"

    const-string v4, "com.samsung.android.dialer"

    const-string v5, "com.skt.prod.dialer"

    const-string v6, "com.sec.android.app.clockpackage"

    const-string v7, "com.samsung.knox.securefolder"

    const-string v8, "com.samsung.android.app.watchmanager"

    const-string v9, "com.samsung.android.app.watchmanager2"

    const-string v10, "com.samsung.android.waterpluin"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->SAMSUNG_UNSUSPENDABLE_APPS:Ljava/util/ArrayList;

    const/4 v1, 0x4

    .line 165
    invoke-static {v1}, Ljava/time/Period;->ofWeeks(I)Ljava/time/Period;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Period;->getDays()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->MAX_DAYS:I

    add-int/lit8 v1, v1, 0x5

    .line 166
    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    sput v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->MAX_WEEKS:I

    const/16 v0, 0x1a

    .line 173
    invoke-static {v0}, Ljava/time/Period;->ofWeeks(I)Ljava/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->SUPPORTED_DAYS_OF_DAILY_VIEW_ONE_UI_3_0:I

    return-void
.end method
