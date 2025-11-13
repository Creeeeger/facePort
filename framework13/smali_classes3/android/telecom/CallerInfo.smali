.class public Landroid/telecom/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CallerInfo"

.field public static final blacklist USER_TYPE_CURRENT:J = 0x0L

.field public static final blacklist USER_TYPE_WORK:J = 0x1L

.field private static final blacklist VDBG:Z


# instance fields
.field public blacklist cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public blacklist cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public blacklist cnapName:Ljava/lang/String;

.field private blacklist contactDisplayPhotoUri:Landroid/net/Uri;

.field public blacklist contactExists:Z

.field private blacklist contactIdOrZero:J

.field public blacklist contactRefUri:Landroid/net/Uri;

.field public blacklist contactRingtoneUri:Landroid/net/Uri;

.field public blacklist customVibrationUri:Landroid/net/Uri;

.field public blacklist geoDescription:Ljava/lang/String;

.field public blacklist isCachedPhotoCurrent:Z

.field public blacklist lookupKey:Ljava/lang/String;

.field private blacklist mIsEmergency:Z

.field private blacklist mIsVoiceMail:Z

.field private blacklist name:Ljava/lang/String;

.field public blacklist namePresentation:I

.field public blacklist needUpdate:Z

.field public blacklist normalizedNumber:Ljava/lang/String;

.field public greylist numberLabel:Ljava/lang/String;

.field public blacklist numberPresentation:I

.field public greylist numberType:I

.field public blacklist phoneLabel:Ljava/lang/String;

.field private blacklist phoneNumber:Ljava/lang/String;

.field public blacklist photoResource:I

.field public blacklist preferredPhoneAccountComponent:Landroid/content/ComponentName;

.field public blacklist preferredPhoneAccountId:Ljava/lang/String;

.field public blacklist rawContactId:J

.field public blacklist secCallBackground:Ljava/lang/String;

.field public blacklist shouldSendToVoicemail:Z

.field public blacklist userType:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    sput-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    .line 207
    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/CallerInfo;->userType:J

    .line 209
    return-void
.end method

