.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;


# static fields
.field public static final DETAIL_TEXTS:[[I


# instance fields
.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mIsPasswordShown:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x7f100140

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f100142

    .line 9
    .line 10
    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f100141

    .line 16
    .line 17
    .line 18
    filled-new-array {v2}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v0, v1, v2}, [[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 23
    .line 24
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 30
    .line 31
    const-string p2, "device_policy"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 40
    .line 41
    const-string p2, "user"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/os/UserManager;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mUserManager:Landroid/os/UserManager;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final changeCredentialViewIfNeeded(Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;
    .locals 20

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    iget-object v12, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget v0, v12, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 6
    .line 7
    const/4 v13, 0x0

    .line 8
    const/4 v14, 0x2

    .line 9
    const/4 v15, 0x1

    .line 10
    iget v10, v12, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 11
    .line 12
    iget v9, v12, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 13
    .line 14
    const v2, 0x7f0a009c

    .line 15
    .line 16
    .line 17
    const v3, 0x7f0a0161

    .line 18
    .line 19
    .line 20
    const v4, 0x7f0a00ec

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0a0162

    .line 24
    .line 25
    .line 26
    const v5, 0x7f0a0151

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v8, 0x3

    .line 31
    if-eq v0, v15, :cond_6

    .line 32
    .line 33
    if-eq v0, v14, :cond_1

    .line 34
    .line 35
    if-eq v0, v8, :cond_6

    .line 36
    .line 37
    const/4 v8, 0x6

    .line 38
    if-ne v0, v8, :cond_0

    .line 39
    .line 40
    const-string v0, "KKG::WorkProfileSysUiClientHelper"

    .line 41
    .line 42
    const-string v8, "WorkProfileSysUiClientHelper: UCMKeyguardEnabled"

    .line 43
    .line 44
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "Unknown credential type: "

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_1
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    .line 70
    .line 71
    const v8, 0x7f0d003e

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v8, v6, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 79
    .line 80
    iget-object v6, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    .line 91
    .line 92
    if-ne v8, v14, :cond_2

    .line 93
    .line 94
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Landroid/widget/ImageView;

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Landroid/widget/LinearLayout;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .line 155
    const v8, 0x7f0a0195

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    check-cast v8, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    const v15, 0x7f0a0194

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    check-cast v15, Landroid/widget/LinearLayout;

    .line 172
    .line 173
    iget v7, v6, Landroid/content/res/Configuration;->orientation:I

    .line 174
    .line 175
    if-ne v7, v14, :cond_5

    .line 176
    .line 177
    iput v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    .line 179
    const/16 v7, 0xd

    .line 180
    .line 181
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    .line 183
    .line 184
    const/16 v4, 0x8

    .line 185
    .line 186
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    const/16 v4, 0x11

    .line 193
    .line 194
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    .line 196
    .line 197
    const v3, 0x7f0a0120

    .line 198
    .line 199
    .line 200
    const/4 v4, 0x3

    .line 201
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    .line 206
    .line 207
    const/16 v3, 0xc

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 210
    .line 211
    .line 212
    const/high16 v2, 0x3f000000    # 0.5f

    .line 213
    .line 214
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 215
    .line 216
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 217
    .line 218
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_4

    .line 223
    .line 224
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isFoldableProduct()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_3

    .line 229
    .line 230
    iget v1, v6, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 231
    .line 232
    if-nez v1, :cond_3

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_3
    move v1, v13

    .line 236
    goto :goto_2

    .line 237
    :cond_4
    :goto_1
    iget-object v1, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    :goto_2
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {v0, v13, v13, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_5
    iget-object v6, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const v7, 0x7f070122

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    float-to-int v6, v6

    .line 267
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 268
    .line 269
    const/16 v6, 0x8

    .line 270
    .line 271
    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    const/16 v6, 0xe

    .line 278
    .line 279
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 280
    .line 281
    .line 282
    const/16 v6, 0xa

    .line 283
    .line 284
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    .line 286
    .line 287
    const/16 v6, 0xd

    .line 288
    .line 289
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 290
    .line 291
    .line 292
    const/4 v4, 0x3

    .line 293
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 294
    .line 295
    .line 296
    const/16 v4, 0xc

    .line 297
    .line 298
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 302
    .line 303
    .line 304
    const/16 v2, 0x50

    .line 305
    .line 306
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->adjustBiometricViewWeightsForPatternPortrait()F

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 314
    .line 315
    const/high16 v3, 0x3f800000    # 1.0f

    .line 316
    .line 317
    sub-float/2addr v3, v2

    .line 318
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 319
    .line 320
    iget-object v1, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-virtual {v0, v13, v13, v13, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 327
    .line 328
    .line 329
    :goto_3
    move v15, v9

    .line 330
    move v14, v10

    .line 331
    goto/16 :goto_c

    .line 332
    .line 333
    :cond_6
    :goto_4
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    .line 334
    .line 335
    const v7, 0x7f0d003d

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v7, v6, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    move-object v15, v0

    .line 343
    check-cast v15, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 344
    .line 345
    const v0, 0x7f0a012e

    .line 346
    .line 347
    .line 348
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Landroid/widget/EditText;

    .line 353
    .line 354
    const v7, 0x7f0a0153

    .line 355
    .line 356
    .line 357
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    check-cast v7, Landroid/widget/ImageButton;

    .line 362
    .line 363
    if-eqz v0, :cond_a

    .line 364
    .line 365
    if-eqz v7, :cond_a

    .line 366
    .line 367
    new-instance v8, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v2, ";disableToolbar=true;lockScreenPasswordField=true"

    .line 380
    .line 381
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mUserManager:Landroid/os/UserManager;

    .line 392
    .line 393
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    invoke-virtual {v2, v8}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_7

    .line 402
    .line 403
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    .line 408
    .line 409
    .line 410
    :cond_7
    const/4 v8, 0x3

    .line 411
    if-ne v9, v8, :cond_9

    .line 412
    .line 413
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 414
    .line 415
    invoke-static {v2, v10}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    if-eqz v2, :cond_8

    .line 420
    .line 421
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-nez v2, :cond_8

    .line 426
    .line 427
    const/16 v2, 0x8

    .line 428
    .line 429
    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 430
    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_8
    invoke-virtual {v7, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    :goto_5
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 437
    .line 438
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    const v8, 0x7f080088

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v8, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 450
    .line 451
    .line 452
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 457
    .line 458
    .line 459
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 460
    .line 461
    const v8, 0x7f10015b

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 469
    .line 470
    .line 471
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 472
    .line 473
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    const v8, 0x7f06004b

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v8, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 489
    .line 490
    .line 491
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$3;

    .line 492
    .line 493
    invoke-direct {v2, v11, v0, v7}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;Landroid/widget/EditText;Landroid/widget/ImageButton;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    .line 498
    .line 499
    goto :goto_6

    .line 500
    :cond_9
    const/16 v0, 0x8

    .line 501
    .line 502
    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 503
    .line 504
    .line 505
    :cond_a
    :goto_6
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 506
    .line 507
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 516
    .line 517
    if-ne v2, v14, :cond_b

    .line 518
    .line 519
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 520
    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_b
    const/4 v2, 0x1

    .line 524
    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 525
    .line 526
    .line 527
    :goto_7
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 532
    .line 533
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    check-cast v6, Landroid/widget/ImageView;

    .line 538
    .line 539
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    check-cast v7, Landroid/widget/LinearLayout;

    .line 544
    .line 545
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    check-cast v8, Landroid/widget/ScrollView;

    .line 550
    .line 551
    const v5, 0x7f0a009c

    .line 552
    .line 553
    .line 554
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 555
    .line 556
    .line 557
    move-result-object v19

    .line 558
    check-cast v19, Landroid/widget/LinearLayout;

    .line 559
    .line 560
    const v5, 0x7f0a0154

    .line 561
    .line 562
    .line 563
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 568
    .line 569
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 578
    .line 579
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 584
    .line 585
    invoke-virtual {v8}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 590
    .line 591
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 592
    .line 593
    .line 594
    move-result-object v19

    .line 595
    move-object/from16 v3, v19

    .line 596
    .line 597
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 598
    .line 599
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 600
    .line 601
    const/4 v1, -0x1

    .line 602
    if-ne v4, v14, :cond_e

    .line 603
    .line 604
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 605
    .line 606
    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 607
    .line 608
    const/high16 v4, 0x3f000000    # 0.5f

    .line 609
    .line 610
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 611
    .line 612
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 613
    .line 614
    const/16 v2, 0xd

    .line 615
    .line 616
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 617
    .line 618
    .line 619
    const/16 v4, 0xa

    .line 620
    .line 621
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 622
    .line 623
    .line 624
    const/16 v4, 0x11

    .line 625
    .line 626
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 630
    .line 631
    .line 632
    const/16 v2, 0xc

    .line 633
    .line 634
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 635
    .line 636
    .line 637
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    if-nez v2, :cond_d

    .line 642
    .line 643
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isFoldableProduct()Z

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    if-eqz v2, :cond_c

    .line 648
    .line 649
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 650
    .line 651
    if-nez v0, :cond_c

    .line 652
    .line 653
    goto :goto_8

    .line 654
    :cond_c
    move v0, v13

    .line 655
    goto :goto_9

    .line 656
    :cond_d
    :goto_8
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 657
    .line 658
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    :goto_9
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 663
    .line 664
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    invoke-virtual {v15, v13, v13, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 669
    .line 670
    .line 671
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 672
    .line 673
    :goto_a
    const v0, 0x7f0a0162

    .line 674
    .line 675
    .line 676
    goto :goto_b

    .line 677
    :cond_e
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 678
    .line 679
    iget-object v4, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 680
    .line 681
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    const v14, 0x7f070122

    .line 686
    .line 687
    .line 688
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimension(I)F

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    float-to-int v4, v4

    .line 693
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 694
    .line 695
    const/16 v4, 0x50

    .line 696
    .line 697
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 698
    .line 699
    .line 700
    const/16 v4, 0xa

    .line 701
    .line 702
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 703
    .line 704
    .line 705
    const/16 v4, 0xd

    .line 706
    .line 707
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 708
    .line 709
    .line 710
    const/high16 v6, 0x3e800000    # 0.25f

    .line 711
    .line 712
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 713
    .line 714
    const/high16 v2, 0x3f400000    # 0.75f

    .line 715
    .line 716
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 717
    .line 718
    const/16 v2, 0xc

    .line 719
    .line 720
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 724
    .line 725
    .line 726
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 727
    .line 728
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    invoke-virtual {v15, v13, v13, v13, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 733
    .line 734
    .line 735
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isFoldableProduct()Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-eqz v2, :cond_f

    .line 740
    .line 741
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 742
    .line 743
    if-nez v0, :cond_f

    .line 744
    .line 745
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 746
    .line 747
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 752
    .line 753
    int-to-double v0, v0

    .line 754
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    mul-double/2addr v0, v2

    .line 760
    double-to-int v0, v0

    .line 761
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 762
    .line 763
    goto :goto_a

    .line 764
    :cond_f
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    if-eqz v0, :cond_10

    .line 769
    .line 770
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 771
    .line 772
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 777
    .line 778
    int-to-double v0, v0

    .line 779
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    mul-double/2addr v0, v2

    .line 785
    double-to-int v0, v0

    .line 786
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 787
    .line 788
    goto :goto_a

    .line 789
    :cond_10
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 790
    .line 791
    goto :goto_a

    .line 792
    :goto_b
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    move-object v3, v0

    .line 797
    check-cast v3, Landroid/widget/ScrollView;

    .line 798
    .line 799
    const v0, 0x7f0a00ec

    .line 800
    .line 801
    .line 802
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    move-object v6, v0

    .line 807
    check-cast v6, Landroid/widget/ImageView;

    .line 808
    .line 809
    const v0, 0x7f0a0161

    .line 810
    .line 811
    .line 812
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    move-object v4, v0

    .line 817
    check-cast v4, Landroid/widget/LinearLayout;

    .line 818
    .line 819
    const v0, 0x7f0a0151

    .line 820
    .line 821
    .line 822
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    move-object v5, v0

    .line 827
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 828
    .line 829
    const v0, 0x7f0a0120

    .line 830
    .line 831
    .line 832
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    move-object v7, v0

    .line 837
    check-cast v7, Landroid/widget/TextView;

    .line 838
    .line 839
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    move-object v14, v0

    .line 844
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 845
    .line 846
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    move-object/from16 v16, v0

    .line 851
    .line 852
    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    .line 854
    const v0, 0x7f0a009c

    .line 855
    .line 856
    .line 857
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    move-object v8, v0

    .line 862
    check-cast v8, Landroid/widget/LinearLayout;

    .line 863
    .line 864
    invoke-virtual {v15}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$4;

    .line 869
    .line 870
    move-object v0, v1

    .line 871
    move-object v13, v1

    .line 872
    move-object/from16 v1, p0

    .line 873
    .line 874
    move-object v11, v2

    .line 875
    move-object v2, v15

    .line 876
    move-object/from16 v18, v15

    .line 877
    .line 878
    const/4 v15, 0x3

    .line 879
    move v15, v9

    .line 880
    move-object v9, v14

    .line 881
    move v14, v10

    .line 882
    move-object/from16 v10, v16

    .line 883
    .line 884
    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$4;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v11, v13}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 888
    .line 889
    .line 890
    move-object/from16 v0, v18

    .line 891
    .line 892
    :goto_c
    iget-boolean v1, v12, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsKnoxManagedProfile:Z

    .line 893
    .line 894
    if-eqz v1, :cond_11

    .line 895
    .line 896
    const v1, 0x7f0a014d

    .line 897
    .line 898
    .line 899
    move-object/from16 v2, p1

    .line 900
    .line 901
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    if-eqz v1, :cond_11

    .line 906
    .line 907
    move-object/from16 v2, p0

    .line 908
    .line 909
    iget-object v3, v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 910
    .line 911
    const v4, 0x7f0800a4

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 919
    .line 920
    .line 921
    goto :goto_d

    .line 922
    :cond_11
    move-object/from16 v2, p0

    .line 923
    .line 924
    :goto_d
    const v1, 0x7f0a009b

    .line 925
    .line 926
    .line 927
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    check-cast v1, Landroid/widget/TextView;

    .line 932
    .line 933
    if-eqz v1, :cond_15

    .line 934
    .line 935
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    .line 936
    .line 937
    const/4 v4, 0x1

    .line 938
    if-eq v15, v4, :cond_14

    .line 939
    .line 940
    const/4 v5, 0x2

    .line 941
    if-eq v15, v5, :cond_13

    .line 942
    .line 943
    const/4 v4, 0x3

    .line 944
    if-eq v15, v4, :cond_12

    .line 945
    .line 946
    const/4 v5, 0x0

    .line 947
    goto :goto_f

    .line 948
    :cond_12
    aget-object v3, v3, v5

    .line 949
    .line 950
    const/4 v5, 0x0

    .line 951
    aget v17, v3, v5

    .line 952
    .line 953
    :goto_e
    move/from16 v5, v17

    .line 954
    .line 955
    goto :goto_f

    .line 956
    :cond_13
    const/4 v5, 0x0

    .line 957
    aget-object v3, v3, v5

    .line 958
    .line 959
    aget v17, v3, v5

    .line 960
    .line 961
    goto :goto_e

    .line 962
    :cond_14
    const/4 v5, 0x0

    .line 963
    aget-object v3, v3, v4

    .line 964
    .line 965
    aget v3, v3, v5

    .line 966
    .line 967
    move v5, v3

    .line 968
    :goto_f
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 969
    .line 970
    .line 971
    :cond_15
    iget-object v1, v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 972
    .line 973
    invoke-static {v1, v14}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    if-eqz v1, :cond_16

    .line 978
    .line 979
    const v1, 0x7f0a0123

    .line 980
    .line 981
    .line 982
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    check-cast v1, Landroid/widget/ImageView;

    .line 987
    .line 988
    const/4 v2, 0x0

    .line 989
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    .line 991
    .line 992
    :cond_16
    return-object v0
.end method

.method public final getDetailsTextView(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    const p0, 0x7f0a009b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/TextView;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/high16 v1, 0x10000

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/high16 v1, 0x20000

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/high16 v1, 0x30000

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/high16 v1, 0x40000

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    const/high16 v1, 0x50000

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    const/high16 v1, 0x60000

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    const/high16 v1, 0x70000

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    const/high16 v1, 0x80000

    .line 40
    .line 41
    if-eq v0, v1, :cond_0

    .line 42
    .line 43
    const-string p0, ""

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const v0, 0x7f10005c

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const v0, 0x7f10005e

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const v0, 0x7f10005d

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    return-object p0
.end method

.method public final getWPCMessage(II)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    if-ne p2, v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const p1, 0x7f10017c

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-array p1, p2, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-array p1, p2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const p1, 0x7f10017a

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-array p1, p2, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const v0, 0x7f0e0009

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const v0, 0x7f0e0007

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    if-ne p2, v0, :cond_5

    .line 105
    .line 106
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    const v0, 0x7f0e000a

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const v0, 0x7f0e0008

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    goto :goto_0

    .line 156
    :cond_5
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    const v0, 0x7f10017d

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    goto :goto_0

    .line 188
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    const v0, 0x7f10017b

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    :goto_0
    return-object p0
.end method

.method public final isForgotbtnDialogShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final modifyLayoutParamsIfNeeded(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    not-int v0, v0

    .line 10
    and-int/2addr p0, v0

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 16
    .line 17
    return-void
.end method

.method public final onAttachedPatternViewToWindow(Lcom/android/internal/widget/LockPatternView;)V
    .locals 1

    .line 1
    const/4 p0, -0x1

    .line 2
    const/high16 v0, -0x10000

    .line 3
    .line 4
    invoke-virtual {p1, p0, p0, v0}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onAttachedToWindow(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    const v0, 0x7f0a0120

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const v2, 0x7f10003c

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const v2, 0x7f10003b

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, p2, v1, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->setTextOrHide$1(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, p2, v1, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->setTextOrHide$1(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object p2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->setTextOrHide$1(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p0, p4, p2, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->setTextOrHide$1(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 85
    .line 86
    .line 87
    if-eqz p5, :cond_2

    .line 88
    .line 89
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/ResourceManager;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    const-string p2, "com.android.settings"

    .line 94
    .line 95
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p0, "knox_basic"

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    const/4 p1, -0x1

    .line 107
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    .line 13
    iget v1, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_10

    .line 19
    .line 20
    :cond_0
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    if-lez p4, :cond_4

    .line 25
    .line 26
    if-eq v1, v6, :cond_3

    .line 27
    .line 28
    const/4 v8, 0x2

    .line 29
    if-eq v1, v8, :cond_2

    .line 30
    .line 31
    if-ne v1, v5, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v2, "Unknown credential type: "

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    instance-of v1, v2, Lcom/android/internal/widget/LockPatternView;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    instance-of v1, v2, Landroid/widget/EditText;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    move-object v1, v2

    .line 62
    check-cast v1, Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setClickable(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-class v8, Landroid/view/inputmethod/InputMethodManager;

    .line 79
    .line 80
    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v2, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    const-string v1, "reportFailedAttempt"

    .line 94
    .line 95
    const-string v2, "KKG::WorkProfileSysUiClientHelper"

    .line 96
    .line 97
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    .line 102
    iget v8, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 103
    .line 104
    invoke-virtual {v1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    .line 110
    iget v9, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 111
    .line 112
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {v10, v9}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const/4 v11, 0x0

    .line 123
    if-eqz v10, :cond_5

    .line 124
    .line 125
    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_5
    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_6

    .line 138
    .line 139
    invoke-static {v12, v9}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getAdminUid(Landroid/content/Context;I)I

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    .line 148
    .line 149
    invoke-direct {v15, v13, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v14, v12, v15}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    if-eqz v12, :cond_7

    .line 157
    .line 158
    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-static {v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    if-eqz v12, :cond_7

    .line 168
    .line 169
    invoke-virtual {v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    goto :goto_2

    .line 174
    :cond_7
    move-object v12, v11

    .line 175
    :goto_2
    if-eqz v12, :cond_8

    .line 176
    .line 177
    invoke-virtual {v12}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    goto :goto_3

    .line 182
    :cond_8
    move v12, v7

    .line 183
    :goto_3
    if-lez v12, :cond_9

    .line 184
    .line 185
    const v12, 0x186a0

    .line 186
    .line 187
    .line 188
    mul-int/2addr v12, v9

    .line 189
    goto :goto_4

    .line 190
    :cond_9
    if-nez v9, :cond_a

    .line 191
    .line 192
    move v12, v7

    .line 193
    goto :goto_4

    .line 194
    :cond_a
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    filled-new-array {v12}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v17

    .line 206
    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    const-string v13, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 209
    .line 210
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    const/16 v18, 0x0

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    const-string v12, "getMaximumFailedPasswordsForDisable"

    .line 222
    .line 223
    move-object/from16 v16, v12

    .line 224
    .line 225
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    if-eqz v13, :cond_b

    .line 230
    .line 231
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 232
    .line 233
    .line 234
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 239
    .line 240
    .line 241
    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :catch_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 252
    .line 253
    .line 254
    :cond_b
    move v12, v7

    .line 255
    :goto_5
    if-lez v8, :cond_c

    .line 256
    .line 257
    if-lez v12, :cond_c

    .line 258
    .line 259
    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    .line 260
    .line 261
    .line 262
    move-result v13

    .line 263
    goto :goto_6

    .line 264
    :cond_c
    if-lez v8, :cond_d

    .line 265
    .line 266
    move v13, v8

    .line 267
    goto :goto_6

    .line 268
    :cond_d
    if-lez v12, :cond_e

    .line 269
    .line 270
    move v13, v12

    .line 271
    goto :goto_6

    .line 272
    :cond_e
    move v13, v7

    .line 273
    :goto_6
    if-lez v13, :cond_26

    .line 274
    .line 275
    if-gtz v1, :cond_f

    .line 276
    .line 277
    goto/16 :goto_10

    .line 278
    .line 279
    :cond_f
    sub-int v14, v13, v1

    .line 280
    .line 281
    const/16 v15, 0xa

    .line 282
    .line 283
    if-le v14, v15, :cond_10

    .line 284
    .line 285
    goto/16 :goto_10

    .line 286
    .line 287
    :cond_10
    if-ne v14, v6, :cond_11

    .line 288
    .line 289
    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    const v5, 0x7f100132

    .line 292
    .line 293
    .line 294
    invoke-virtual {v15, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    goto :goto_7

    .line 299
    :cond_11
    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 300
    .line 301
    const v15, 0x7f100133

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    :goto_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v15

    .line 312
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v15

    .line 316
    invoke-static {v5, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    move-object/from16 v15, p5

    .line 321
    .line 322
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    const/4 v5, 0x5

    .line 326
    if-le v14, v5, :cond_12

    .line 327
    .line 328
    goto/16 :goto_10

    .line 329
    .line 330
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v15, "Under than 5 attempts left :  Wipe : "

    .line 333
    .line 334
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v15, " Disable : "

    .line 341
    .line 342
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 356
    .line 357
    const-string v5, "device_policy"

    .line 358
    .line 359
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 364
    .line 365
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-nez v5, :cond_14

    .line 370
    .line 371
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_13

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_13
    move v2, v7

    .line 379
    goto :goto_9

    .line 380
    :cond_14
    :goto_8
    move v2, v6

    .line 381
    :goto_9
    if-ne v13, v8, :cond_1c

    .line 382
    .line 383
    if-ne v1, v6, :cond_18

    .line 384
    .line 385
    if-ne v14, v6, :cond_16

    .line 386
    .line 387
    if-nez v2, :cond_15

    .line 388
    .line 389
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 390
    .line 391
    const v2, 0x7f100139

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    new-array v2, v7, [Ljava/lang/Object;

    .line 399
    .line 400
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    goto/16 :goto_a

    .line 405
    .line 406
    :cond_15
    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->getWPCMessage(II)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    goto/16 :goto_a

    .line 411
    .line 412
    :cond_16
    if-nez v2, :cond_17

    .line 413
    .line 414
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    const v2, 0x7f10013a

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    goto/16 :goto_a

    .line 436
    .line 437
    :cond_17
    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->getWPCMessage(II)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    goto/16 :goto_a

    .line 442
    .line 443
    :cond_18
    if-ne v14, v6, :cond_1a

    .line 444
    .line 445
    if-nez v2, :cond_19

    .line 446
    .line 447
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 448
    .line 449
    const v5, 0x7f10013c

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    goto/16 :goto_a

    .line 469
    .line 470
    :cond_19
    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->getWPCMessage(II)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    goto/16 :goto_a

    .line 475
    .line 476
    :cond_1a
    if-nez v2, :cond_1b

    .line 477
    .line 478
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 479
    .line 480
    const v5, 0x7f10013b

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    goto :goto_a

    .line 504
    :cond_1b
    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->getWPCMessage(II)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    goto :goto_a

    .line 509
    :cond_1c
    if-ne v1, v6, :cond_1e

    .line 510
    .line 511
    if-ne v13, v6, :cond_1d

    .line 512
    .line 513
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 514
    .line 515
    const v2, 0x7f100054

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    new-array v2, v7, [Ljava/lang/Object;

    .line 523
    .line 524
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    goto :goto_a

    .line 529
    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 530
    .line 531
    const v2, 0x7f100055

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    goto :goto_a

    .line 551
    :cond_1e
    if-ne v14, v6, :cond_1f

    .line 552
    .line 553
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 554
    .line 555
    const v5, 0x7f100057

    .line 556
    .line 557
    .line 558
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    goto :goto_a

    .line 575
    :cond_1f
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 576
    .line 577
    const v5, 0x7f100056

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    :goto_a
    if-ge v14, v6, :cond_23

    .line 601
    .line 602
    if-eq v13, v8, :cond_22

    .line 603
    .line 604
    const-string v0, "ro.organization_owned"

    .line 605
    .line 606
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    if-eqz v0, :cond_20

    .line 611
    .line 612
    const-string v1, "true"

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_20

    .line 619
    .line 620
    goto :goto_b

    .line 621
    :cond_20
    move v6, v7

    .line 622
    :goto_b
    if-eqz v6, :cond_21

    .line 623
    .line 624
    if-eqz v10, :cond_21

    .line 625
    .line 626
    invoke-virtual {v10}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->lock()Z

    .line 627
    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_21
    new-instance v0, Landroid/os/Bundle;

    .line 631
    .line 632
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    .line 634
    .line 635
    const-string v1, "android.intent.extra.user_handle"

    .line 636
    .line 637
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    .line 639
    .line 640
    const-string v1, "knox.container.proxy.POLICY_ADMIN_LOCK"

    .line 641
    .line 642
    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 643
    .line 644
    .line 645
    :goto_c
    :try_start_1
    const-string v0, "knoxztinternal"

    .line 646
    .line 647
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-static {v0}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    if-eqz v0, :cond_22

    .line 656
    .line 657
    invoke-interface {v0, v4, v7, v11}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;->notifyFrameworkEvent(IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 658
    .line 659
    .line 660
    goto :goto_d

    .line 661
    :catchall_1
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 663
    .line 664
    .line 665
    :cond_22
    :goto_d
    iget-object v0, v3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 666
    .line 667
    const/4 v1, 0x3

    .line 668
    invoke-interface {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_10

    .line 672
    .line 673
    :cond_23
    if-ge v14, v6, :cond_24

    .line 674
    .line 675
    move v2, v6

    .line 676
    goto :goto_e

    .line 677
    :cond_24
    move v2, v7

    .line 678
    :goto_e
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 679
    .line 680
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 689
    .line 690
    and-int/lit8 v3, v3, 0x30

    .line 691
    .line 692
    const/16 v4, 0x20

    .line 693
    .line 694
    if-ne v3, v4, :cond_25

    .line 695
    .line 696
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 697
    .line 698
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 699
    .line 700
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    const v5, 0x1030128

    .line 705
    .line 706
    .line 707
    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 708
    .line 709
    .line 710
    goto :goto_f

    .line 711
    :cond_25
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 712
    .line 713
    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 714
    .line 715
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    const v5, 0x103012b

    .line 720
    .line 721
    .line 722
    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 723
    .line 724
    .line 725
    :goto_f
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 726
    .line 727
    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 737
    .line 738
    .line 739
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$1;

    .line 740
    .line 741
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 742
    .line 743
    .line 744
    const v3, 0x104000a

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 755
    .line 756
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    const/16 v3, 0x7e1

    .line 761
    .line 762
    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 763
    .line 764
    .line 765
    const/16 v3, 0x50

    .line 766
    .line 767
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 768
    .line 769
    .line 770
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 771
    .line 772
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 773
    .line 774
    .line 775
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 776
    .line 777
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$2;

    .line 778
    .line 779
    invoke-direct {v3, v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$2;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;Z)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 783
    .line 784
    .line 785
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 786
    .line 787
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 788
    .line 789
    .line 790
    :cond_26
    :goto_10
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;ILandroid/view/View;)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x64

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p2, v2, :cond_2

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-eq p2, v3, :cond_1

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ne p2, v3, :cond_0

    .line 11
    .line 12
    instance-of p2, p3, Landroid/widget/EditText;

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    check-cast p3, Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x81

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 41
    .line 42
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {p2, p3, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "Unknown credential type: "

    .line 55
    .line 56
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_1
    instance-of p0, p3, Lcom/android/internal/widget/LockPatternView;

    .line 65
    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    check-cast p3, Lcom/android/internal/widget/LockPatternView;

    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    invoke-virtual {p3, p0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    instance-of p2, p3, Landroid/widget/EditText;

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    check-cast p3, Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 82
    .line 83
    .line 84
    const/16 p2, 0x12

    .line 85
    .line 86
    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    .line 105
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-direct {p2, p3, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_0
    return-void
.end method

.method public final setBiometricAttemptDeadline(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setDetailText(Landroid/widget/TextView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/high16 v1, 0x10000

    .line 12
    .line 13
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->DETAIL_TEXTS:[[I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/high16 v1, 0x20000

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/high16 v1, 0x30000

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/high16 v1, 0x40000

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    const/high16 v1, 0x50000

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    const/high16 v1, 0x60000

    .line 35
    .line 36
    if-eq v0, v1, :cond_0

    .line 37
    .line 38
    const-string p0, ""

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v0, 0x2

    .line 48
    aget-object v0, v2, v0

    .line 49
    .line 50
    aget v0, v0, v3

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 v0, 0x1

    .line 64
    aget-object v0, v2, v0

    .line 65
    .line 66
    aget v0, v0, v3

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    aget-object v0, v2, v3

    .line 80
    .line 81
    aget v0, v0, v3

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :goto_0
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method public final setErrorTimerText(Landroid/widget/TextView;J)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long v0, p2, v0

    .line 4
    .line 5
    long-to-float v0, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3c

    .line 11
    .line 12
    rem-int/2addr v0, v1

    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr v0, v2

    .line 15
    const-wide/32 v3, 0xea60

    .line 16
    .line 17
    .line 18
    div-long/2addr p2, v3

    .line 19
    long-to-double p2, p2

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    double-to-int p2, p2

    .line 25
    rem-int/2addr p2, v1

    .line 26
    add-int/2addr p2, v2

    .line 27
    if-gtz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const p3, 0x7f0e0005

    .line 31
    .line 32
    .line 33
    if-le p2, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-ne v0, v1, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const p3, 0x7f0e0006

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p3, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void
.end method

.method public final setTextOrHide$1(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    invoke-static {p0, p3}, Lcom/samsung/android/biometrics/app/setting/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
