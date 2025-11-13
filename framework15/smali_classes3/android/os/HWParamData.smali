.class public Landroid/os/HWParamData;
.super Ljava/lang/Object;
.source "HWParamData.java"


# instance fields
.field protected blacklist HWRev:Ljava/lang/String;

.field protected blacklist IMEI:Ljava/lang/String;

.field protected blacklist UN:Ljava/lang/String;

.field protected blacklist compID:Ljava/lang/String;

.field protected blacklist compManufacture:Ljava/lang/String;

.field protected blacklist compVer:Ljava/lang/String;

.field protected blacklist envlogMaps:Ljava/lang/String;

.field protected blacklist feature:Ljava/lang/String;

.field protected blacklist hitType:Ljava/lang/String;

.field protected blacklist logMaps:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getCompID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompManufacture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEnvLogMaps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHWRev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHitType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIMEI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogMaps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    return-object v0
.end method