.method static blacklist doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Landroid/telecom/CallerInfo;

    .line 559
    if-nez p2, :cond_0

    .line 560
    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_0
    iget-boolean v0, p2, Landroid/telecom/CallerInfo;->contactExists:Z

    if-nez v0, :cond_1

    .line 564
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 569
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 567
    invoke-static {p0, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object p2

    .line 572
    .end local v0    # "username":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "info":Landroid/telecom/CallerInfo;
    invoke-static {p0}, Landroid/telecom/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v7

    .line 407
    .local v7, "cr":Landroid/content/ContentResolver;
    if-eqz v7, :cond_0

    .line 409
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 410
    move-object v1, v7

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 409
    invoke-static {p0, p1, v1}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "re":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CallerInfo"

    const-string v4, "Error getting caller info."

    invoke-static {v3, v1, v4, v2}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static blacklist getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/telecom/CallerInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 222
    new-instance v0, Landroid/telecom/CallerInfo;

    invoke-direct {v0}, Landroid/telecom/CallerInfo;-><init>()V

    .line 223
    .local v0, "info":Landroid/telecom/CallerInfo;
    const/4 v1, 0x0

    iput v1, v0, Landroid/telecom/CallerInfo;->photoResource:I

    .line 224
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 225
    iput v1, v0, Landroid/telecom/CallerInfo;->numberType:I

    .line 226
    iput-object v2, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 227
    iput-object v2, v0, Landroid/telecom/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 228
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->isCachedPhotoCurrent:Z

    .line 229
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    .line 230
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    .line 232
    sget-boolean v5, Landroid/telecom/CallerInfo;->VDBG:Z

    const-string v6, "CallerInfo"

    if-eqz v5, :cond_0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "getCallerInfo() based on cursor..."

    invoke-static {v6, v8, v7}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_0
    if-eqz p2, :cond_13

    .line 237
    const/4 v7, 0x1

    const/4 v8, -0x1

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 245
    const-string v9, "display_name"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 246
    .local v9, "columnIndex":I
    if-eq v9, v8, :cond_1

    .line 247
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 251
    :cond_1
    const-string/jumbo v10, "number"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move v9, v10

    .line 252
    if-eq v9, v8, :cond_2

    .line 253
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 257
    :cond_2
    const-string/jumbo v10, "normalized_number"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move v9, v10

    .line 258
    if-eq v9, v8, :cond_3

    .line 259
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/telecom/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 263
    :cond_3
    const-string/jumbo v10, "label"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move v9, v10

    .line 264
    if-eq v9, v8, :cond_4

    .line 265
    const-string/jumbo v10, "type"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 266
    .local v10, "typeColumnIndex":I
    if-eq v10, v8, :cond_4

    .line 267
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Landroid/telecom/CallerInfo;->numberType:I

    .line 268
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 269
    iget v12, v0, Landroid/telecom/CallerInfo;->numberType:I

    invoke-static {p0, v12, v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 271
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/telecom/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 276
    .end local v10    # "typeColumnIndex":I
    :cond_4
    invoke-static {p1, p2}, Landroid/telecom/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v10

    move v9, v10

    .line 277
    if-eq v9, v8, :cond_7

    .line 278
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 279
    .local v10, "contactId":J
    cmp-long v3, v10, v3

    if-eqz v3, :cond_5

    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-nez v3, :cond_5

    .line 280
    iput-wide v10, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    .line 281
    if-eqz v5, :cond_5

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> got info.contactIdOrZero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_5
    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 286
    const-wide/16 v3, 0x1

    iput-wide v3, v0, Landroid/telecom/CallerInfo;->userType:J

    .line 288
    .end local v10    # "contactId":J
    :cond_6
    goto :goto_0

    .line 290
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find contact_id column for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :goto_0
    const-string/jumbo v3, "lookup"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 298
    .end local v9    # "columnIndex":I
    .local v3, "columnIndex":I
    if-eq v3, v8, :cond_8

    .line 299
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->lookupKey:Ljava/lang/String;

    .line 303
    :cond_8
    const-string/jumbo v4, "photo_uri"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 304
    if-eq v3, v8, :cond_9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 305
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto :goto_1

    .line 307
    :cond_9
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 310
    :goto_1
    const-string/jumbo v4, "preferred_phone_account_component_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 311
    if-eq v3, v8, :cond_a

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 312
    nop

    .line 313
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountComponent:Landroid/content/ComponentName;

    .line 316
    :cond_a
    const-string/jumbo v4, "preferred_phone_account_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 317
    if-eq v3, v8, :cond_b

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 318
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->preferredPhoneAccountId:Ljava/lang/String;

    .line 327
    :cond_b
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 328
    if-eq v3, v8, :cond_d

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 329
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 330
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v4, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    .line 332
    :cond_c
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    .line 335
    :cond_d
    iput-object v2, v0, Landroid/telecom/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 340
    :goto_2
    const-string/jumbo v4, "send_to_voicemail"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 341
    if-eq v3, v8, :cond_e

    .line 342
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v7, :cond_e

    move v4, v7

    goto :goto_3

    :cond_e
    move v4, v1

    :goto_3
    iput-boolean v4, v0, Landroid/telecom/CallerInfo;->shouldSendToVoicemail:Z

    .line 345
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 346
    if-eq v3, v8, :cond_f

    .line 347
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/telecom/CallerInfo;->rawContactId:J

    .line 350
    :cond_f
    const-string/jumbo v4, "sec_custom_vibration"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 351
    if-eq v3, v8, :cond_10

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 352
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/telecom/CallerInfo;->customVibrationUri:Landroid/net/Uri;

    goto :goto_4

    .line 354
    :cond_10
    iput-object v2, v0, Landroid/telecom/CallerInfo;->customVibrationUri:Landroid/net/Uri;

    .line 358
    :goto_4
    const-string/jumbo v4, "sec_call_background"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 359
    if-eq v3, v8, :cond_11

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 360
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telecom/CallerInfo;->secCallBackground:Ljava/lang/String;

    goto :goto_5

    .line 362
    :cond_11
    iput-object v2, v0, Landroid/telecom/CallerInfo;->secCallBackground:Ljava/lang/String;

    .line 365
    :goto_5
    iput-boolean v7, v0, Landroid/telecom/CallerInfo;->contactExists:Z

    .line 367
    .end local v3    # "columnIndex":I
    :cond_12
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    const/4 p2, 0x0

    goto/16 :goto_6

    .line 371
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Something is wrong "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Column names: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    invoke-interface {p2, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 376
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 378
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 379
    const-string v3, "cursor last index has no problem."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    goto :goto_7

    .line 380
    :catch_1
    move-exception v3

    .line 381
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor index is invalid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v4, v5}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 384
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_13
    :goto_6
    nop

    .line 386
    :cond_14
    :goto_7
    iput-boolean v1, v0, Landroid/telecom/CallerInfo;->needUpdate:Z

    .line 387
    iget-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 388
    iput-object p1, v0, Landroid/telecom/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 390
    return-object v0
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 432
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallerInfo"

    const-string v2, "getCallerInfo() based on number..."

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 435
    .local v0, "subId":I
    invoke-static {p0, p1, v0}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-r getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/telecom/CallerInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    return-object v1

    .line 461
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 466
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p2, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0}, Landroid/telecom/CallerInfo;->markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    .line 469
    :cond_1
    invoke-static {v1, p2, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    new-instance v1, Landroid/telecom/CallerInfo;

    invoke-direct {v1}, Landroid/telecom/CallerInfo;-><init>()V

    invoke-virtual {v1, p0, p2}, Landroid/telecom/CallerInfo;->markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;

    move-result-object v1

    return-object v1

    .line 473
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 474
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 476
    .local v2, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/telecom/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/telecom/CallerInfo;

    move-result-object v3

    .line 477
    .local v3, "info":Landroid/telecom/CallerInfo;
    invoke-static {p0, p1, v3}, Landroid/telecom/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfo;)Landroid/telecom/CallerInfo;

    move-result-object v3

    .line 479
    if-nez v3, :cond_3

    .line 480
    return-object v1

    .line 486
    :cond_3
    iget-object v1, v3, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 487
    iput-object p1, v3, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 490
    :cond_4
    return-object v3
