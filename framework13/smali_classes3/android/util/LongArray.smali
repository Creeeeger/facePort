.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[J


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 51
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    .line 63
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 64
    return-void
.end method

.method private constructor greylist-max-o <init>([JI)V
    .locals 3
    .param p1, "array"    # [J
    .param p2, "size"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    const-string/jumbo v2, "size"

    invoke-static {p2, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 44
    return-void
.end method

.method public static greylist-max-o elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z
    .locals 7
    .param p0, "a"    # Landroid/util/LongArray;
    .param p1, "b"    # Landroid/util/LongArray;

    .line 228
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget v2, p0, Landroid/util/LongArray;->mSize:I

    iget v3, p1, Landroid/util/LongArray;->mSize:I

    if-eq v2, v3, :cond_1

    return v1

    .line 230
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/util/LongArray;->mSize:I

    if-ge v2, v3, :cond_3

    .line 231
    invoke-virtual {p0, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {p1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 232
    return v1

    .line 230
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    :cond_3
    return v0

    .line 228
    :cond_4
    :goto_1
    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method private greylist-max-o ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    .line 138
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .line 139
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 140
    .local v1, "minCapacity":I
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 141
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 142
    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    .line 143
    .local v2, "targetCap":I
    if-le v2, v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 144
    .local v3, "newCapacity":I
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v4

    .line 145
    .local v4, "newValues":[J
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput-object v4, p0, Landroid/util/LongArray;->mValues:[J

    .line 148
    .end local v2    # "targetCap":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newValues":[J
    :cond_2
    return-void
.end method

.method public static greylist-max-o fromArray([JI)Landroid/util/LongArray;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "size"    # I

    .line 77
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0}, Landroid/util/LongArray;->wrap([J)Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o wrap([J)Landroid/util/LongArray;
    .locals 2
    .param p0, "array"    # [J

    .line 70
    new-instance v0, Landroid/util/LongArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/LongArray;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-r add(IJ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 111
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    sub-int v2, v1, p1

    .line 112
    .local v2, "rightSegment":I
    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    .line 113
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 115
    if-eqz v2, :cond_0

    .line 117
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 121
    return-void
.end method

.method public greylist-max-o add(J)V
    .locals 1
    .param p1, "value"    # J

    .line 99
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    .line 100
    return-void
.end method

.method public greylist-max-o addAll(Landroid/util/LongArray;)V
    .locals 5
    .param p1, "values"    # Landroid/util/LongArray;

    .line 127
    iget v0, p1, Landroid/util/LongArray;->mSize:I

    .line 128
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 130
    iget-object v1, p1, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    .line 132
    return-void
.end method

.method public greylist-max-o clear()V
    .locals 1

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 155
    return-void
.end method

.method public blacklist clone()Landroid/util/LongArray;
    .locals 2

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "clone":Landroid/util/LongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArray;

    move-object v0, v1

    .line 162
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/util/LongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 166
    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public greylist get(I)J
    .locals 2
    .param p1, "index"    # I

    .line 174
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 175
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public greylist-max-o indexOf(J)I
    .locals 4
    .param p1, "value"    # J

    .line 191
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .line 192
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 194
    return v1

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public greylist-max-o remove(I)V
    .locals 3
    .param p1, "index"    # I

    .line 204
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 205
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 207
    return-void
.end method

.method public greylist-max-o resize(I)V
    .locals 4
    .param p1, "newSize"    # I

    .line 86
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 87
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    array-length v1, v0

    if-gt p1, v1, :cond_0

    .line 88
    array-length v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_0

    .line 90
    :cond_0
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 92
    :goto_0
    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 93
    return-void
.end method

.method public greylist-max-o set(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 182
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 183
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 184
    return-void
.end method

.method public greylist-max-r size()I
    .locals 1

    .line 214
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    return v0
.end method

.method public greylist-max-o toArray()[J
    .locals 2

    .line 221
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
