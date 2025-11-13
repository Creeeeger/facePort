.class Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "ZenModeSoundVibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method

.method private isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 129
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 103
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    .line 105
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v2, 0x8dd4

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/16 v2, 0x20

    .line 106
    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings$2;->isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v2, 0x8dd5

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/16 v2, 0x40

    .line 110
    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings$2;->isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v2, 0x8dd6

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/16 v2, 0x80

    .line 114
    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings$2;->isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v2, 0x8dd7

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v2, 0x2

    .line 118
    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings$2;->isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v2, 0x8dd8

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/4 v2, 0x1

    .line 122
    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings$2;->isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 123
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
