.class public abstract Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;
.super Ljava/lang/Object;
.source "EndpointMonitorInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist reportApplicationDying(JIILjava/lang/String;J)V
.end method
