.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const/16 v0, 0xb7

    .line 12
    .line 13
    const/16 v1, 0x728

    .line 14
    .line 15
    invoke-static {v0, v1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/16 p2, 0xb7

    .line 31
    .line 32
    const/16 v0, 0x729

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {p2, v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 45
    .line 46
    const/4 p2, -0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    invoke-interface {p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v0, "removeSecureFolder()"

    .line 73
    .line 74
    const-string v2, "KKG::SecureFolderSysUiClientHelper"

    .line 75
    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 80
    .line 81
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 82
    .line 83
    if-gtz v0, :cond_0

    .line 84
    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string p1, "removeSecureFolder(). Incorrect User ID : "

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_0
    const-string v3, "setActiveAdminIfNeeded"

    .line 105
    .line 106
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance v3, Landroid/content/ComponentName;

    .line 110
    .line 111
    const-string v4, "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver"

    .line 112
    .line 113
    const-string v5, "com.samsung.knox.securefolder"

    .line 114
    .line 115
    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v4, "device_policy"

    .line 119
    .line 120
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 125
    .line 126
    const-string v7, "DevicePolicyManager is null"

    .line 127
    .line 128
    if-nez v6, :cond_1

    .line 129
    .line 130
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move v6, p2

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v6, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    :goto_0
    if-nez v6, :cond_3

    .line 140
    .line 141
    const-string v6, "setActiveAdminIfNeeded(): Setting active admin"

    .line 142
    .line 143
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 151
    .line 152
    if-nez v4, :cond_2

    .line 153
    .line 154
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    :try_start_0
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 159
    .line 160
    invoke-virtual {v4, v3, p2, p0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catch_0
    move-exception p0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v4, "Error setting active admin : "

    .line 168
    .line 169
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    const-string v3, "DelFlag"

    .line 191
    .line 192
    const/4 v4, 0x1

    .line 193
    invoke-static {p0, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    const-string v3, "secure_folder_image_name"

    .line 201
    .line 202
    const-string v4, "sf_app_icon_00"

    .line 203
    .line 204
    invoke-static {p0, v3, v4, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    const-string v3, "secure_folder_name"

    .line 212
    .line 213
    invoke-static {p0, v3, v1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 214
    .line 215
    .line 216
    :try_start_1
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p1, v5, p2, p0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    const-string p1, "user"

    .line 225
    .line 226
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    check-cast p0, Landroid/os/UserManager;

    .line 231
    .line 232
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :catch_1
    move-exception p0

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string p2, "removeSecureFolderUser(). Exception : "

    .line 240
    .line 241
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :goto_2
    return-void

    .line 259
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 260
    .line 261
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 262
    .line 263
    const/4 p2, 0x0

    .line 264
    const/16 v0, 0x64

    .line 265
    .line 266
    const/16 v1, 0x3ea

    .line 267
    .line 268
    invoke-static {v0, v1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_2
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 280
    .line 281
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mKnoxEventList:Ljava/util/ArrayList;

    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    const/16 v1, 0x64

    .line 285
    .line 286
    const/16 v2, 0x3eb

    .line 287
    .line 288
    invoke-static {v1, v2, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSamsungAnalyticsLogger;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 296
    .line 297
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 298
    .line 299
    const-string v0, "activity"

    .line 300
    .line 301
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    check-cast p2, Landroid/app/ActivityManager;

    .line 306
    .line 307
    invoke-virtual {p2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    const/4 v0, 0x1

    .line 312
    if-eqz p2, :cond_4

    .line 313
    .line 314
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 315
    .line 316
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    const p1, 0x7f100137

    .line 319
    .line 320
    .line 321
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 330
    .line 331
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 332
    .line 333
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 334
    .line 335
    const/4 v1, 0x3

    .line 336
    invoke-interface {p2, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 337
    .line 338
    .line 339
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$5;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 340
    .line 341
    const/4 p2, 0x0

    .line 342
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->showSFLockedView(ZZ)V

    .line 343
    .line 344
    .line 345
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 346
    .line 347
    .line 348
    :goto_3
    return-void

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