.end method

.method private static blacklist getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 7
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 686
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    const-string v1, "CallerInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "url":Ljava/lang/String;
    const-string v4, "KTT"

    const-string v5, "LGT"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 695
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    :cond_1
    const/4 v4, 0x0

    .line 699
    .local v4, "columnName":Ljava/lang/String;
    const-string v5, "content://com.android.contacts/data/phones"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 702
    if-eqz v0, :cond_2

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v1, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :cond_2
    const-string v4, "contact_id"

    goto :goto_0

    .line 704
    :cond_3
    const-string v5, "content://com.android.contacts/data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 707
    if-eqz v0, :cond_4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v1, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    :cond_4
    const-string v4, "contact_id"

    goto :goto_0

    .line 710
    :cond_5
    const-string v5, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 714
    if-eqz v0, :cond_6

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v1, v6, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    :cond_6
    const-string v4, "_id"

    goto :goto_0

    .line 717
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected prefix for contactRef \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    :goto_0
    if-eqz v4, :cond_8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_8
    const/4 v5, -0x1

    .line 720
    .local v5, "columnIndex":I
    :goto_1
    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> Using column \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' (columnIndex = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") for person_id lookup..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    :cond_9
    return v5
.end method

.method protected static blacklist getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 807
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "countryIso":Ljava/lang/String;
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 789
    .local v1, "detector":Landroid/location/CountryDetector;
    const/4 v2, 0x0

    const-string v3, "CallerInfo"

    if-eqz v1, :cond_1

    .line 790
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v4

    .line 791
    .local v4, "country":Landroid/location/Country;
    if-eqz v4, :cond_0

    .line 792
    invoke-virtual {v4}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 794
    :cond_0
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v5, v7, v6}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    .end local v4    # "country":Landroid/location/Country;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 798
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    :cond_2
    return-object v0
.end method

.method public static blacklist getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 750
    sget-boolean v0, Landroid/telecom/CallerInfo;->VDBG:Z

    const/4 v1, 0x0

    const-string v2, "CallerInfo"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGeoDescription(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 753
    return-object v4

    .line 756
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 757
    .local v3, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v5

    .line 759
    .local v5, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 760
    .local v6, "locale":Ljava/util/Locale;
    invoke-static {p0, v6}, Landroid/telecom/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 761
    .local v7, "countryIso":Ljava/lang/String;
    const/4 v8, 0x0

    .line 763
    .local v8, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string v9, "\'"

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for countryIso \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    :cond_2
    invoke-virtual {v3, p1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    move-object v8, v10

    .line 766
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- parsed number: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v10}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_3
    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 769
    invoke-static {p1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    .line 768
    invoke-static {v2, v10, v11}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_0
    if-eqz v8, :cond_5

    .line 773
    invoke-virtual {v5, v8, v6}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "description":Ljava/lang/String;
    sget-boolean v4, Landroid/telecom/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got description: \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v1}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    :cond_4
    return-object v0

    .line 777
    .end local v0    # "description":Ljava/lang/String;
    :cond_5
    return-object v4
.end method

.method private static blacklist normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 636
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 637
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public blacklist SetContactDisplayPhotoUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "photoUri"    # Landroid/net/Uri;

    .line 543
    iput-object p1, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 544
    return-void
.end method

.method public blacklist getContactDisplayPhotoUri()Landroid/net/Uri;
    .locals 1

    .line 537
    iget-object v0, p0, Landroid/telecom/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getContactId()J
    .locals 2

    .line 528
    iget-wide v0, p0, Landroid/telecom/CallerInfo;->contactIdOrZero:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEmergencyNumber()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public blacklist isVoiceMailNumber()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method blacklist markAsEmergency(Landroid/content/Context;)Landroid/telecom/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 606
    const v0, 0x1040494

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 608
    const v0, 0x108071b

    iput v0, p0, Landroid/telecom/CallerInfo;->photoResource:I

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsEmergency:Z

    .line 610
    return-object p0
.end method

.method blacklist markAsVoiceMail(Landroid/content/Context;I)Landroid/telecom/CallerInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/CallerInfo;->mIsVoiceMail:Z

    .line 618
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 619
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 627
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v0, v3, v1}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_0
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 508
    iput-object p1, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public blacklist setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 521
    iput-object p1, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 817
    const/4 v0, 0x0

    .line 848
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 850
    iget-object v3, p0, Landroid/telecom/CallerInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "null"

    const-string/jumbo v5, "non-null"

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 851
    iget-object v3, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 852
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 848
    return-object v1
.end method

.method public blacklist updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .line 739
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telecom/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 740
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Landroid/telecom/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 741
    return-void
.end method
