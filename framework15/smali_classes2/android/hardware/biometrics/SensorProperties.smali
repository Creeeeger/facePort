.class public Landroid/hardware/biometrics/SensorProperties;
.super Ljava/lang/Object;
.source "SensorProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/SensorProperties$ComponentInfo;,
        Landroid/hardware/biometrics/SensorProperties$Strength;
    }
.end annotation


# static fields
.field public static final blacklist STRENGTH_CONVENIENCE:I = 0x0

.field public static final blacklist STRENGTH_STRONG:I = 0x2

.field public static final blacklist STRENGTH_WEAK:I = 0x1


# instance fields
.field private final blacklist mComponentInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSensorId:I

.field private final blacklist mSensorStrength:I


# direct methods
.method public constructor blacklist <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorId:I

    iput p2, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorStrength:I

    iput-object p3, p0, Landroid/hardware/biometrics/SensorProperties;->mComponentInfo:Ljava/util/List;

    return-void
.end method

.method public static blacklist from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorProperties;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/biometrics/SensorPropertiesInternal;->componentInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/ComponentInfoInternal;

    invoke-static {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->from(Landroid/hardware/biometrics/ComponentInfoInternal;)Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/hardware/biometrics/SensorProperties;

    iget v2, p0, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    iget v3, p0, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorStrength:I

    invoke-direct {v1, v2, v3, v0}, Landroid/hardware/biometrics/SensorProperties;-><init>(IILjava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public blacklist getComponentInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties;->mComponentInfo:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSensorId()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorId:I

    return v0
.end method

.method public blacklist getSensorStrength()I
    .locals 1

    iget v0, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorStrength:I

    return v0
.end method
