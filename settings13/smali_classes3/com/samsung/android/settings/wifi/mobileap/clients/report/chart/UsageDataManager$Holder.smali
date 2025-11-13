.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$Holder;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager-IA;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager$Holder;->INSTANCE:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    return-void
.end method
