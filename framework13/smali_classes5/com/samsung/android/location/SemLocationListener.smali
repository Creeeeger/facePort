.class public interface abstract Lcom/samsung/android/location/SemLocationListener;
.super Ljava/lang/Object;
.source "SemLocationListener.java"


# virtual methods
.method public abstract onLocationAvailable([Landroid/location/Location;)V
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end method

.method public abstract onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
.end method
