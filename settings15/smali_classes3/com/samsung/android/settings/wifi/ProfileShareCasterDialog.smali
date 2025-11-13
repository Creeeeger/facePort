.class public Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsConfirmed:Z

.field public mIsHotspot:Z

.field public mIsNotifyNeeded:Z

.field public final mReceiver:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;

.field public mTimeoutHandler:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

.field public mUserData:Ljava/lang/String;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;-><init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mReceiver:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const-string v0, "ProfileShareCasterDialog"

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "User allowed to share password"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "WIFI_111"

    const-string p2, "0127"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "User declined to share password"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "userData"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    const-string v2, "isHotspot"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsHotspot:Z

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    const-string v2, "ProfileShareCasterDialog"

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_15

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;-><init>(Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;)V

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/settings/wifi/ContactHelper;->CONTENT_COUNT_URI:Landroid/net/Uri;

    const-string v5, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "Wifi.ContactHelper"

    const-string v10, ""

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v11, 0x6

    invoke-virtual {v4, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v4, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v15, Lcom/samsung/android/settings/wifi/ContactHelper;->projection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    :cond_2
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "data1"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "[^\\d]"

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "abnormal input - empty phone number"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x8

    if-le v11, v12, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v12

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/Hash;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "name "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;

    invoke-direct {v13, v11, v12, v0, v4}, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_2

    :cond_5
    :try_start_3
    const-string v0, "Fail to get contactInfo - No matched contact"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v0, "Fail to get contactInfo - cursor is null"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v5, :cond_8

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :goto_2
    if-eqz v5, :cond_7

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v4
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_8
    :goto_5
    move-object v13, v6

    :goto_6
    if-nez v13, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find Subscriber\'s profile on this device"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v2

    goto/16 :goto_13

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0a8f

    invoke-virtual {v0, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0a0fe9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0a07c8

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0a0799

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-boolean v14, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsHotspot:Z

    iget-object v15, v13, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->name:Ljava/lang/String;

    if-nez v14, :cond_c

    iget-object v14, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_a
    move-object v14, v10

    :goto_7
    const-string v7, "<unknown ssid>"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    move-object v10, v14

    :goto_8
    const v7, 0x7f143631

    filled-new-array {v15, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_c
    const v7, 0x7f143632

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_9
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_18

    iget-object v0, v13, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->photoUri:Landroid/net/Uri;

    const v10, 0x7f070d8e

    if-nez v0, :cond_d

    :goto_a
    move-object v0, v6

    goto :goto_b

    :cond_d
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v0, v0}, Landroid/util/Size;-><init>(II)V

    :try_start_7
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v10, v13, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v0, v10, v14, v6}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :goto_b
    if-nez v0, :cond_e

    move-object/from16 v22, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_c

    :cond_e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v19, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v20, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v8, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v10, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v3, v21, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v22, v2

    div-int/lit8 v2, v21, 0x2

    int-to-float v2, v2

    invoke-virtual {v10, v5, v3, v2, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v10, v0, v8, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_c
    if-nez v20, :cond_17

    const-string v0, "bitmap is null set default image"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070d8e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0874

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v0, v5}, Landroid/view/View;->layout(IIII)V

    const v0, 0x7f0a040f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-wide/16 v5, 0x0

    iget-wide v8, v13, Lcom/samsung/android/settings/wifi/ContactHelper$ContactInfo;->id:J

    cmp-long v5, v8, v5

    sget-object v6, Lcom/samsung/android/contacts/presetimage/PresetImageUtil;->CONTACT_LIST_PRESET_CIRCLE_BACKGROUND:[I

    const/16 v10, 0x23

    if-lez v5, :cond_10

    if-gez v5, :cond_f

    const/4 v5, 0x0

    goto :goto_d

    :cond_f
    int-to-long v13, v10

    rem-long/2addr v8, v13

    long-to-int v5, v8

    :goto_d
    aget v5, v6, v5

    goto :goto_10

    :cond_10
    if-nez v15, :cond_11

    :goto_e
    const/4 v5, 0x0

    goto :goto_f

    :cond_11
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gez v5, :cond_12

    goto :goto_e

    :cond_12
    rem-int/2addr v5, v10

    int-to-long v8, v5

    long-to-int v5, v8

    :goto_f
    aget v5, v6, v5

    :goto_10
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0a0410

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const v9, 0x7f08091e

    if-eqz v6, :cond_14

    if-nez v0, :cond_13

    goto :goto_11

    :cond_13
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    :cond_14
    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    invoke-virtual {v15, v6, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_15
    if-nez v0, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v9, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11
    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v6, v2

    goto :goto_12

    :cond_17
    move-object/from16 v6, v20

    goto :goto_12

    :cond_18
    move-object/from16 v22, v2

    move-object/from16 v19, v5

    move-object v7, v6

    :goto_12
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v6, v19

    :goto_13
    if-nez v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_19
    iget-object v0, v1, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f143630

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, v1, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f14362f

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, v1, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string/jumbo v0, "uimode"

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    const v0, 0x103012e

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    goto :goto_14

    :cond_1a
    const v0, 0x1030132

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Show dialog "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "statusbar"

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    :cond_1c
    :goto_15
    const-string/jumbo v0, "userData is Null or empty"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsNotifyNeeded:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy accepted? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    const-string v2, "ProfileShareCasterDialog"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    if-nez v0, :cond_0

    const-string v0, "WIFI_111"

    const-string v1, "0126"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mIsConfirmed:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V

    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public final onStart()V
    .locals 7

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    const-string v0, "WIFI_111"

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.net.wifi.DISMISS_REQ_PASSWORD_DIALOG"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mReceiver:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;

    const/4 v6, 0x2

    const-string v4, "android.permission.NETWORK_SETTINGS"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$TimeoutHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ProfileShareCasterDialog"

    const-string/jumbo v2, "timer start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog;->mReceiver:Lcom/samsung/android/settings/wifi/ProfileShareCasterDialog$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "ProfileShareCasterDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
