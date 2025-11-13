.class public Lorg/simpleframework/xml/filter/PlatformFilter;
.super Lorg/simpleframework/xml/filter/StackFilter;
.source "PlatformFilter.java"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/simpleframework/xml/filter/StackFilter;-><init>()V

    .line 53
    new-instance v0, Lorg/simpleframework/xml/filter/EnvironmentFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/EnvironmentFilter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/filter/StackFilter;->push(Lorg/simpleframework/xml/filter/Filter;)V

    .line 54
    new-instance v0, Lorg/simpleframework/xml/filter/SystemFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/SystemFilter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/filter/StackFilter;->push(Lorg/simpleframework/xml/filter/Filter;)V

    .line 55
    new-instance v0, Lorg/simpleframework/xml/filter/MapFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/MapFilter;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/filter/StackFilter;->push(Lorg/simpleframework/xml/filter/Filter;)V

    return-void
.end method
