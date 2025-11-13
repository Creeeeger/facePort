.class Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "SmartPopupViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
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

    .line 66
    invoke-static {p1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v1, 0x105d6

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 71
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->-$$Nest$sfgetmSuggestedPackageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 82
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v1, 0x105d7

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz p0, :cond_2

    const-string p0, "On"

    goto :goto_1

    :cond_2
    const-string p0, "Off"

    .line 83
    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 85
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
