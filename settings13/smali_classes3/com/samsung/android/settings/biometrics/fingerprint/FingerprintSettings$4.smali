.class Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$4;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1868
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 1871
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1873
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1874
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v1, ""

    :try_start_0
    const-string v2, "fingerprint"

    .line 1879
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    .line 1881
    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1884
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1886
    :cond_0
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v3, 0x2012

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 1887
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1891
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1893
    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    .line 1895
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v3, 0x2014

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1896
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 1900
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "fingerprint_webpass"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 1901
    :goto_1
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v6, 0x2015

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1902
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "fingerprint_used_samsungaccount"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    .line 1906
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v5

    .line 1907
    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v7, 0x2013

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1908
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    const/16 v2, 0x204b

    if-nez v1, :cond_5

    .line 1915
    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    goto :goto_4

    .line 1917
    :cond_5
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z

    move-result v6

    .line 1918
    new-instance v7, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v7, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    .line 1919
    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1921
    :goto_4
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIcon()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x204c

    if-nez v1, :cond_7

    .line 1928
    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    goto :goto_5

    .line 1930
    :cond_7
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconBooleanValue(Landroid/content/Context;I)Z

    move-result v6

    .line 1931
    new-instance v7, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v7, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    .line 1932
    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1934
    :goto_5
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFasterRecognition()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x204d

    if-nez v1, :cond_9

    .line 1941
    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    goto :goto_6

    .line 1943
    :cond_9
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintFastRecognitionBooleanValue(Landroid/content/Context;I)Z

    move-result v6

    .line 1944
    new-instance v7, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v7, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    .line 1945
    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1947
    :goto_6
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    :cond_a
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1953
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v3, :cond_c

    move v3, v4

    goto :goto_7

    :cond_b
    const/4 v3, 0x2

    .line 1964
    :cond_c
    :goto_7
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v4, 0x2055

    invoke-direct {v2, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1965
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1969
    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintEffect()Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x2059

    if-nez v1, :cond_e

    .line 1972
    new-instance p1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {p1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    goto :goto_8

    .line 1974
    :cond_e
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEffectValue(Landroid/content/Context;I)Z

    move-result p1

    .line 1975
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    .line 1976
    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 1978
    :goto_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object p0
.end method
