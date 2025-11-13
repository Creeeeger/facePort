.class public final synthetic Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/zip/ZipInputStream;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    .line 40
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-class v3, Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 45
    .line 46
    monitor-enter v3

    .line 47
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v4, v5}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    monitor-exit v3

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_1
    :goto_2
    const/4 v3, 0x2

    .line 75
    const/4 v4, 0x0

    .line 76
    if-eqz p0, :cond_6

    .line 77
    .line 78
    iget-object v5, v0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 79
    .line 80
    if-nez v5, :cond_2

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_2
    :try_start_1
    invoke-virtual {v5, v2}, Lcom/airbnb/lottie/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    :catch_0
    move-object v5, v4

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    new-instance v6, Ljava/io/FileInputStream;

    .line 92
    .line 93
    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const-string v8, ".zip"

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_4

    .line 107
    .line 108
    sget-object v7, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    const-string v8, ".gz"

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_5

    .line 122
    .line 123
    sget-object v7, Lcom/airbnb/lottie/network/FileExtension;->GZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    sget-object v7, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 127
    .line 128
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    .line 132
    .line 133
    .line 134
    new-instance v5, Landroid/util/Pair;

    .line 135
    .line 136
    invoke-direct {v5, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_4
    if-nez v5, :cond_7

    .line 140
    .line 141
    :cond_6
    :goto_5
    move-object v5, v4

    .line 142
    goto :goto_7

    .line 143
    :cond_7
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v6, Lcom/airbnb/lottie/network/FileExtension;

    .line 146
    .line 147
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v5, Ljava/io/InputStream;

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    const/4 v7, 0x1

    .line 156
    if-eq v6, v7, :cond_9

    .line 157
    .line 158
    if-eq v6, v3, :cond_8

    .line 159
    .line 160
    invoke-static {v5, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    goto :goto_6

    .line 165
    :cond_8
    :try_start_2
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    .line 166
    .line 167
    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v6, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 171
    .line 172
    .line 173
    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    goto :goto_6

    .line 175
    :catch_1
    move-exception v5

    .line 176
    new-instance v6, Lcom/airbnb/lottie/LottieResult;

    .line 177
    .line 178
    invoke-direct {v6, v5}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    move-object v5, v6

    .line 182
    goto :goto_6

    .line 183
    :cond_9
    new-instance v6, Ljava/util/zip/ZipInputStream;

    .line 184
    .line 185
    invoke-direct {v6, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v6, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    :goto_6
    iget-object v5, v5, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 193
    .line 194
    if-eqz v5, :cond_6

    .line 195
    .line 196
    check-cast v5, Lcom/airbnb/lottie/LottieComposition;

    .line 197
    .line 198
    :goto_7
    if-eqz v5, :cond_a

    .line 199
    .line 200
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    .line 201
    .line 202
    invoke-direct {v0, v5}, Lcom/airbnb/lottie/LottieResult;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_a

    .line 206
    .line 207
    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    .line 208
    .line 209
    .line 210
    const-string v6, "LottieFetchResult close failed "

    .line 211
    .line 212
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    .line 213
    .line 214
    .line 215
    :try_start_3
    iget-object v5, v0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {v2}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;->fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/DefaultLottieFetchResult;

    .line 221
    .line 222
    .line 223
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 224
    :try_start_4
    iget-object v4, v7, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    div-int/lit8 v4, v4, 0x64
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    .line 232
    if-ne v4, v3, :cond_b

    .line 233
    .line 234
    :try_start_5
    iget-object v3, v7, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iget-object v4, v7, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    move-object v5, p0

    .line 247
    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromInputStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v1, v0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 252
    .line 253
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    .line 255
    .line 256
    :try_start_6
    invoke-virtual {v7}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 257
    .line 258
    .line 259
    goto :goto_a

    .line 260
    :catch_2
    move-exception v1

    .line 261
    invoke-static {v6, v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    goto :goto_a

    .line 265
    :catchall_1
    move-exception p0

    .line 266
    move-object v4, v7

    .line 267
    goto :goto_b

    .line 268
    :catch_3
    move-exception v0

    .line 269
    move-object v4, v7

    .line 270
    goto :goto_8

    .line 271
    :catch_4
    :cond_b
    :try_start_7
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    .line 272
    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    invoke-virtual {v7}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->error()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 283
    .line 284
    .line 285
    :try_start_8
    invoke-virtual {v7}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 286
    .line 287
    .line 288
    goto :goto_a

    .line 289
    :catchall_2
    move-exception p0

    .line 290
    goto :goto_b

    .line 291
    :catch_5
    move-exception v0

    .line 292
    :goto_8
    :try_start_9
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    .line 293
    .line 294
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 295
    .line 296
    .line 297
    if-eqz v4, :cond_c

    .line 298
    .line 299
    :try_start_a
    invoke-virtual {v4}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 300
    .line 301
    .line 302
    goto :goto_9

    .line 303
    :catch_6
    move-exception v0

    .line 304
    invoke-static {v6, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    :cond_c
    :goto_9
    move-object v0, v1

    .line 308
    :goto_a
    if-eqz p0, :cond_d

    .line 309
    .line 310
    iget-object v1, v0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 311
    .line 312
    if-eqz v1, :cond_d

    .line 313
    .line 314
    sget-object v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 315
    .line 316
    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    .line 317
    .line 318
    iget-object v2, v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    .line 319
    .line 320
    invoke-virtual {v2, p0, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    :cond_d
    return-object v0

    .line 324
    :goto_b
    if-eqz v4, :cond_e

    .line 325
    .line 326
    :try_start_b
    invoke-virtual {v4}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 327
    .line 328
    .line 329
    goto :goto_c

    .line 330
    :catch_7
    move-exception v0

    .line 331
    invoke-static {v6, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    :cond_e
    :goto_c
    throw p0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
