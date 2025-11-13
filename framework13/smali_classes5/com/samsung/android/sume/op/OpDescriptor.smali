.class public interface abstract Lcom/samsung/android/sume/op/OpDescriptor;
.super Ljava/lang/Object;
.source "OpDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract blacklist getInputShape()Lcom/samsung/android/sume/Shape;
.end method

.method public abstract blacklist getMainOp()Lcom/samsung/android/sume/op/OpDescriptor;
.end method

.method public abstract blacklist getOutputShape()Lcom/samsung/android/sume/Shape;
.end method

.method public abstract blacklist isListOp()Z
.end method

.method public abstract blacklist isSetOp()Z
.end method

.method public abstract blacklist isSingleOp()Z
.end method
