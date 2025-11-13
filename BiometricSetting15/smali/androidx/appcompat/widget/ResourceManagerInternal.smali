.class public final Landroidx/appcompat/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field public static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field public static INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;


# instance fields
.field public final mDrawableCaches:Ljava/util/WeakHashMap;

.field public mHasCheckedVectorDrawableSetup:Z

.field public mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

.field public mTintLists:Ljava/util/WeakHashMap;

.field public mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    return-void
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/ResourceManagerInternal;
    .locals 2

    .line 1
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 9
    .line 10
    invoke-direct {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    .line 1
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x1f

    .line 10
    .line 11
    add-int v3, v2, p0

    .line 12
    .line 13
    mul-int/2addr v3, v2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v3

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-object v2

    .line 56
    :goto_1
    monitor-exit v0

    .line 57
    throw p0
.end method


# virtual methods
.method public final createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 23
    .line 24
    int-to-long v3, v1

    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    shl-long/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    int-to-long v5, v1

    .line 31
    or-long/2addr v3, v5

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit p0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :cond_2
    :try_start_2
    iget-object v6, v1, Landroidx/collection/LongSparseArray;->keys:[J

    .line 76
    .line 77
    iget v7, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 78
    .line 79
    invoke-static {v6, v7, v3, v4}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ltz v6, :cond_3

    .line 84
    .line 85
    iget-object v7, v1, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 86
    .line 87
    aget-object v8, v7, v6

    .line 88
    .line 89
    sget-object v9, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 90
    .line 91
    if-eq v8, v9, :cond_3

    .line 92
    .line 93
    aput-object v9, v7, v6

    .line 94
    .line 95
    const/4 v6, 0x1

    .line 96
    iput-boolean v6, v1, Landroidx/collection/LongSparseArray;->garbage:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    :cond_3
    monitor-exit p0

    .line 99
    :goto_0
    if-eqz v5, :cond_4

    .line 100
    .line 101
    return-object v5

    .line 102
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const v1, 0x7f080010

    .line 109
    .line 110
    .line 111
    if-ne p2, v1, :cond_6

    .line 112
    .line 113
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 114
    .line 115
    const/4 p2, 0x2

    .line 116
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    const v1, 0x7f08000f

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v6, 0x0

    .line 126
    aput-object v1, p2, v6

    .line 127
    .line 128
    const v1, 0x7f080011

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    aput-object v1, p2, v2

    .line 136
    .line 137
    invoke-direct {v5, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    const v1, 0x7f080033

    .line 142
    .line 143
    .line 144
    if-ne p2, v1, :cond_7

    .line 145
    .line 146
    const p2, 0x7f07003b

    .line 147
    .line 148
    .line 149
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    goto :goto_1

    .line 154
    :cond_7
    const v1, 0x7f080032

    .line 155
    .line 156
    .line 157
    if-ne p2, v1, :cond_8

    .line 158
    .line 159
    const p2, 0x7f07003c

    .line 160
    .line 161
    .line 162
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    goto :goto_1

    .line 167
    :cond_8
    const v1, 0x7f080034

    .line 168
    .line 169
    .line 170
    if-ne p2, v1, :cond_9

    .line 171
    .line 172
    const p2, 0x7f07003d

    .line 173
    .line 174
    .line 175
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    :cond_9
    :goto_1
    if-eqz v5, :cond_c

    .line 180
    .line 181
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 182
    .line 183
    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 184
    .line 185
    .line 186
    monitor-enter p0

    .line 187
    :try_start_3
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    if-eqz p2, :cond_b

    .line 192
    .line 193
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 200
    .line 201
    if-nez v0, :cond_a

    .line 202
    .line 203
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 204
    .line 205
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 209
    .line 210
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :catchall_1
    move-exception p1

    .line 215
    goto :goto_3

    .line 216
    :cond_a
    :goto_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 217
    .line 218
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3, v4, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    .line 223
    .line 224
    monitor-exit p0

    .line 225
    goto :goto_4

    .line 226
    :cond_b
    monitor-exit p0

    .line 227
    goto :goto_4

    .line 228
    :goto_3
    monitor-exit p0

    .line 229
    throw p1

    .line 230
    :cond_c
    :goto_4
    return-object v5

    .line 231
    :goto_5
    monitor-exit p0

    .line 232
    throw p1
.end method

.method public final declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    const v0, 0x7f08004e

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const p1, 0x7f080041

    if-ne p2, p1, :cond_4

    .line 13
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_4
    :goto_1
    if-eqz v2, :cond_9

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 15
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    if-eqz v1, :cond_8

    const v1, 0x7f08003c

    const v3, 0x102000d

    const v4, 0x102000f

    const/high16 v5, 0x1020000

    const v6, 0x7f04007f

    const v7, 0x7f040081

    if-ne p2, v1, :cond_6

    .line 16
    move-object p2, v0

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 17
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 18
    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 19
    sget-object v2, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-static {p3, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 21
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 22
    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 23
    invoke-static {p3, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 24
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 25
    invoke-static {p1, v6}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 26
    invoke-static {p2, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    :cond_6
    const v1, 0x7f080033

    if-eq p2, v1, :cond_7

    const v1, 0x7f080032

    if-eq p2, v1, :cond_7

    const v1, 0x7f080034

    if-ne p2, v1, :cond_8

    .line 27
    :cond_7
    move-object p2, v0

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 28
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 29
    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 30
    sget-object v2, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 31
    invoke-static {p3, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 32
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 33
    invoke-static {p1, v6}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 34
    invoke-static {p3, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;I)V

    .line 35
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 36
    invoke-static {p1, v6}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 37
    invoke-static {p2, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 38
    :cond_8
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz p3, :cond_9

    move-object v0, v2

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 39
    sget-object p1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 40
    :cond_a
    :goto_3
    monitor-exit p0

    return-object v0

    :cond_b
    const/4 p1, 0x0

    .line 41
    :try_start_1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    if-nez v0, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_1
    if-eqz v1, :cond_4

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 58
    .line 59
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0, p2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_4
    move-object v0, v1

    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    :goto_2
    monitor-exit p0

    .line 75
    return-object v0

    .line 76
    :goto_3
    monitor-exit p0

    .line 77
    throw p1
.end method

.method public final tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_6

    .line 5
    .line 6
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 9
    .line 10
    invoke-static {v2, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, -0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const p0, 0x7f040081

    .line 19
    .line 20
    .line 21
    :goto_0
    move v2, v3

    .line 22
    :goto_1
    move p2, v4

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 25
    .line 26
    invoke-static {v2, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const p0, 0x7f04007f

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 37
    .line 38
    invoke-static {p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const v2, 0x1010031

    .line 43
    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 48
    .line 49
    :goto_2
    move p0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const p0, 0x7f080025

    .line 52
    .line 53
    .line 54
    if-ne p2, p0, :cond_3

    .line 55
    .line 56
    const p0, 0x42233333    # 40.8f

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const p2, 0x1010030

    .line 64
    .line 65
    .line 66
    move v2, v3

    .line 67
    move v5, p2

    .line 68
    move p2, p0

    .line 69
    move p0, v5

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const p0, 0x7f080013

    .line 72
    .line 73
    .line 74
    if-ne p2, p0, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move p0, v0

    .line 78
    move v2, p0

    .line 79
    goto :goto_1

    .line 80
    :goto_3
    if-eqz v2, :cond_6

    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    const-class p1, Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 91
    .line 92
    monitor-enter p1

    .line 93
    :try_start_0
    invoke-static {p0, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p1

    .line 98
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    .line 100
    .line 101
    if-eq p2, v4, :cond_5

    .line 102
    .line 103
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 104
    .line 105
    .line 106
    :cond_5
    move v0, v3

    .line 107
    goto :goto_4

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    monitor-exit p1

    .line 110
    throw p0

    .line 111
    :cond_6
    :goto_4
    return v0
.end method
