.class public interface abstract Lvendor/samsung/hardware/thermal/V1_0/ISehThermal$sehGetTypeTemperaturesCallback;
.super Ljava/lang/Object;
.source "ISehThermal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/thermal/V1_0/ISehThermal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "sehGetTypeTemperaturesCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/thermal/V1_0/ThermalStatus;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/thermal/V1_0/SehTemperature;",
            ">;)V"
        }
    .end annotation
.end method
