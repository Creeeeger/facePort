.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;
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

.field public mBtnForgot:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mIsPasswordShown:Z

.field public final mKnoxEventList:Ljava/util/ArrayList;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPackageName:Ljava/lang/String;

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mUninstallBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x7f10005f

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f100143

    .line 9
    .line 10
    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f100142

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
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 25
    .line 26
    const-string p2, "persona"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 33
    .line 34
    const-string p2, "activity"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/app/ActivityManager;

    .line 41
    .line 42
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    .line 49
    const-string p2, "device_policy"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->getCurrentLockType()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p2, " + fingerprint"

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p2, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    const/16 p3, 0x64

    .line 82
    .line 83
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    const-string v0, "statusID"

    .line 88
    .line 89
    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string p3, "detail"

    .line 93
    .line 94
    invoke-virtual {p2, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string p0, "type"

    .line 98
    .line 99
    const-string p3, "status"

    .line 100
    .line 101
    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final changeCredentialViewIfNeeded(Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;
    .locals 20

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 6
    .line 7
    iget v12, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 8
    .line 9
    const/16 v7, 0xd

    .line 10
    .line 11
    const/16 v8, 0x8

    .line 12
    .line 13
    const v10, 0x7f0a009c

    .line 14
    .line 15
    .line 16
    const v13, 0x7f0a0161

    .line 17
    .line 18
    .line 19
    const v14, 0x7f0a00ec

    .line 20
    .line 21
    .line 22
    const v15, 0x7f0a0162

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a0151

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x3

    .line 31
    const/4 v9, 0x2

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eq v1, v2, :cond_6

    .line 34
    .line 35
    if-eq v1, v9, :cond_1

    .line 36
    .line 37
    if-ne v1, v4, :cond_0

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Unknown credential type: "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    iget-object v1, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    .line 62
    .line 63
    const v2, 0x7f0d003e

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 71
    .line 72
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v11, v2, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 90
    .line 91
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .line 109
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    check-cast v14, Landroid/widget/ImageView;

    .line 114
    .line 115
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    check-cast v13, Landroid/widget/LinearLayout;

    .line 120
    .line 121
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    check-cast v10, Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    .line 133
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .line 139
    const v15, 0x7f0a0195

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v15

    .line 146
    check-cast v15, Landroid/widget/LinearLayout;

    .line 147
    .line 148
    const v4, 0x7f0a0194

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Landroid/widget/LinearLayout;

    .line 156
    .line 157
    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    .line 158
    .line 159
    if-ne v6, v9, :cond_4

    .line 160
    .line 161
    iput v5, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 162
    .line 163
    invoke-virtual {v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    const/16 v4, 0x11

    .line 173
    .line 174
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 175
    .line 176
    .line 177
    const v4, 0x7f0a0120

    .line 178
    .line 179
    .line 180
    const/4 v6, 0x3

    .line 181
    invoke-virtual {v10, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    .line 186
    .line 187
    const/16 v4, 0xc

    .line 188
    .line 189
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-nez v4, :cond_3

    .line 197
    .line 198
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isFoldableProduct()Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_2

    .line 203
    .line 204
    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 205
    .line 206
    if-nez v2, :cond_2

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_2
    move v2, v5

    .line 210
    goto :goto_1

    .line 211
    :cond_3
    :goto_0
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    :goto_1
    iget-object v4, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-virtual {v1, v5, v5, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 224
    .line 225
    .line 226
    const/high16 v2, 0x3f000000    # 0.5f

    .line 227
    .line 228
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 229
    .line 230
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_4
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 240
    .line 241
    .line 242
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const v6, 0x7f070122

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    float-to-int v2, v2

    .line 256
    iput v2, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 257
    .line 258
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    const/16 v2, 0xe

    .line 265
    .line 266
    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    .line 268
    .line 269
    const/16 v2, 0xa

    .line 270
    .line 271
    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 275
    .line 276
    .line 277
    const/4 v2, 0x3

    .line 278
    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 279
    .line 280
    .line 281
    const/16 v2, 0xc

    .line 282
    .line 283
    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 287
    .line 288
    .line 289
    const/16 v2, 0x50

    .line 290
    .line 291
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isFoldableProduct()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_5

    .line 299
    .line 300
    const v2, 0x3f19999a    # 0.6f

    .line 301
    .line 302
    .line 303
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 304
    .line 305
    const v0, 0x3ecccccd    # 0.4f

    .line 306
    .line 307
    .line 308
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_5
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->adjustBiometricViewWeightsForPatternPortrait()F

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 316
    .line 317
    const/high16 v0, 0x3f800000    # 1.0f

    .line 318
    .line 319
    sub-float/2addr v0, v2

    .line 320
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 321
    .line 322
    :goto_2
    move/from16 v17, v5

    .line 323
    .line 324
    move v14, v9

    .line 325
    move/from16 v16, v12

    .line 326
    .line 327
    goto/16 :goto_8

    .line 328
    .line 329
    :cond_6
    :goto_3
    iget-object v1, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->layoutInflater:Landroid/view/LayoutInflater;

    .line 330
    .line 331
    const v2, 0x7f0d003d

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    move-object v6, v1

    .line 339
    check-cast v6, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 340
    .line 341
    const v1, 0x7f0a012e

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Landroid/widget/EditText;

    .line 349
    .line 350
    const v2, 0x7f0a0153

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    check-cast v2, Landroid/widget/ImageButton;

    .line 358
    .line 359
    if-eqz v1, :cond_8

    .line 360
    .line 361
    if-eqz v2, :cond_8

    .line 362
    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v7, ";disableToolbar=true;lockScreenPasswordField=true"

    .line 376
    .line 377
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    const/4 v4, 0x3

    .line 388
    if-ne v12, v4, :cond_7

    .line 389
    .line 390
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    iget-object v7, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 394
    .line 395
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    const v8, 0x7f080088

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 407
    .line 408
    .line 409
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 414
    .line 415
    .line 416
    iget-object v7, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 417
    .line 418
    const v8, 0x7f10015d

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    iget-object v7, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 429
    .line 430
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    const v8, 0x7f06004b

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 446
    .line 447
    .line 448
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$1;

    .line 449
    .line 450
    invoke-direct {v3, v11, v1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;Landroid/widget/EditText;Landroid/widget/ImageButton;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    .line 455
    .line 456
    goto :goto_4

    .line 457
    :cond_7
    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    goto :goto_4

    .line 461
    :cond_8
    const/4 v4, 0x3

    .line 462
    :goto_4
    iget-object v1, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 463
    .line 464
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v11, v1, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 480
    .line 481
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Landroid/widget/ImageView;

    .line 486
    .line 487
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    check-cast v7, Landroid/widget/LinearLayout;

    .line 492
    .line 493
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object v8

    .line 497
    check-cast v8, Landroid/widget/ScrollView;

    .line 498
    .line 499
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v19

    .line 503
    check-cast v19, Landroid/widget/LinearLayout;

    .line 504
    .line 505
    const v4, 0x7f0a0154

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 513
    .line 514
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 523
    .line 524
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 529
    .line 530
    invoke-virtual {v8}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 535
    .line 536
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 537
    .line 538
    .line 539
    move-result-object v19

    .line 540
    move-object/from16 v10, v19

    .line 541
    .line 542
    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 543
    .line 544
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 545
    .line 546
    const/4 v13, -0x1

    .line 547
    if-ne v0, v9, :cond_b

    .line 548
    .line 549
    iput v13, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 550
    .line 551
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 552
    .line 553
    const/high16 v0, 0x3f000000    # 0.5f

    .line 554
    .line 555
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 556
    .line 557
    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 558
    .line 559
    const/16 v0, 0xd

    .line 560
    .line 561
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 562
    .line 563
    .line 564
    const/16 v2, 0xa

    .line 565
    .line 566
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 567
    .line 568
    .line 569
    const/16 v2, 0x11

    .line 570
    .line 571
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 575
    .line 576
    .line 577
    const/16 v0, 0xc

    .line 578
    .line 579
    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 580
    .line 581
    .line 582
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-nez v0, :cond_a

    .line 587
    .line 588
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isFoldableProduct()Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-eqz v0, :cond_9

    .line 593
    .line 594
    iget v0, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 595
    .line 596
    if-nez v0, :cond_9

    .line 597
    .line 598
    goto :goto_5

    .line 599
    :cond_9
    move v0, v5

    .line 600
    goto :goto_6

    .line 601
    :cond_a
    :goto_5
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 602
    .line 603
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    :goto_6
    iget-object v1, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 608
    .line 609
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    invoke-virtual {v6, v5, v5, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 614
    .line 615
    .line 616
    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 617
    .line 618
    goto :goto_7

    .line 619
    :cond_b
    iput v13, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 620
    .line 621
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 622
    .line 623
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    const v9, 0x7f070122

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    float-to-int v0, v0

    .line 635
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 636
    .line 637
    const/16 v0, 0x50

    .line 638
    .line 639
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 640
    .line 641
    .line 642
    const/16 v0, 0xa

    .line 643
    .line 644
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 645
    .line 646
    .line 647
    const/16 v0, 0xd

    .line 648
    .line 649
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 650
    .line 651
    .line 652
    const/high16 v3, 0x3e800000    # 0.25f

    .line 653
    .line 654
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 655
    .line 656
    const/high16 v2, 0x3f400000    # 0.75f

    .line 657
    .line 658
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 659
    .line 660
    const/16 v2, 0xc

    .line 661
    .line 662
    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 666
    .line 667
    .line 668
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 669
    .line 670
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    invoke-virtual {v6, v5, v5, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 675
    .line 676
    .line 677
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isFoldableProduct()Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-eqz v0, :cond_c

    .line 682
    .line 683
    iget v0, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 684
    .line 685
    if-nez v0, :cond_c

    .line 686
    .line 687
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 688
    .line 689
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 694
    .line 695
    int-to-double v0, v0

    .line 696
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    mul-double/2addr v0, v2

    .line 702
    double-to-int v0, v0

    .line 703
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 704
    .line 705
    goto :goto_7

    .line 706
    :cond_c
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->isTablet()Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-eqz v0, :cond_d

    .line 711
    .line 712
    iget-object v0, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 713
    .line 714
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 719
    .line 720
    int-to-double v0, v0

    .line 721
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    mul-double/2addr v0, v2

    .line 727
    double-to-int v0, v0

    .line 728
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 729
    .line 730
    goto :goto_7

    .line 731
    :cond_d
    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 732
    .line 733
    :goto_7
    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    move-object v3, v0

    .line 738
    check-cast v3, Landroid/widget/ScrollView;

    .line 739
    .line 740
    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    move-object v7, v0

    .line 745
    check-cast v7, Landroid/widget/ImageView;

    .line 746
    .line 747
    const v0, 0x7f0a0161

    .line 748
    .line 749
    .line 750
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    move-object v4, v0

    .line 755
    check-cast v4, Landroid/widget/LinearLayout;

    .line 756
    .line 757
    const v0, 0x7f0a0151

    .line 758
    .line 759
    .line 760
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    move-object v8, v0

    .line 765
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 766
    .line 767
    const v0, 0x7f0a0120

    .line 768
    .line 769
    .line 770
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    move-object v9, v0

    .line 775
    check-cast v9, Landroid/widget/TextView;

    .line 776
    .line 777
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    move-object v10, v0

    .line 782
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 783
    .line 784
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    move-object v13, v0

    .line 789
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 790
    .line 791
    const v0, 0x7f0a009c

    .line 792
    .line 793
    .line 794
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    move-object v14, v0

    .line 799
    check-cast v14, Landroid/widget/LinearLayout;

    .line 800
    .line 801
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 802
    .line 803
    .line 804
    move-result-object v15

    .line 805
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;

    .line 806
    .line 807
    move-object v0, v2

    .line 808
    move-object/from16 v1, p0

    .line 809
    .line 810
    move/from16 v16, v12

    .line 811
    .line 812
    move-object v12, v2

    .line 813
    move-object v2, v6

    .line 814
    move/from16 v17, v5

    .line 815
    .line 816
    move-object v5, v8

    .line 817
    move-object/from16 v18, v6

    .line 818
    .line 819
    move-object v6, v7

    .line 820
    move-object v7, v9

    .line 821
    move-object v8, v14

    .line 822
    const/4 v14, 0x2

    .line 823
    move-object v9, v10

    .line 824
    move-object v10, v13

    .line 825
    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v15, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 829
    .line 830
    .line 831
    move-object/from16 v1, v18

    .line 832
    .line 833
    :goto_8
    const v0, 0x7f0a014d

    .line 834
    .line 835
    .line 836
    move-object/from16 v2, p1

    .line 837
    .line 838
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    if-eqz v0, :cond_e

    .line 843
    .line 844
    iget-object v2, v11, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 845
    .line 846
    const v3, 0x7f0800a5

    .line 847
    .line 848
    .line 849
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 854
    .line 855
    .line 856
    :cond_e
    const v0, 0x7f0a009b

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    check-cast v0, Landroid/widget/TextView;

    .line 864
    .line 865
    if-eqz v0, :cond_12

    .line 866
    .line 867
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    .line 868
    .line 869
    move/from16 v3, v16

    .line 870
    .line 871
    const/4 v4, 0x1

    .line 872
    if-eq v3, v4, :cond_11

    .line 873
    .line 874
    if-eq v3, v14, :cond_10

    .line 875
    .line 876
    const/4 v4, 0x3

    .line 877
    if-eq v3, v4, :cond_f

    .line 878
    .line 879
    move/from16 v5, v17

    .line 880
    .line 881
    goto :goto_9

    .line 882
    :cond_f
    aget-object v2, v2, v14

    .line 883
    .line 884
    aget v5, v2, v17

    .line 885
    .line 886
    goto :goto_9

    .line 887
    :cond_10
    aget-object v2, v2, v17

    .line 888
    .line 889
    aget v5, v2, v17

    .line 890
    .line 891
    goto :goto_9

    .line 892
    :cond_11
    aget-object v2, v2, v4

    .line 893
    .line 894
    aget v5, v2, v17

    .line 895
    .line 896
    :goto_9
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 897
    .line 898
    .line 899
    :cond_12
    return-object v1
.end method

.method public final getCurrentLockType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "password"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string p0, "pattern"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const-string p0, "pin"

    .line 24
    .line 25
    :goto_0
    return-object p0
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
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 18
    .line 19
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/high16 v1, 0x10000

    .line 26
    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/high16 v1, 0x20000

    .line 30
    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const/high16 v1, 0x30000

    .line 34
    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    const/high16 v1, 0x40000

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    const/high16 v1, 0x50000

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    const/high16 v1, 0x60000

    .line 46
    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const v0, 0x7f10005c

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const v0, 0x7f10005e

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const v0, 0x7f10005d

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method public final isForgotbtnDialogShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

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

.method public final isResetWithSamsungAccountEnable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 8
    .line 9
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 10
    .line 11
    const-string v1, "sf_reset_with_samsung_account"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne p0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    return v2
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
    .locals 4

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
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mExtraInfo:Landroid/os/Bundle;

    .line 15
    .line 16
    const-string v3, "SECURE_FOLDER_NAME"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const v3, 0x7f10003b

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, p2, v2, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p0, p4, p2, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V

    .line 84
    .line 85
    .line 86
    const-string p1, "KKG::SecureFolderSysUiClientHelper"

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    :try_start_0
    iget p3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 90
    .line 91
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    .line 92
    .line 93
    .line 94
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :try_start_1
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    array-length v1, p3

    .line 104
    invoke-static {p3, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {p4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    .line 111
    move-object v2, p4

    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception p4

    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception p4

    .line 116
    move-object p3, v2

    .line 117
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v1, "Unable to fetch sf icon : "

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :goto_2
    if-nez p3, :cond_8

    .line 139
    .line 140
    const-string p4, "Applying default sf icon"

    .line 141
    .line 142
    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const p4, 0x7f0800c5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    instance-of p4, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 159
    .line 160
    if-eqz p4, :cond_2

    .line 161
    .line 162
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_5

    .line 169
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result p4

    .line 177
    if-nez p4, :cond_3

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 180
    .line 181
    .line 182
    move-result-object p4

    .line 183
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result p4

    .line 187
    goto :goto_3

    .line 188
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 189
    .line 190
    .line 191
    move-result p4

    .line 192
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_4

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    goto :goto_4

    .line 211
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    :goto_4
    const/4 v1, 0x1

    .line 216
    if-gtz p4, :cond_5

    .line 217
    .line 218
    move p4, v1

    .line 219
    :cond_5
    if-gtz v0, :cond_6

    .line 220
    .line 221
    move v0, v1

    .line 222
    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 223
    .line 224
    invoke-static {p4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 225
    .line 226
    .line 227
    move-result-object p4

    .line 228
    new-instance v0, Landroid/graphics/Canvas;

    .line 229
    .line 230
    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-virtual {p1, p2, p2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    .line 246
    .line 247
    move-object p1, p4

    .line 248
    :goto_5
    if-eqz p1, :cond_7

    .line 249
    .line 250
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    .line 251
    .line 252
    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 253
    .line 254
    .line 255
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 256
    .line 257
    const/16 v0, 0x64

    .line 258
    .line 259
    invoke-virtual {p1, p4, v0, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    :cond_7
    if-eqz p3, :cond_8

    .line 267
    .line 268
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 269
    .line 270
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    array-length p1, p3

    .line 277
    invoke-static {p3, p2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 282
    .line 283
    .line 284
    :cond_8
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V
    .locals 4

    .line 1
    iget-object p5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    .line 7
    iget p1, p5, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    if-lez p4, :cond_6

    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 17
    .line 18
    iget p4, p5, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {p2, p4}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    new-instance p4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "mFailedUnlockAttemptsForSecureFolder "

    .line 27
    .line 28
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    const-string v0, "KKG::SecureFolderSysUiClientHelper"

    .line 39
    .line 40
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/16 p4, 0xf

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    const/4 v2, 0x3

    .line 47
    const/4 v3, 0x0

    .line 48
    if-lt p2, p4, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    const-string p1, "mFailedUnlockAttemptsForSecureFolder ( show Locked View. )"

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p1, p5, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 62
    .line 63
    invoke-interface {p1, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->showSFLockedView(ZZ)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    if-eq p1, v1, :cond_5

    .line 78
    .line 79
    const/4 p2, 0x2

    .line 80
    if-eq p1, p2, :cond_4

    .line 81
    .line 82
    if-ne p1, v2, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    const-string p2, "Unknown credential type: "

    .line 88
    .line 89
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_4
    instance-of p0, p3, Lcom/android/internal/widget/LockPatternView;

    .line 98
    .line 99
    if-eqz p0, :cond_6

    .line 100
    .line 101
    check-cast p3, Lcom/android/internal/widget/LockPatternView;

    .line 102
    .line 103
    const/4 p0, 0x4

    .line 104
    invoke-virtual {p3, p0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    :goto_0
    instance-of p1, p3, Landroid/widget/EditText;

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    check-cast p3, Landroid/widget/EditText;

    .line 113
    .line 114
    invoke-virtual {p3, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v3}, Landroid/widget/EditText;->setClickable(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 135
    .line 136
    invoke-virtual {p3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 141
    .line 142
    .line 143
    :cond_6
    :goto_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

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
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 21
    .line 22
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 23
    .line 24
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const-string v3, "KKG::KnoxSamsungAnalyticsLogger"

    .line 31
    .line 32
    const-string v4, "Sending SA logging event"

    .line 33
    .line 34
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/content/Intent;

    .line 38
    .line 39
    const-string v4, "com.samsung.knox.securefolder.salogging"

    .line 40
    .line 41
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "com.samsung.knox.securefolder"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    new-instance v5, Landroid/content/ComponentName;

    .line 50
    .line 51
    const-string v6, "com.samsung.knox.securefolder.common.util.logging.LoggingReceiver"

    .line 52
    .line 53
    invoke-direct {v5, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string v4, "knoxEventList"

    .line 60
    .line 61
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    new-instance v1, Landroid/os/UserHandle;

    .line 65
    .line 66
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 70
    .line 71
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 77
    .line 78
    .line 79
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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {p2, p3, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;I)V

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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-direct {p2, p3, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;I)V

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

.method public final setAuthenticationViewOrientation(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V
    .locals 8

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move p1, v2

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x3

    .line 57
    const v5, 0x7f0a006b

    .line 58
    .line 59
    .line 60
    const v6, 0x7f0a006c

    .line 61
    .line 62
    .line 63
    if-eqz v3, :cond_7

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ne v3, v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/widget/TextView;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroid/widget/TextView;

    .line 83
    .line 84
    :goto_2
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz p2, :cond_a

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    or-int/2addr p2, v2

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 102
    .line 103
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 104
    .line 105
    if-eq p1, v0, :cond_6

    .line 106
    .line 107
    if-eq p1, v1, :cond_5

    .line 108
    .line 109
    if-eq p1, v4, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const v0, 0x7f10011a

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 132
    .line 133
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    const v0, 0x7f10011c

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 151
    .line 152
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    const v0, 0x7f10011e

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mBtnForgot:Landroid/widget/TextView;

    .line 169
    .line 170
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const v2, 0x7f070186

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const v3, 0x7f07018a

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 208
    .line 209
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const v7, 0x7f070189

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-ne v7, v0, :cond_8

    .line 225
    .line 226
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Landroid/widget/TextView;

    .line 231
    .line 232
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 233
    .line 234
    if-eqz p2, :cond_9

    .line 235
    .line 236
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    .line 238
    invoke-direct {p2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const v2, 0x7f070188

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 255
    .line 256
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 257
    .line 258
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_8
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Landroid/widget/TextView;

    .line 269
    .line 270
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 271
    .line 272
    if-eqz p2, :cond_9

    .line 273
    .line 274
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .line 276
    invoke-direct {p2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const v1, 0x7f070187

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 293
    .line 294
    const v0, 0x7f0a009b

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 298
    .line 299
    .line 300
    const/16 v0, 0xe

    .line 301
    .line 302
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .line 309
    .line 310
    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 311
    .line 312
    if-eqz p2, :cond_a

    .line 313
    .line 314
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 318
    .line 319
    const/16 p2, 0x11

    .line 320
    .line 321
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-virtual {p1, v3, p2, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 340
    .line 341
    const p2, 0x7f100136

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 348
    .line 349
    const p2, 0x7f0800a7

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 353
    .line 354
    .line 355
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mUninstallBtn:Landroid/widget/TextView;

    .line 356
    .line 357
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;

    .line 358
    .line 359
    const/4 v0, 0x1

    .line 360
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    :cond_a
    :goto_5
    return-void
.end method

.method public final setBiometricAttemptDeadline(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    .line 13
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    rsub-int/lit8 v2, v0, 0xf

    .line 20
    .line 21
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->DETAIL_TEXTS:[[I

    .line 22
    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    const/high16 v5, 0x10000

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-eq v1, v5, :cond_4

    .line 29
    .line 30
    const/high16 v5, 0x20000

    .line 31
    .line 32
    if-eq v1, v5, :cond_2

    .line 33
    .line 34
    const/high16 v5, 0x30000

    .line 35
    .line 36
    if-eq v1, v5, :cond_2

    .line 37
    .line 38
    const/high16 v5, 0x40000

    .line 39
    .line 40
    if-eq v1, v5, :cond_0

    .line 41
    .line 42
    const/high16 v5, 0x50000

    .line 43
    .line 44
    if-eq v1, v5, :cond_0

    .line 45
    .line 46
    const/high16 v5, 0x60000

    .line 47
    .line 48
    if-eq v1, v5, :cond_0

    .line 49
    .line 50
    const-string p0, ""

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    if-lt v0, v4, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const v1, 0x7f0e0002

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const/4 v0, 0x2

    .line 91
    aget-object v0, v3, v0

    .line 92
    .line 93
    aget v0, v0, v6

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    if-lt v0, v4, :cond_3

    .line 107
    .line 108
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const v1, 0x7f0e0004

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const/4 v0, 0x1

    .line 137
    aget-object v0, v3, v0

    .line 138
    .line 139
    aget v0, v0, v6

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->isResetWithSamsungAccountEnable()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    if-lt v0, v4, :cond_5

    .line 153
    .line 154
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const v1, 0x7f0e0003

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    goto :goto_0

    .line 176
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    aget-object v0, v3, v6

    .line 183
    .line 184
    aget v0, v0, v6

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    :goto_0
    if-eqz p1, :cond_6

    .line 191
    .line 192
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    :cond_6
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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

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

.method public final setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V
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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    invoke-static {p0, p3}, Lcom/samsung/android/biometrics/app/setting/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final showSFLockedView(ZZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.android.settings"

    .line 7
    .line 8
    const-string v2, "com.samsung.android.settings.knox.SecureFolderLockedView"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const v1, 0x10008000

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "fromResetBtn"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p1, "wasLastAttempt"

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 30
    .line 31
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 32
    .line 33
    const-string p2, "userId"

    .line 34
    .line 35
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, "Exception while launching secure folder locked view : "

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "KKG::SecureFolderSysUiClientHelper"

    .line 64
    .line 65
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
