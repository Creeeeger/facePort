.class public final Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final unsafe:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final getBoolean(JLjava/lang/Object;)Z
    .locals 2

    iget p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    sget-boolean p0, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_3

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDouble(JLjava/lang/Object;)D
    .locals 1

    iget v0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getFloat(JLjava/lang/Object;)F
    .locals 1

    iget v0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final putBoolean(Ljava/lang/Object;JZ)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz p0, :cond_0

    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean p0, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz p0, :cond_1

    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final putDouble(Ljava/lang/Object;JD)V
    .locals 14

    move-object v0, p0

    iget v1, v0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    iget-object v2, v0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_0
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    iget-object v8, v0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v9, p1

    move-wide/from16 v10, p2

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final putFloat(Ljava/lang/Object;JF)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    :pswitch_0
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    iget-object p0, p0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
