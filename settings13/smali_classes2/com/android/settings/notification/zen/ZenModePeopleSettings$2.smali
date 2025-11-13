.class Lcom/android/settings/notification/zen/ZenModePeopleSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "ZenModePeopleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModePeopleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method

.method private isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 313
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
    .locals 12
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

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 223
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    .line 225
    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 227
    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    and-int/lit8 v3, v1, 0x8

    const-string v4, "favorite contacts only"

    const-string v5, "contacts only"

    const-string v6, "all"

    const/4 v7, 0x2

    const-string/jumbo v8, "none"

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0x8dd0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    if-eq v2, v10, :cond_1

    if-eq v2, v7, :cond_0

    move-object v2, v9

    goto :goto_0

    .line 240
    :cond_0
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v2, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 241
    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    goto :goto_0

    .line 236
    :cond_1
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v2, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 237
    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    goto :goto_0

    .line 232
    :cond_2
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v2, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 233
    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    goto :goto_0

    .line 247
    :cond_3
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v2, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 248
    invoke-virtual {v2, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 250
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x8dd1

    if-eqz v3, :cond_4

    .line 253
    iget v3, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v3, :cond_4

    .line 255
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 256
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    goto :goto_1

    .line 258
    :cond_4
    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const/16 v2, 0x10

    .line 259
    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModePeopleSettings$2;->isPriorityCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result p0

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 261
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    and-int/lit8 v2, v1, 0x4

    const v3, 0x8dd2

    if-eqz v2, :cond_8

    if-eqz p0, :cond_7

    if-eq p0, v10, :cond_6

    if-eq p0, v7, :cond_5

    move-object p0, v9

    goto :goto_2

    .line 276
    :cond_5
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    goto :goto_2

    .line 272
    :cond_6
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 273
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    goto :goto_2

    .line 268
    :cond_7
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 269
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    goto :goto_2

    .line 283
    :cond_8
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 284
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 286
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    and-int/lit16 p1, v1, 0x100

    const v1, 0x8dd3

    if-eqz p1, :cond_b

    if-eq p0, v10, :cond_a

    if-eq p0, v7, :cond_9

    goto :goto_3

    .line 297
    :cond_9
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    const-string/jumbo p1, "priority"

    .line 298
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v9

    goto :goto_3

    .line 293
    :cond_a
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 294
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v9

    goto :goto_3

    .line 304
    :cond_b
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    .line 305
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v9

    .line 307
    :goto_3
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
