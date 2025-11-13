.class Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "LockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method

.method private getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 829
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetListDefaultValue(Ljava/lang/String;)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x61

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x7a

    .line 678
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 679
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto/16 :goto_4

    :cond_0
    const/16 v5, 0x62

    goto/16 :goto_4

    .line 690
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    const/16 v7, 0x100

    .line 695
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v4

    .line 700
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {p1, v8}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v4

    .line 704
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {p1, v8}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_5

    move v7, v4

    :cond_5
    if-eqz v6, :cond_6

    if-nez v7, :cond_6

    move v6, v3

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    const/4 v6, 0x2

    goto :goto_2

    :cond_7
    if-nez v6, :cond_8

    if-eqz v7, :cond_8

    const/4 v6, 0x3

    goto :goto_2

    :cond_8
    move v6, v4

    .line 717
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    const/high16 v8, 0x10000

    if-eq v7, v8, :cond_b

    const/high16 v8, 0x20000

    if-eq v7, v8, :cond_a

    const/high16 v8, 0x30000

    if-eq v7, v8, :cond_a

    const/high16 v8, 0x40000

    if-eq v7, v8, :cond_9

    const/high16 v8, 0x50000

    if-eq v7, v8, :cond_9

    const/high16 v8, 0x60000

    if-eq v7, v8, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, 0x6b

    goto :goto_3

    :cond_a
    add-int/lit8 v6, v6, 0x63

    goto :goto_3

    :cond_b
    add-int/lit8 v6, v6, 0x67

    :goto_3
    int-to-char v5, v6

    .line 734
    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v6

    .line 735
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_d

    if-eqz v7, :cond_c

    .line 737
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v6, :cond_c

    goto :goto_5

    :cond_c
    move v6, v4

    goto :goto_6

    :cond_d
    :goto_5
    move v6, v3

    .line 741
    :goto_6
    :try_start_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 742
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 743
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v7, :cond_e

    move v7, v3

    goto :goto_7

    :catch_0
    move v6, v4

    :catch_1
    const-string v7, "LockScreenSettings"

    const-string v8, "SecurityException in isSecure"

    .line 748
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v7, v4

    .line 753
    :goto_7
    new-instance v8, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v9, 0x233a

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v6

    .line 754
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 759
    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v8, 0x2334

    invoke-direct {v6, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v6

    .line 760
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_f
    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v7, 0x232a

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v5

    .line 766
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "servicebox_music"

    .line 771
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_10

    const-string v5, "a "

    goto :goto_8

    :cond_10
    move-object v5, v6

    :goto_8
    const-string v7, "servicebox_calendar"

    .line 772
    invoke-direct {p0, p1, v7}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "c "

    goto :goto_9

    :cond_11
    move-object v7, v6

    :goto_9
    const-string v8, "servicebox_alarm"

    .line 773
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "d "

    goto :goto_a

    :cond_12
    move-object v8, v6

    :goto_a
    const-string v9, "com.sec.android.daemonapp#weather"

    .line 774
    invoke-direct {p0, p1, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "b "

    goto :goto_b

    :cond_13
    move-object v9, v6

    :goto_b
    const-string v10, "com.samsung.android.app.routines#dashboard"

    .line 775
    invoke-direct {p0, p1, v10}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    const-string v10, "e "

    goto :goto_c

    :cond_14
    move-object v10, v6

    :goto_c
    const-string v11, "com.samsung.android.forest#screenTime"

    .line 776
    invoke-direct {p0, p1, v11}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;->getFaceWidgetValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string v6, "f "

    .line 777
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 779
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v6, 0x232d

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 780
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    .line 785
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v6, 0x2346

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 786
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/android/settings/R$array;->lock_after_timeout_values:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 792
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-wide/16 v6, 0x1388

    const-string v8, "lock_screen_lock_after_timeout"

    invoke-static {v5, v8, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    move v7, v4

    .line 794
    :goto_d
    array-length v8, p0

    if-ge v7, v8, :cond_17

    .line 795
    aget-object v8, p0, v7

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_16

    add-int/2addr v2, v7

    int-to-char v2, v2

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 799
    :cond_17
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v5, 0x2345

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 800
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "face_widgets_option"

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_18

    move p0, v3

    goto :goto_e

    :cond_18
    move p0, v4

    .line 806
    :goto_e
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v5, 0x2336

    invoke-direct {v2, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 807
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "roaming_clock_option"

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_19

    move v4, v3

    .line 812
    :cond_19
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x2335

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 813
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    new-instance p0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v2, 0x2344

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "1"

    goto :goto_f

    :cond_1a
    const-string v1, "0"

    :goto_f
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 818
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "lock_editor_support_touch_hold"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 822
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x2380

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p0

    .line 823
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
