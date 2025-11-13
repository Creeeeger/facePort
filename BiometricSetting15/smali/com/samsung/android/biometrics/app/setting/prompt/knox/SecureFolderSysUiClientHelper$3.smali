.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 19
    .line 20
    and-int/lit8 p1, p1, 0x30

    .line 21
    .line 22
    const/16 v0, 0x20

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x1030128

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v1, 0x103012b

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f10017b

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    const p1, 0x7f100135

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V

    .line 80
    .line 81
    .line 82
    const v2, 0x7f100136

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;

    .line 89
    .line 90
    const/4 v2, 0x3

    .line 91
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V

    .line 92
    .line 93
    .line 94
    const v2, 0x7f100052

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/16 v1, 0x7e1

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x50

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPackageName:Ljava/lang/String;

    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const/4 v2, 0x3

    .line 141
    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_2

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_2

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_2

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 168
    .line 169
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_1

    .line 180
    .line 181
    iget-object p1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 182
    .line 183
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 190
    .line 191
    .line 192
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_1

    .line 194
    :catch_0
    move-exception p1

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, "isMultiWindowMode: "

    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v2, "KKG::KnoxUtils"

    .line 203
    .line 204
    invoke-static {p1, v1, v2}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v1, "isInMultiWindowMode : "

    .line 210
    .line 211
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, ", package : "

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 223
    .line 224
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPackageName:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string v1, "KKG::SecureFolderSysUiClientHelper"

    .line 234
    .line 235
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 239
    .line 240
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 241
    .line 242
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-nez p1, :cond_3

    .line 247
    .line 248
    if-eqz v0, :cond_3

    .line 249
    .line 250
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 251
    .line 252
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    const p1, 0x7f100137

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x1

    .line 258
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_7

    .line 266
    .line 267
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    :try_start_1
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 283
    .line 284
    and-int/lit8 v0, v0, 0x30

    .line 285
    .line 286
    const/16 v2, 0x20

    .line 287
    .line 288
    if-ne v0, v2, :cond_4

    .line 289
    .line 290
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 291
    .line 292
    iget-object v2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    const v3, 0x1030128

    .line 299
    .line 300
    .line 301
    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :catch_1
    move-exception p1

    .line 306
    goto/16 :goto_5

    .line 307
    .line 308
    :cond_4
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 309
    .line 310
    iget-object v2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    const v3, 0x103012b

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 320
    .line 321
    .line 322
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 323
    .line 324
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 328
    .line 329
    iget-object v3, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 330
    .line 331
    iget v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 332
    .line 333
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    const/high16 v3, 0x10000

    .line 338
    .line 339
    const v4, 0x7f10011d

    .line 340
    .line 341
    .line 342
    if-eq v0, v3, :cond_7

    .line 343
    .line 344
    const/high16 v3, 0x20000

    .line 345
    .line 346
    if-eq v0, v3, :cond_6

    .line 347
    .line 348
    const/high16 v3, 0x30000

    .line 349
    .line 350
    if-eq v0, v3, :cond_6

    .line 351
    .line 352
    const/high16 v3, 0x40000

    .line 353
    .line 354
    if-eq v0, v3, :cond_5

    .line 355
    .line 356
    const/high16 v3, 0x50000

    .line 357
    .line 358
    if-eq v0, v3, :cond_5

    .line 359
    .line 360
    const/high16 v3, 0x60000

    .line 361
    .line 362
    if-eq v0, v3, :cond_5

    .line 363
    .line 364
    const/high16 v3, 0x70000

    .line 365
    .line 366
    if-eq v0, v3, :cond_6

    .line 367
    .line 368
    const/high16 v3, 0x80000

    .line 369
    .line 370
    if-eq v0, v3, :cond_5

    .line 371
    .line 372
    const-string v0, "invalid quality error"

    .line 373
    .line 374
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 378
    .line 379
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    goto :goto_3

    .line 384
    :cond_5
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 385
    .line 386
    const v3, 0x7f10011b

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    goto :goto_3

    .line 394
    :cond_6
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 395
    .line 396
    const v3, 0x7f10011f

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    goto :goto_3

    .line 404
    :cond_7
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 405
    .line 406
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    .line 412
    .line 413
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    const-string v3, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    .line 418
    .line 419
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    if-eqz v0, :cond_8

    .line 424
    .line 425
    const-string v3, "TRUE"

    .line 426
    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_8

    .line 432
    .line 433
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 434
    .line 435
    const v3, 0x7f100121

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_8
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 447
    .line 448
    const v3, 0x7f100120

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 456
    .line 457
    .line 458
    :goto_4
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;

    .line 459
    .line 460
    const/4 v3, 0x0

    .line 461
    invoke-direct {v0, p1, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V

    .line 462
    .line 463
    .line 464
    const v3, 0x7f10013e

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    .line 469
    .line 470
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;

    .line 471
    .line 472
    const/4 v3, 0x1

    .line 473
    invoke-direct {v0, p1, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V

    .line 474
    .line 475
    .line 476
    const v3, 0x7f100052

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iput-object v0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 487
    .line 488
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    const/16 v2, 0x7e1

    .line 493
    .line 494
    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 495
    .line 496
    .line 497
    const/16 v2, 0x50

    .line 498
    .line 499
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 500
    .line 501
    .line 502
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 503
    .line 504
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 505
    .line 506
    .line 507
    goto :goto_6

    .line 508
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    const-string v2, "Exception : "

    .line 511
    .line 512
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    :goto_6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 530
    .line 531
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->getCurrentLockType()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    const/16 v0, 0x64

    .line 538
    .line 539
    const/16 v1, 0x3e9

    .line 540
    .line 541
    invoke-static {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    .line 542
    .line 543
    .line 544
    move-result-object p0

    .line 545
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    :goto_7
    return-void

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
