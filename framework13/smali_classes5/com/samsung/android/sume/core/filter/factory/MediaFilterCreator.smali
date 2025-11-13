.class public interface abstract Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;
.super Ljava/lang/Object;
.source "MediaFilterCreator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "factory",
            "descriptor",
            "successor"
        }
    .end annotation
.end method
