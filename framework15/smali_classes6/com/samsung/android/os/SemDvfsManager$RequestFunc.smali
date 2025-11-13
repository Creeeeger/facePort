.class interface abstract Lcom/samsung/android/os/SemDvfsManager$RequestFunc;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemDvfsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RequestFunc"
.end annotation


# virtual methods
.method public abstract blacklist acquire(IILjava/lang/String;I[I)V
.end method

.method public abstract blacklist checkHintExist(I)Z
.end method

.method public abstract blacklist checkResourceExist(I)Z
.end method

.method public abstract blacklist checkSysfsIdExist(I)Z
.end method

.method public abstract blacklist getSupportedFrequency(II)[I
.end method

.method public abstract blacklist release(II)V
.end method

.method public abstract blacklist sysfsRead(I)Ljava/lang/String;
.end method

.method public abstract blacklist sysfsWrite(ILjava/lang/String;)V
.end method
