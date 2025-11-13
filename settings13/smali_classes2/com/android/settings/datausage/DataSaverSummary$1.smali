.class Lcom/android/settings/datausage/DataSaverSummary$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "DataSaverSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    .line 358
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x1bbd

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 359
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
