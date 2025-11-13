.class Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "ZenModeBlockedEffectsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 7
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

    .line 185
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 190
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    .line 191
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 193
    invoke-static {p1}, Landroid/app/NotificationManager$Policy;->secAreAllVisualEffectsSuppressed(I)Z

    move-result v0

    .line 194
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v2, 0x8dda

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 195
    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    .line 199
    :goto_1
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v6, 0x8ddb

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 200
    :goto_2
    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v4

    .line 204
    :goto_3
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v6, 0x8ddc

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    move-object v0, v3

    .line 205
    :goto_4
    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v4

    .line 209
    :goto_5
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v6, 0x8ddd

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    move-object v0, v3

    .line 210
    :goto_6
    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v4

    .line 214
    :goto_7
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v6, 0x8dde

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    move-object v0, v3

    .line 215
    :goto_8
    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v4

    .line 219
    :goto_9
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v6, 0x8ddf

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v0, :cond_a

    move-object v0, v2

    goto :goto_a

    :cond_a
    move-object v0, v3

    .line 220
    :goto_a
    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    .line 221
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_b

    goto :goto_b

    :cond_b
    move v1, v4

    .line 224
    :goto_b
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const v0, 0x8de0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    move-object v2, v3

    .line 225
    :goto_c
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
