.class Lcom/samsung/android/settings/connection/ConnectionsSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "ConnectionsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 272
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 275
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0xc39

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isBluetoothEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 278
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v4, 0xc89

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 279
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 282
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v4, 0xc8d

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 283
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isNfcTurnOn(Landroid/content/Context;)Z

    move-result p1

    .line 286
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0xc8e

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 287
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
