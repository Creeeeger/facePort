.class final Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;
.super Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Android64MemoryAccessor"
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public blacklist copyMemory(J[BJJ)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist copyMemory([BJJJ)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getBoolean(Ljava/lang/Object;J)Z
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$600(Ljava/lang/Object;J)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public blacklist getByte(J)B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getByte(Ljava/lang/Object;J)B
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$200(Ljava/lang/Object;J)B

    move-result v0

    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public blacklist getDouble(Ljava/lang/Object;J)D
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFloat(Ljava/lang/Object;J)F
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist getInt(J)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getLong(J)J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public blacklist putBoolean(Ljava/lang/Object;JZ)V
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$900(Ljava/lang/Object;JZ)V

    :goto_0
    return-void
.end method

.method public blacklist putByte(JB)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist putByte(Ljava/lang/Object;JB)V
    .locals 1

    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$400(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;JB)V

    :goto_0
    return-void
.end method

.method public blacklist putDouble(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public blacklist putFloat(Ljava/lang/Object;JF)V
    .locals 1

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public blacklist putInt(JI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist putLong(JJ)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist supportsUnsafeByteBufferOperations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
