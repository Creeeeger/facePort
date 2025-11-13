.class public abstract Lcom/samsung/android/settings/wifi/QrCodeFragment;
.super Landroidx/fragment/app/Fragment;
.source "QrCodeFragment.java"


# static fields
.field protected static DBG:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field protected mIsSetupWizard:Z

.field protected mNearbyShareButton:Landroid/widget/Button;

.field protected mQrBmp:Landroid/graphics/Bitmap;

.field protected mQrCodeGenerator:Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

.field protected mQrImageView:Landroid/widget/ImageView;

.field protected mQuickShareButton:Landroid/widget/Button;

.field protected mSsid:Ljava/lang/String;

.field private mSsidView:Landroid/widget/TextView;

.field protected mSummaryView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field protected mView:Landroid/view/View;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$Pm0eCWUJWWjt2JQezUSstyfSX3I(Lcom/samsung/android/settings/wifi/QrCodeFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->lambda$initBottomButtonBar$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private downloadQrCode(Ljava/lang/String;)V
    .locals 10

    const-string v0, "_display_name"

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->getQrBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    const-string p1, "Failed to download QR code - Cannot get save area"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    .line 204
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 202
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v5

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 209
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 210
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi_QR_code_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move v7, v6

    .line 214
    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v7, v6

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 220
    :try_start_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 221
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v4, "image/jpeg"

    .line 222
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "external"

    .line 224
    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 223
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-nez p1, :cond_5

    .line 230
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    const-string p1, "Failed to download QR code - uri is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz p1, :cond_6

    .line 236
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 234
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0

    :cond_6
    :goto_6
    if-eqz p1, :cond_7

    .line 238
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_7
    const/4 p1, 0x0

    .line 244
    :try_start_9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.gallery3d"

    const/16 v3, 0x100

    .line 245
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move v6, p1

    :goto_8
    move p1, v6

    :catch_3
    if-eqz p1, :cond_9

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_wifi_qr_code_saved_in_gallery:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 251
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_wifi_qr_code_saved:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 252
    :goto_9
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initBottomButtonBar()V
    .locals 2

    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mIsSetupWizard:Z

    if-eqz v0, :cond_1

    .line 147
    sget-boolean v0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    const-string v0, "skip init bottom bar for setup wizard"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->bottom_navigation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 155
    sget v1, Lcom/android/settings/R$menu;->wifi_qrcode_bottom_menu:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    .line 156
    new-instance v1, Lcom/samsung/android/settings/wifi/QrCodeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/QrCodeFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initBottomButtonBar$0(Landroid/view/MenuItem;)Z
    .locals 2

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 158
    sget v0, Lcom/android/settings/R$id;->menu_qrcode_save_image:I

    const-string v1, "WIFI_280"

    if-ne p1, v0, :cond_0

    const-string p1, "1361"

    .line 159
    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->downloadQrCode(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    sget v0, Lcom/android/settings/R$id;->menu_qrcode_share:I

    if-ne p1, v0, :cond_1

    const-string p1, "1360"

    .line 163
    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->shareQrCode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private popOrFinishThisActivity()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    const-string v1, "popOrFinishThisActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 314
    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 315
    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private shareQrCode(Ljava/lang/String;)V
    .locals 6

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->getQrBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    const-string p1, "Failed to share QR code - cannot get saveArea"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 272
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 274
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    const-string p1, "shareQrCode failed for cache dir is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v4, "wifi_qrcode.png"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 281
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    .line 284
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const-string v0, "com.android.settings.files"

    .line 287
    invoke-static {v1, v0, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 288
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    .line 289
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 290
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    .line 292
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, ""

    .line 293
    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 294
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method protected addWhiteBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 302
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->sec_wifi_qrcode_download_image_border_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    .line 304
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    .line 306
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    const/4 v2, 0x0

    .line 307
    invoke-virtual {v1, p1, p0, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected getQrBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->qr_save_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsidView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 181
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsidView:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 183
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 184
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    if-eq v1, v2, :cond_2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->addWhiteBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getQrCodeString()Ljava/lang/String;
.end method

.method protected abstract initValuesFromIntent(Landroid/os/Bundle;)V
.end method

.method public isOnWifi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->qr_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrImageView:Landroid/widget/ImageView;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ap_ssid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsidView:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->qr_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSummaryView:Landroid/widget/TextView;

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->nearby_share_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mNearbyShareButton:Landroid/widget/Button;

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->quick_share_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQuickShareButton:Landroid/widget/Button;

    .line 107
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrCodeGenerator:Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroid/app/Activity;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mContext:Landroid/content/Context;

    .line 89
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_config"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    const-string v0, "Finish - no config to show"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->popOrFinishThisActivity()V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->initValuesFromIntent(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "WIFI_280"

    .line 113
    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->updateView()V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->initBottomButtonBar()V

    return-void
.end method

.method protected setupQrImageView()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->getQrCodeString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate QrCode with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrCodeGenerator:Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/QrCodeFragment;->isOnWifi()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createQrcodeImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mQrImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected setupSsidView()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mSsidView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 259
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/QrCodeFragment;->mToast:Landroid/widget/Toast;

    .line 260
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected abstract updateView()V
.end method
