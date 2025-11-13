.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 529
    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarTypeForSALog(Landroid/content/Context;)I

    move-result p0

    .line 530
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v0, 0x12494

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/samsung/android/settings/logging/status/StatusData;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    .line 532
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
