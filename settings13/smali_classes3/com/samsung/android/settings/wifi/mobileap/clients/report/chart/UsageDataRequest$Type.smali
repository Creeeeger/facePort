.class public final enum Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;
.super Ljava/lang/Enum;
.source "UsageDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum CLEAR_CACHED_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum DATE_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum RESET_USAGE_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum RETRIEVE_ALL_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum RETRIEVE_DAILY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum RETRIEVE_PKG_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum RETRIEVE_USAGE_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum RETRIEVE_WEEKLY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum TIME_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum TIME_ZONE_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum UPDATE_DATABASE:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

.field public static final enum UPDATE_QOS_FIRST_BOOT:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 85
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v1, "RETRIEVE_ALL_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RETRIEVE_ALL_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v3, "RETRIEVE_DAILY_DATA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RETRIEVE_DAILY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v5, "RETRIEVE_WEEKLY_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RETRIEVE_WEEKLY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v7, "RETRIEVE_USAGE_DATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RETRIEVE_USAGE_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v9, "RETRIEVE_PKG_DATA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RETRIEVE_PKG_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    .line 86
    new-instance v9, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v11, "TIME_CHANGED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->TIME_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v13, "DATE_CHANGED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->DATE_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v13, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v15, "TIME_ZONE_CHANGED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->TIME_ZONE_CHANGED:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    .line 87
    new-instance v15, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v14, "UPDATE_DATABASE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->UPDATE_DATABASE:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v12, "UPDATE_QOS_FIRST_BOOT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->UPDATE_QOS_FIRST_BOOT:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v12, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v10, "RESET_USAGE_DATA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->RESET_USAGE_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    new-instance v10, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const-string v8, "CLEAR_CACHED_DATA"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->CLEAR_CACHED_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 84
    sput-object v8, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->$VALUES:[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;
    .locals 1

    .line 84
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;
    .locals 1

    .line 84
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->$VALUES:[Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataRequest$Type;

    return-object v0
.end method
