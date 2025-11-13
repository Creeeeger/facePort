.class public Lcom/samsung/android/settings/wifi/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;
    }
.end annotation


# static fields
.field private static final CONTENT_COUNT_URI:Landroid/net/Uri;

.field private static final OWNER_NUMBER_PROJ:[Ljava/lang/String;

.field private static final projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.android.contacts/contacts"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/ContactHelper;->CONTENT_COUNT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "photo_uri"

    const-string v3, "data1"

    .line 81
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/ContactHelper;->projection:[Ljava/lang/String;

    .line 288
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/ContactHelper;->OWNER_NUMBER_PROJ:[Ljava/lang/String;

    return-void
.end method

.method private static createDefaultProfileBitmap(Landroid/content/Context;Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_widget_alert_dialog_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 386
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 387
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v4, "layout_inflater"

    .line 389
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 390
    sget v5, Lcom/android/settings/R$layout;->sec_contact_preset_layout:I

    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    .line 391
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 392
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 391
    invoke-virtual {v4, v6, v1}, Landroid/view/View;->measure(II)V

    .line 393
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 395
    sget v1, Lcom/android/settings/R$id;->contact_preset_background:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 397
    iget-wide v7, p1, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->id:J

    iget-object v5, p1, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v7, v8, v5}, Lcom/samsung/android/contacts/presetimage/PresetImageUtil;->getCirclePresetImage(JLjava/lang/String;)I

    move-result v5

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 400
    sget v0, Lcom/android/settings/R$id;->contact_preset_text:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    iget-object v5, p1, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 402
    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/ContactHelper;->setProfileDefaultImage(Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v5, p1, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 405
    invoke-static {v5}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 406
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 408
    :cond_2
    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/ContactHelper;->setProfileDefaultImage(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 411
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v2

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static cropCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 366
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 368
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 369
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    .line 371
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 373
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 374
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 375
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static cutNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[^\\d]"

    const-string v1, ""

    .line 326
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getContactInfoByHash(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 115
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    .line 116
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/samsung/android/settings/wifi/ContactHelper;->projection:[Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Wifi.ContactHelper"

    if-eqz p0, :cond_3

    .line 123
    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "data1"

    .line 124
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v3}, Lcom/samsung/android/settings/wifi/ContactHelper;->cutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/Hash;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 p1, 0x1

    .line 128
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 130
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :cond_2
    :try_start_3
    const-string p1, "Fail to get contactInfo - No matched contact"

    .line 134
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    const-string p1, "Fail to get contactInfo - cursor is null"

    .line 136
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p0, :cond_5

    .line 138
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_4

    .line 118
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static getContactProfileBitmap(Landroid/content/Context;Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/ContactHelper;->getPhotoFromContactInfo(Landroid/content/Context;Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ContactHelper;->cropCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Wifi.ContactHelper"

    const-string v1, "bitmap is null set default image"

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/ContactHelper;->createDefaultProfileBitmap(Landroid/content/Context;Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMyMobileNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "Wifi.ContactHelper"

    const-string v1, "CONTACT_Info _ getMyMobileNumber"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/ContactHelper;->getOwnerSystemNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "CONTACT_Info_ getMyMobileNumber get getOwnerSystemNumber"

    .line 168
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/wifi/ContactHelper;->getOwnerProfileNumber(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CONTACT_Info_getMyMobileNumber get getOwnerProfileNumber"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const-string p0, "CONTACT_Info_getMyMobileNumber null "

    .line 178
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOwnerProfileNumber(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 204
    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/ContactHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Wifi.ContactHelper"

    const-string v1, "getAccountNumber No Permission"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.osp.app.signin"

    .line 209
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 210
    array-length v0, v0

    if-lez v0, :cond_1

    .line 211
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/ContactHelper;->getOwnerProfileNumberFromSA(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 218
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/wifi/ContactHelper;->getOwnerProfileNumberFromContact(Landroid/content/Context;Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getOwnerProfileNumberFromContact(Landroid/content/Context;Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 9

    const-string v0, "android.permission.READ_CONTACTS"

    .line 295
    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/ContactHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string v0, "Wifi.ContactHelper"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "getOwnerProfileNumberFromContact  No Permission"

    .line 296
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 303
    :cond_0
    :try_start_0
    sget-object p0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {p0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/wifi/ContactHelper;->OWNER_NUMBER_PROJ:[Ljava/lang/String;

    const-string v6, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND data2= ?"

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    .line 307
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v7, p2

    const/4 v8, 0x0

    move-object v3, p1

    .line 303
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 309
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p1

    :cond_1
    if-eqz p0, :cond_2

    .line 316
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-object p0, v1

    :catch_1
    :try_start_2
    const-string p1, "getOwnerProfileNumberFromContact Exception"

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_3

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_3
    throw p1
.end method

.method private static getOwnerProfileNumberFromSA(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 5

    .line 260
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "excludePhoto"

    const/4 v1, 0x1

    .line 261
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.samsung.android.mobileservice.profileProvider"

    const-string v3, "getProfile"

    .line 263
    invoke-virtual {p1, v2, v3, v0, p0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "isMultiDataEmpty"

    .line 264
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "multiData"

    .line 266
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    const-string v2, "category"

    .line 268
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    .line 269
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "value"

    .line 271
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "mobile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 280
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getOwnerSystemNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 193
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const-string v1, "000000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Wifi.ContactHelper"

    const-string v1, "getOwnerSystemNumber : abnormal"

    .line 194
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static getPhotoFromContactInfo(Landroid/content/Context;Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 349
    iget-object v1, p1, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->photoUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_widget_alert_dialog_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 353
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 355
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isContactsEmpty(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/wifi/ContactHelper;->CONTENT_COUNT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 150
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 154
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :cond_1
    :try_start_3
    const-string v1, "Wifi.ContactHelper"

    const-string v2, "cursor is null"

    .line 152
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz p0, :cond_4

    .line 154
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_3

    .line 147
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_4
    :goto_1
    return v0
.end method

.method private static setProfileDefaultImage(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->sec_ic_contacts_default_caller_id_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 419
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
