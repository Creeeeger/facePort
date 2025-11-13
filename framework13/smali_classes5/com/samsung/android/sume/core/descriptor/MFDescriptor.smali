.class public interface abstract Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
.super Ljava/lang/Object;
.source "MFDescriptor.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract blacklist getFilterId()Ljava/lang/String;
.end method

.method public blacklist getFilterType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method public abstract blacklist getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
.end method

.method public abstract blacklist setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method
