.class public interface abstract Lcom/samsung/android/sume/core/functional/OpPriorityCompute;
.super Ljava/lang/Object;
.source "OpPriorityCompute.java"


# static fields
.field public static final blacklist FIRST_CLASS:F = 1.4E-45f

.field public static final blacklist FIRST_OF_ALL:F = 0.0f

.field public static final blacklist LAST_CLASS:F = 3.4028235E38f

.field public static final blacklist NOT_APPLICABLE:F = -1.0f


# virtual methods
.method public abstract blacklist compute(Lcom/samsung/android/sume/core/format/Shape;Lcom/samsung/android/sume/core/format/Shape;)F
.end method

.method public abstract blacklist compute(Lcom/samsung/android/sume/core/types/ColorFormat;Lcom/samsung/android/sume/core/types/ColorFormat;)F
.end method

.method public abstract blacklist compute(Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/types/DataType;)F
.end method
