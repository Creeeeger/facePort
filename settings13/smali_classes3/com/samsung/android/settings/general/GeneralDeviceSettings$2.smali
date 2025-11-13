.class Lcom/samsung/android/settings/general/GeneralDeviceSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "GeneralDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/GeneralDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 263
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-static {p1}, Lcom/samsung/android/settings/general/GeneralUtils;->getLanguageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x158

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 267
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {p1}, Lcom/samsung/android/settings/general/GeneralUtils;->getLanguageCount(Landroid/content/Context;)I

    move-result v0

    .line 269
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x1f41

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "default_input_method"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x125d

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
