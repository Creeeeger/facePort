.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;[BLandroid/os/Bundle;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$1:[B

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    iput p6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$1:[B

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    .line 6
    .line 7
    iget v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget v10, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda1;->f$5:I

    .line 12
    .line 13
    const-string v3, "Unable to close stream"

    .line 14
    .line 15
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 16
    .line 17
    iput-object v1, v4, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewData:[B

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v1, "memoryfile_descriptor"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    const-string v2, "BSS_FaceEnrollActivity"

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 36
    .line 37
    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v1, v5, v6}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    .line 43
    .line 44
    .line 45
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-array v6, v6, [B

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    move v8, v7

    .line 62
    :cond_1
    :goto_1
    array-length v11, v6

    .line 63
    sub-int/2addr v11, v8

    .line 64
    invoke-virtual {v4, v6, v8, v11}, Ljava/io/FileInputStream;->read([BII)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-gtz v11, :cond_2

    .line 69
    .line 70
    iput-object v6, v5, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :catch_0
    move-exception v1

    .line 80
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_2
    add-int/2addr v8, v11

    .line 85
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    array-length v12, v6

    .line 90
    sub-int/2addr v12, v8

    .line 91
    if-le v11, v12, :cond_1

    .line 92
    .line 93
    add-int/2addr v11, v8

    .line 94
    new-array v11, v11, [B

    .line 95
    .line 96
    invoke-static {v6, v7, v11, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    move-object v6, v11

    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :catch_1
    move-exception v5

    .line 104
    :try_start_3
    const-string v6, "Unable to read statistics stream"

    .line 105
    .line 106
    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catch_2
    move-exception v0

    .line 124
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    :goto_3
    throw p0

    .line 128
    :cond_3
    :goto_4
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 131
    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    const-string p0, "onImageProcessed : setImageBitmap not done"

    .line 135
    .line 136
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 146
    .line 147
    iget-wide v5, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mLastDecodingTimestamp:J

    .line 148
    .line 149
    sub-long/2addr v3, v5

    .line 150
    const-wide/16 v5, 0x1e

    .line 151
    .line 152
    cmp-long v1, v3, v5

    .line 153
    .line 154
    if-gez v1, :cond_5

    .line 155
    .line 156
    const-string p0, "onImageProcessed : Too fast"

    .line 157
    .line 158
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    goto/16 :goto_6

    .line 162
    .line 163
    :cond_5
    :try_start_6
    new-instance v1, Landroid/graphics/YuvImage;

    .line 164
    .line 165
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 166
    .line 167
    iget-object v4, v3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewData:[B

    .line 168
    .line 169
    const/16 v5, 0x11

    .line 170
    .line 171
    const/4 v8, 0x0

    .line 172
    move-object v3, v1

    .line 173
    move v6, v9

    .line 174
    move v7, v10

    .line 175
    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 176
    .line 177
    .line 178
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 179
    .line 180
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v4, Landroid/graphics/Rect;

    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    invoke-direct {v4, v5, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 187
    .line 188
    .line 189
    const/16 v6, 0x64

    .line 190
    .line 191
    invoke-virtual {v1, v4, v6, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    iput-object v3, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 209
    .line 210
    new-instance v9, Landroid/graphics/Matrix;

    .line 211
    .line 212
    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    .line 214
    .line 215
    const/high16 v1, 0x40000000    # 2.0f

    .line 216
    .line 217
    if-nez p0, :cond_6

    .line 218
    .line 219
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 220
    .line 221
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    int-to-float p0, p0

    .line 228
    div-float/2addr p0, v1

    .line 229
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 230
    .line 231
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 232
    .line 233
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    int-to-float v3, v3

    .line 238
    div-float/2addr v3, v1

    .line 239
    const/high16 v1, 0x43340000    # 180.0f

    .line 240
    .line 241
    invoke-virtual {v9, v1, p0, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_6
    const/16 v3, 0x10e

    .line 246
    .line 247
    if-ne p0, v3, :cond_7

    .line 248
    .line 249
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 250
    .line 251
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    int-to-float p0, p0

    .line 258
    div-float/2addr p0, v1

    .line 259
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 260
    .line 261
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    int-to-float v3, v3

    .line 268
    div-float/2addr v3, v1

    .line 269
    const/high16 v1, 0x43870000    # 270.0f

    .line 270
    .line 271
    invoke-virtual {v9, v1, p0, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 272
    .line 273
    .line 274
    :cond_7
    :goto_5
    const/high16 p0, 0x3f800000    # 1.0f

    .line 275
    .line 276
    const/high16 v1, -0x40800000    # -1.0f

    .line 277
    .line 278
    invoke-virtual {v9, p0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 279
    .line 280
    .line 281
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 282
    .line 283
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 284
    .line 285
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 290
    .line 291
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 292
    .line 293
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    const/4 v10, 0x1

    .line 298
    const/4 v5, 0x0

    .line 299
    const/4 v6, 0x0

    .line 300
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 305
    .line 306
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 307
    .line 308
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewHandler:Landroid/os/Handler;

    .line 309
    .line 310
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    const/4 v3, 0x2

    .line 313
    invoke-direct {v1, v0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :catch_3
    const-string p0, "Image process failed"

    .line 321
    .line 322
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :goto_6
    return-void
.end method
