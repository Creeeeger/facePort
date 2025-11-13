.class public Landroid/os/SemSystemProperties;
.super Ljava/lang/Object;
.source "SemSystemProperties.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static whitelist get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 45
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 56
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .line 100
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist getCountryCode()Ljava/lang/String;
    .locals 2

    .line 141
    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getCountryIso()Ljava/lang/String;
    .locals 2

    .line 150
    const-string/jumbo v0, "ro.csc.countryiso_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDeviceSerialNumber()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    const-string/jumbo v0, "ril.serialnumber"

    const-string v1, "00000000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .line 69
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J

    .line 82
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getSalesCode()Ljava/lang/String;
    .locals 2

    .line 132
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 110
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
