.class public Lcom/samsung/android/settings/display/SecDisplayUtils;
.super Ljava/lang/Object;
.source "SecDisplayUtils.java"


# static fields
.field private static final APK_SYSTEM_FLIPFONT_NAME_LIST:[Ljava/lang/String;

.field private static final SIGNATURES:[Landroid/content/pm/Signature;

.field public static mListEdgeColorBalanceImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreviewFontFile:Ljava/io/File;

.field private static final mProductName:Ljava/lang/String;

.field private static mWhiteBalanceVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "ro.product.device"

    const-string v1, "NONE"

    .line 132
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 150
    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListEdgeColorBalanceImages:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 256
    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    const-string v3, ""

    const-string v4, "com.monotype.android.font.chococooky"

    const-string v5, "com.monotype.android.font.cooljazz"

    const-string v6, "com.monotype.android.font.helvneuelt"

    const-string v7, "com.monotype.android.font.samsungsans"

    const-string v8, "com.monotype.android.font.rosemary"

    const-string v9, "com.monotype.android.font.applemint"

    const-string v10, "com.monotype.android.font.tinkerbell"

    const-string v11, "com.monotype.android.font.udrgothic"

    const-string v12, "com.monotype.android.font.udmincho"

    const-string v13, "com.monotype.android.font.arjpopb"

    const-string v14, "com.monotype.android.font.kaiti"

    const-string v15, "com.monotype.android.font.shaonv"

    const-string v16, "com.monotype.android.font.miao"

    const-string v17, "com.monotype.android.font.samsungone"

    const-string v18, "com.monotype.android.font.foundation"

    .line 262
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->APK_SYSTEM_FLIPFONT_NAME_LIST:[Ljava/lang/String;

    .line 303
    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->mWhiteBalanceVisible:Z

    return-void
.end method

.method public static applyForcedDisplayDensity(IIIIZI)V
    .locals 13

    move/from16 v8, p3

    const-string v9, " callers="

    const-string v10, "applyForcedDisplayDensity: density="

    const-string v11, "SecDisplayUtils"

    const/4 v12, 0x5

    .line 477
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    move v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 478
    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 480
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    throw v0
.end method

.method public static applyForcedDisplayDensity(Landroid/content/Context;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move v3, p1

    .line 471
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(IIIIZI)V

    return-void
.end method

.method public static canChangeNightMode(Landroid/content/Context;)Z
    .locals 1

    .line 1517
    invoke-static {p0}, Lcom/android/settings/Utils;->isCurrentThemeSupportNightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canSetHighRefreshRate(Landroid/content/Context;)Z
    .locals 1

    .line 1582
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1583
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 1584
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportCoverHighRefreshRate()Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static canSetHighRefreshRateAboveWQHD(Landroid/content/Context;)Z
    .locals 6

    .line 1598
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1599
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1600
    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1601
    iget-object p0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1602
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 1603
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/16 v5, 0x5a0

    if-lt v4, v5, :cond_0

    .line 1604
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x3c

    if-le v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static changeFontSize(Landroid/content/Context;II)I
    .locals 2

    .line 1462
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v0

    .line 1463
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSize(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p2, 0x0

    goto :goto_2

    :pswitch_1
    move p2, v1

    goto :goto_2

    :pswitch_2
    add-int/lit8 p1, v1, -0x1

    if-ge v0, p1, :cond_0

    add-int/lit8 p2, v0, 0x1

    goto :goto_0

    :pswitch_3
    if-lez v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :goto_0
    move v0, p2

    goto :goto_2

    :cond_0
    :goto_1
    const/4 p2, -0x1

    .line 1487
    :goto_2
    :pswitch_4
    invoke-static {p0, v0, p2, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->changeFontSizeDbAndNotifyChanged(Landroid/content/Context;III)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static changeFontSizeDbAndNotifyChanged(Landroid/content/Context;III)I
    .locals 3

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeFontSizeDbAndNotifyChanged() previousIndex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / targetIndex = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecDisplayUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result p1

    if-ltz p2, :cond_1

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 1499
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v1, "font_size"

    invoke-static {p3, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1500
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeFontSizeDbAndNotifyChanged() "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object p3

    const/4 v1, 0x0

    const-string v2, "large_font"

    .line 1502
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p3, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    .line 1504
    invoke-static {v0, p3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    return p2

    :cond_1
    :goto_0
    const-string p0, "changeFontSizeDbAndNotifyChanged() invalid index"

    .line 1495
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static convertHighRefreshRateValue(Landroid/content/Context;II)I
    .locals 2

    .line 1725
    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result p0

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p0, v0, :cond_0

    return p2

    :cond_0
    if-ne p1, p2, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, p2, :cond_2

    :cond_1
    return v0

    :cond_2
    return p1
.end method

.method private static copyPreviewFont(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2676
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "r"

    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    :try_start_1
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2678
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 p1, 0x2000

    :try_start_3
    new-array p1, p1, [B

    .line 2682
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2683
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2685
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    return v2

    :catchall_0
    move-exception p1

    .line 2676
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_b
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 2686
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to copy preview font file. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDisplayUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static deletePreviewFont()V
    .locals 1

    .line 2657
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mPreviewFontFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2658
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2396
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2397
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 2398
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2401
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 961
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    const/4 v2, 0x0

    .line 963
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    sget v0, Lcom/android/settings/R$string;->direct_access_actions_greyscale_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, "high_contrast"

    .line 965
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    sget v0, Lcom/android/settings/R$string;->negative_color_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v1, "color_blind"

    .line 967
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 968
    sget v0, Lcom/android/settings/R$string;->colour_adjustment_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v1, "color_lens_switch"

    .line 969
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 970
    sget v0, Lcom/android/settings/R$string;->colour_lens_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v1, "accessibility_display_inversion_enabled"

    .line 971
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 972
    sget v0, Lcom/android/settings/R$string;->accessibility_display_inversion_preference_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getAutoBrightnessDefaultValue(Landroid/content/Context;)I
    .locals 4

    .line 1413
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_BRIGTNESS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1414
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 1416
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isCameraSensorModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSabcAdaptiveBrightnessEnabled()Z

    move-result p0

    return p0

    .line 1420
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v0

    .line 1421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x1110036

    .line 1422
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static getAutoBrightnessSetting(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SecDisplayUtils"

    const-string v1, "setAutoBrightnessSetting() - Device not support light sensor or context is null"

    .line 1398
    invoke-static {p0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1402
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static getChargingInfoAlways(Landroid/content/Context;)I
    .locals 10

    .line 2694
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_info_always"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChargingInfoAlways = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecDisplayUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_2

    const-string v1, "content://com.samsung.android.app.clockpack.provider/clock_pack_settings/charging_info_always_enabled"

    const/4 v2, 0x0

    .line 2700
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2701
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2702
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 2703
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2704
    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setChargingInfoAlways(Landroid/content/Context;I)V

    .line 2705
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show_charging_infomation Set First chargingInfoAlways: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v2, :cond_2

    .line 2711
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2708
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    .line 2711
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2713
    :cond_1
    throw p0

    :cond_2
    :goto_2
    return v0
.end method

.method public static getCurrentDensity(Landroid/content/Context;)I
    .locals 3

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_density_forced"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string v0, "SecDisplayUtils"

    if-ne p0, v1, :cond_0

    .line 356
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    .line 357
    invoke-interface {p0, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "getInitialDisplaySize() exception!!!"

    .line 359
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 363
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentDensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 2422
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontNameFromSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2423
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "persist.sys.flipfontpath"

    .line 2427
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    .line 2428
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2429
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "Theme"

    .line 2431
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2432
    sget v0, Lcom/android/settings/R$string;->sec_current_theme_font:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2435
    :cond_2
    sget v0, Lcom/android/settings/R$string;->sec_monotype_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "Rosemary"

    .line 2439
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2440
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_rose:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, "Chococooky"

    .line 2441
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2442
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_choco:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "Cooljazz"

    .line 2443
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2444
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_cool:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "HelveticaNeueRegular"

    .line 2445
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Helvetica S"

    goto/16 :goto_0

    :cond_7
    const-string v0, "Samsungsans"

    .line 2447
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "Samsung Sans"

    goto/16 :goto_0

    :cond_8
    const-string v0, "SamsungOneUI-Regular"

    .line 2449
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "SamsungOne"

    goto/16 :goto_0

    :cond_9
    const-string v0, "Applemint"

    .line 2451
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2452
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_applemint:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "Tinkerbell"

    .line 2453
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2454
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_tinkerbell:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "Shaonv"

    .line 2455
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2456
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_girl:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v0, "Kaiti"

    .line 2457
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2458
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_kaiti:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "Miao"

    .line 2459
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2460
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_miao:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v0, "UDRGothic"

    .line 2461
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2462
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_maruberi:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v0, "UDMincho"

    .line 2463
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2464
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_mincho:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string v0, "Pop"

    .line 2465
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2466
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_pop:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_11
    const-string v0, "arjpopb"

    .line 2467
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2468
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_pop:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_12
    const-string v0, "Cool"

    .line 2469
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2470
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_cool:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_13
    const-string v0, "Rose"

    .line 2471
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2472
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_rose:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_14
    const-string v0, "Choco"

    .line 2473
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2474
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_choco:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_15
    const-string v0, "Foundation"

    .line 2475
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2476
    sget v0, Lcom/android/settings/R$string;->sec_monotype_dialog_font_gothicbold:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 2478
    :cond_16
    invoke-static {}, Landroid/graphics/Typeface;->getFontNameFlipFont()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getCurrentResolution(Landroid/content/Context;)I
    .locals 6

    .line 2216
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "display_size_forced"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v2, 0x5a0

    const-string v3, "SecDisplayUtils"

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    const-string v5, ""

    .line 2220
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, ","

    .line 2221
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2222
    array-length v0, p0

    if-le v0, v1, :cond_0

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_0

    .line 2226
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    .line 2227
    invoke-interface {p0, v4, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 2228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScreenSizeinformation() size : "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2233
    iget p0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    if-lt p0, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/16 v0, 0x2d0

    if-le p0, v0, :cond_3

    const/16 v0, 0x438

    if-gt p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 2243
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentResolution: width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "currentResolution = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    const-string p0, "getInitialDisplaySize() exception!!!"

    .line 2230
    invoke-static {v3, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getDeXTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;
    .locals 24

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1962
    sget v2, Lcom/android/settings/R$plurals;->dex_timeout_week:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$plurals;->dex_timeout_day:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$plurals;->dex_timeout_hour:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/settings/R$plurals;->dex_timeout_minute:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/settings/R$plurals;->dex_timeout_second:I

    const/4 v7, 0x4

    aput v2, v1, v7

    const-wide/16 v8, 0x3e8

    .line 1967
    div-long v8, p1, v8

    const-wide/16 v10, 0x3c

    .line 1968
    div-long v12, v8, v10

    .line 1969
    div-long v14, v12, v10

    const-wide/16 v16, 0x18

    .line 1970
    div-long v18, v14, v16

    const-wide/16 v20, 0x7

    .line 1971
    div-long v22, v18, v20

    new-array v2, v0, [J

    aput-wide v22, v2, v3

    .line 1972
    rem-long v18, v18, v20

    aput-wide v18, v2, v4

    rem-long v14, v14, v16

    aput-wide v14, v2, v5

    rem-long/2addr v12, v10

    aput-wide v12, v2, v6

    rem-long/2addr v8, v10

    aput-wide v8, v2, v7

    const-string v5, ""

    move v6, v3

    :goto_0
    if-ge v6, v0, :cond_2

    .line 1978
    aget-wide v7, v2, v6

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_1

    .line 1980
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1981
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1983
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v10, v1, v6

    long-to-int v7, v7

    invoke-virtual {v5, v10, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v3

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1987
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeoutNewEntry : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDisplayUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public static getDexScreenTimeoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;
    .locals 12

    .line 1917
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->dex_timeout_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1918
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->dex_timeout_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1920
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1921
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    invoke-static {v1, p1, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez v4, :cond_6

    const/4 v4, 0x0

    const/4 v8, -0x1

    move v9, v8

    .line 1925
    :goto_0
    array-length v10, v1

    if-ge v4, v10, :cond_2

    .line 1926
    aget-object v10, v0, v4

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    aget-object v10, v1, v4

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    aget-object v10, v1, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v10, p1, v10

    if-gez v10, :cond_0

    if-ne v9, v8, :cond_1

    move v9, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v9, v8, :cond_3

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDeXTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1940
    invoke-virtual {v2, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1941
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    if-ne p3, v6, :cond_4

    .line 1944
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0

    :cond_4
    if-ne p3, v7, :cond_5

    .line 1946
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0

    :cond_5
    return-object v5

    :cond_6
    if-ne p3, v6, :cond_7

    return-object v0

    :cond_7
    if-ne p3, v7, :cond_8

    return-object v1

    :cond_8
    return-object v5
.end method

.method public static getDualDisplayStatus(Landroid/content/Context;)I
    .locals 2

    .line 368
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayDeviceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDisplayUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getExtraBrightness(Landroid/content/Context;)I
    .locals 2

    .line 1114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_extra_brightness"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExtraBrightness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDisplayUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getFontIndex(Landroid/content/Context;F)I
    .locals 2

    .line 2270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->sec_entryvalues_8_step_font_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2272
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2273
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 2278
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "returning  font index: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getFontNameFromSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 2406
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 2407
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2408
    array-length v3, v2

    sub-int/2addr v3, v0

    if-lez v3, :cond_0

    .line 2409
    array-length v1, v2

    sub-int/2addr v1, v0

    aget-object v1, v2, v1

    :cond_0
    const-string v0, "monotype"

    .line 2411
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2412
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_monotype_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method public static getFontScale(Landroid/content/Context;I)F
    .locals 1

    .line 2313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->sec_entryvalues_8_step_font_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2314
    array-length v0, p0

    if-lt p1, v0, :cond_0

    .line 2315
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    .line 2317
    :cond_0
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 2318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "returning  font scale: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getFontSize(Landroid/content/Context;)F
    .locals 1

    .line 2308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->sec_entryvalues_8_step_font_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2309
    array-length p0, p0

    int-to-float p0, p0

    return p0
.end method

.method public static getFontSizeChangedIntent()Landroid/content/Intent;
    .locals 2

    .line 2342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 2343
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getFrontScreenAppsInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 2749
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "SecDisplayUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "PackageManager is null"

    .line 2751
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 2755
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    const-string v0, "launcherapps"

    .line 2756
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 2757
    new-instance v3, Landroid/os/UserHandle;

    .line 2758
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2757
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 2760
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2761
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 2763
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 2764
    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2767
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v7, 0x80

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 2775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get activity info from the component name. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string p0, "names"

    .line 2781
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 2783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to put FrontScreenAppsInfo in json object. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2787
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public static getFullScreenAppsSupportMode()I
    .locals 1

    .line 2820
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->getFullScreenAppsSupportMode()I

    move-result v0

    return v0
.end method

.method private static getHighRefreshRateDefaultRate(Landroid/content/Context;I)I
    .locals 0

    const-string p0, "60"

    .line 1634
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getHighRefreshRateDefaultValue(Landroid/content/Context;I)I
    .locals 5

    .line 1693
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1698
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultRate(Landroid/content/Context;I)I

    move-result p1

    const/16 v2, 0x3c

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v3, :cond_2

    if-gt p1, v2, :cond_1

    .line 1700
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_1
    return v4

    :cond_2
    if-eq v0, v4, :cond_3

    const/4 p0, 0x3

    if-ne v0, p0, :cond_5

    :cond_3
    if-le p1, v2, :cond_5

    .line 1706
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v4

    :cond_5
    return v1
.end method

.method public static getHighRefreshRateMaxValue(Landroid/content/Context;I)I
    .locals 4

    .line 1642
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSupportedValues(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p0

    .line 1644
    array-length p1, p0

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    .line 1645
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1646
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1647
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getHighRefreshRateSeamlessType(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_0

    const-string p0, "1"

    .line 1625
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1621
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_1
    const-string p0, "0"

    .line 1623
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getHighRefreshRateSupportedValues(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, ","

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_0

    const-string p0, "60,96,120"

    .line 1660
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1656
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSupportedValues(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    .line 1658
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntRefreshRate(Landroid/content/Context;I)I
    .locals 2

    .line 1672
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getRefreshRateKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1673
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result v1

    .line 1674
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateDefaultValue(Landroid/content/Context;I)I

    move-result p1

    if-eqz v1, :cond_0

    .line 1676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getMaxFontSize(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public static getMaxTimeOut(Landroid/content/Context;)J
    .locals 2

    .line 1805
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1806
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VZW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1807
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VPP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1808
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ATT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1809
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AIO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v0, 0x927c0

    :goto_1
    return-wide v0
.end method

.method public static getNavigationBarMode(Landroid/content/Context;)I
    .locals 1

    .line 2380
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00d6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static getNightModeMenuDisabledReason(Landroid/content/Context;)I
    .locals 1

    .line 1528
    invoke-static {p0}, Lcom/android/settings/Utils;->isCurrentThemeSupportNightTheme(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 1531
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public static getNightModeMenuDisabledReasonToastText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1545
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightModeMenuDisabledReason(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 1550
    :cond_0
    sget v0, Lcom/android/settings/R$string;->screen_resolution_disabled_toast:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$string;->power_saving_mode_title:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1548
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_night_theme_disabled_by_open_theme:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNightModeSetting(Landroid/content/Context;)I
    .locals 2

    const-string v0, "SecDisplayUtils"

    if-nez p0, :cond_0

    const-string p0, "getNightModeSetting() - context is null"

    .line 1247
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1251
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "getNightModeSetting() - Disabled"

    .line 1252
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightModeMenuDisabledReason(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 1256
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static getPocketModeDefaultValue()I
    .locals 3

    .line 1021
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1024
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_DEFAULT_POCKET_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getPreviewFont(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Typeface;
    .locals 2

    :try_start_0
    const-string v0, "preview_font_"

    const-string v1, ".ttf"

    .line 2664
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mPreviewFontFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2666
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2669
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mPreviewFontFile:Ljava/io/File;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->copyPreviewFont(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2670
    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mPreviewFontFile:Ljava/io/File;

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 2672
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static getProperDensities(Landroid/content/Context;[F)[I
    .locals 12

    const-string v0, "SecDisplayUtils"

    .line 487
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensitiesForDualDisplay(Landroid/content/Context;)[I

    move-result-object p0

    return-object p0

    .line 491
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 492
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 496
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 497
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 498
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    .line 503
    :cond_3
    array-length v1, p1

    new-array v1, v1, [I

    .line 504
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result p0

    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 505
    fill-array-data v4, :array_0

    .line 510
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    .line 511
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 512
    invoke-interface {v5, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v5

    int-to-float v5, v5

    aget v6, v4, p0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_1

    .line 514
    :cond_4
    invoke-interface {v5, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v5

    .line 516
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "baseDensity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    move v7, v3

    .line 517
    :goto_2
    array-length v8, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "] : "

    if-ge v7, v8, :cond_6

    .line 518
    :try_start_1
    aget v8, p1, v7

    const/high16 v10, 0x43200000    # 160.0f

    mul-float/2addr v8, v10

    aget v10, v4, p0

    mul-float/2addr v8, v10

    float-to-int v8, v8

    aput v8, v1, v7

    .line 519
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertedDensity["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    aget v8, v1, v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v5, :cond_5

    move v6, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 528
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    aget v2, v1, v6

    int-to-double v4, v2

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v6

    int-to-double v6, v2

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v10

    .line 531
    array-length p1, p1

    .line 533
    aget v2, v1, v3

    int-to-double v10, v2

    cmpl-double v2, v4, v10

    if-gtz v2, :cond_8

    add-int/lit8 v2, p1, -0x1

    aget v2, v1, v2

    int-to-double v10, v2

    cmpg-double v2, v6, v10

    if-gez v2, :cond_7

    goto :goto_3

    :cond_7
    return-object v1

    :cond_8
    :goto_3
    move v2, v3

    :goto_4
    if-ge v2, p1, :cond_a

    .line 535
    aget v8, v1, v2

    int-to-double v10, v8

    cmpl-double v10, v10, v4

    if-ltz v10, :cond_9

    int-to-double v10, v8

    cmpg-double v10, v10, v6

    if-gtz v10, :cond_9

    .line 537
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 540
    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 541
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    .line 542
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultDensity["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    return-object p1

    :catch_0
    const-string p0, "getInitialDisplaySize() exception!!!"

    .line 524
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getProperDensitiesForDualDisplay(Landroid/content/Context;)[I
    .locals 13

    const-string p0, "SecDisplayUtils"

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 571
    fill-array-data v1, :array_0

    new-array v0, v0, [I

    .line 574
    fill-array-data v0, :array_1

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 577
    fill-array-data v3, :array_2

    new-array v2, v2, [I

    .line 580
    fill-array-data v2, :array_3

    const-string v4, "ro.product.first_api_level"

    const/4 v5, 0x0

    .line 584
    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v6, 0x1d

    if-ge v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-ge v4, v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f

    if-ge v4, v0, :cond_2

    move-object v1, v3

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 595
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 600
    invoke-interface {v2, v5}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v2

    const/4 v3, 0x1

    move v4, v5

    .line 601
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_4

    .line 602
    aget v6, v1, v4

    if-ne v6, v2, :cond_3

    move v3, v4

    .line 604
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 611
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v6, v4

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    .line 613
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v8, v4

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    move v4, v5

    .line 615
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 616
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    cmpl-double v10, v10, v6

    if-ltz v10, :cond_5

    .line 617
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    cmpg-double v10, v10, v8

    if-gtz v10, :cond_5

    .line 618
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/2addr v10, v2

    .line 619
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    div-int/2addr v10, v11

    .line 620
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ds convertedDensity["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 624
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 625
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 626
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    return-object p0

    :catch_0
    const-string v0, "getInitialDisplaySize() exception!!!"

    .line 607
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :array_0
    .array-data 4
        0x168
        0x1a4
        0x1cc
    .end array-data

    :array_1
    .array-data 4
        0x1a4
        0x1e0
        0x21c
    .end array-data

    :array_2
    .array-data 4
        0x168
        0x1a4
        0x1e0
        0x21c
    .end array-data

    :array_3
    .array-data 4
        0x168
        0x1a4
        0x1e5
        0x21c
    .end array-data
.end method

.method public static getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string p0, "SecDisplayUtils"

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 633
    fill-array-data v1, :array_0

    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 637
    fill-array-data v3, :array_1

    new-array v4, v2, [I

    .line 641
    fill-array-data v4, :array_2

    new-array v5, v2, [I

    .line 645
    fill-array-data v5, :array_3

    const/4 v6, 0x3

    new-array v7, v6, [I

    .line 649
    fill-array-data v7, :array_4

    .line 653
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 657
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    const/4 v10, 0x0

    .line 658
    invoke-interface {v9, v10}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v9

    const-string v11, "ro.product.device"

    const-string v12, "NONE"

    .line 659
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa0

    const/4 v13, 0x1

    if-ne v9, v12, :cond_1

    move v0, v10

    :goto_0
    if-ge v0, v2, :cond_a

    .line 662
    aget v1, v3, v0

    if-ne v1, v9, :cond_0

    move v13, v0

    .line 664
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x12c

    if-ne v9, v3, :cond_3

    move v0, v10

    :goto_1
    if-ge v0, v2, :cond_a

    .line 668
    aget v1, v4, v0

    if-ne v1, v9, :cond_2

    move v13, v0

    .line 670
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v3, 0x154

    if-ne v9, v3, :cond_5

    move v0, v10

    :goto_2
    if-ge v0, v2, :cond_a

    .line 674
    aget v1, v5, v0

    if-ne v1, v9, :cond_4

    move v13, v0

    .line 676
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string v2, "gtmotorwifi"

    .line 678
    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v10

    :goto_3
    if-ge v0, v6, :cond_a

    .line 680
    aget v1, v7, v0

    if-ne v1, v9, :cond_6

    move v13, v0

    .line 683
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/16 v2, 0x118

    if-ne v9, v2, :cond_8

    const/16 v2, 0xf0

    move v9, v2

    :cond_8
    move v2, v10

    :goto_4
    if-ge v2, v0, :cond_a

    .line 692
    aget v3, v1, v2

    if-ne v3, v9, :cond_9

    move v13, v2

    .line 694
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 702
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double/2addr v1, v3

    .line 704
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    const-string v5, "ro.product.first_api_level"

    .line 705
    invoke-static {v5, v10}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 707
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v10, v6, :cond_d

    .line 708
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    cmpl-double v6, v6, v1

    if-ltz v6, :cond_c

    .line 709
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v3

    if-gtz v6, :cond_c

    .line 710
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/2addr v6, v9

    .line 711
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/2addr v6, v7

    const/16 v7, 0x21c

    if-lt v6, v7, :cond_b

    const/16 v7, 0x1c

    if-ge v5, v7, :cond_b

    goto :goto_6

    .line 717
    :cond_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertedDensity["

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    return-object v0

    :catch_0
    const-string v0, "getInitialDisplaySize() exception!!!"

    .line 698
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :array_0
    .array-data 4
        0xd5
        0xf0
        0x118
        0x140
        0x168
        0x1a4
        0x1e0
        0x21c
    .end array-data

    :array_1
    .array-data 4
        0x8c
        0xa0
        0xb4
        0xd2
        0xf0
    .end array-data

    :array_2
    .array-data 4
        0x104
        0x12c
        0x154
        0x17c
        0x1a4
    .end array-data

    :array_3
    .array-data 4
        0x12c
        0x154
        0x17c
        0x1a4
        0x1e0
    .end array-data

    :array_4
    .array-data 4
        0xd5
        0xf0
        0x118
    .end array-data
.end method

.method public static getRangeOfScreenZoom(Landroid/content/Context;)I
    .locals 1

    .line 2124
    sget-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object p0

    .line 2125
    array-length p0, p0

    return p0
.end method

.method private static getRefreshRateKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_0

    const-string p0, "refresh_rate_mode"

    return-object p0

    .line 1684
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getRefreshRateKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "refresh_rate_mode_cover"

    return-object p0
.end method

.method public static getScreenResolution(Landroid/content/Context;)I
    .locals 5

    .line 2164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_size_forced"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, ""

    .line 2166
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    .line 2167
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2168
    array-length v2, p0

    if-le v2, v0, :cond_0

    .line 2169
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2170
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    move v2, p0

    :goto_0
    const-string v3, "SecDisplayUtils"

    if-eqz v2, :cond_1

    if-nez p0, :cond_2

    .line 2174
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 2176
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 2177
    invoke-interface {v2, v1, p0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 2178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenSizeInformation() size : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2183
    iget v2, p0, Landroid/graphics/Point;->x:I

    :cond_2
    const/16 p0, 0x5a0

    if-lt v2, p0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/16 p0, 0x2d0

    if-le v2, p0, :cond_4

    const/16 p0, 0x438

    if-gt v2, p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2192
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenResolution : width = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " screenResolution = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    const-string p0, "getInitialDisplaySize() exception!!!"

    .line 2180
    invoke-static {v3, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getScreenSaverEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 2071
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screensaver_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "device_policy"

    .line 1821
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 1822
    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    .line 1823
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getMaxTimeOut(Landroid/content/Context;)J

    move-result-wide v8

    .line 1828
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/settings/R$array;->screen_timeout_entries:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 1829
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/settings/R$array;->screen_timeout_values:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 1831
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v15, -0x1

    .line 1834
    :goto_1
    array-length v3, v11

    if-ge v5, v3, :cond_3

    .line 1835
    aget-object v3, v11, v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v16, v3, v8

    if-gtz v16, :cond_1

    .line 1838
    aget-object v14, v10, v5

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    aget-object v14, v11, v5

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v17, v8

    .line 1842
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1843
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v3, v8, v3

    if-gez v3, :cond_2

    const/4 v3, -0x1

    if-ne v15, v3, :cond_2

    move v15, v5

    goto :goto_2

    :cond_1
    move-wide/from16 v17, v8

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v8, v17

    goto :goto_1

    .line 1850
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eq v15, v4, :cond_4

    .line 1853
    invoke-virtual {v12, v15, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1854
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v15, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    const/4 v4, 0x1

    if-lez v3, :cond_6

    .line 1857
    invoke-static {v11, v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1858
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 1859
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 1860
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 1862
    sget v5, Lcom/android/settings/R$string;->lock_timeout_max:I

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v10, v14

    invoke-virtual {v0, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1863
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1864
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add adminTimeout: index : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  adminTimeout  "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  timeout"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SecDisplayUtils"

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_4
    if-eqz v2, :cond_c

    .line 1871
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 1872
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    if-nez v3, :cond_7

    const-wide v7, 0x7fffffffffffffffL

    .line 1877
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1878
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v15, v14

    .line 1879
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v15, v5, :cond_9

    .line 1880
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-gtz v5, :cond_8

    .line 1882
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1886
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_c

    .line 1891
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    const-string v6, "screen_off_timeout"

    if-gtz v5, :cond_a

    .line 1892
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v0, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_6

    .line 1893
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1894
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-nez v5, :cond_b

    .line 1897
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_b
    :goto_6
    move-object v12, v2

    move-object v13, v3

    :cond_c
    if-ne v1, v4, :cond_d

    .line 1907
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0

    :cond_d
    const/4 v0, 0x2

    if-ne v1, v0, :cond_e

    .line 1909
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenTimeoutList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1308
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 1311
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1312
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getScreenZoom(Landroid/content/Context;)I
    .locals 4

    .line 2134
    sget-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v0

    .line 2135
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 2136
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2137
    aget v3, v0, v2

    if-ne p0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static getScreenZoomInfo(Landroid/content/Context;)[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 412
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 413
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    sget-object v3, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v3

    .line 420
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 421
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    aput v3, v0, v2

    .line 426
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result p0

    .line 427
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 428
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p0, v3, :cond_2

    const/4 p0, 0x1

    aput v2, v0, p0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getSelectedFontSize(Landroid/content/Context;)I
    .locals 2

    .line 2303
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->updateFontSizeByFontScale(Landroid/content/Context;)V

    .line 2304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "font_size"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x5a0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1750
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    long-to-int p1, p1

    .line 1751
    div-int/lit8 p2, p1, 0x3c

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 1752
    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 1753
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1755
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 1786
    array-length v0, p3

    array-length v2, p2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v2

    .line 1792
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_2

    .line 1793
    aget-object v4, p3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-ltz v4, :cond_1

    move v3, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-le v3, v2, :cond_3

    .line 1798
    aget-object v1, p2, v3

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static getTimeoutNewEntry(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x3e8

    .line 1319
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 1320
    div-long v2, p1, v0

    .line 1321
    div-long v4, v2, v0

    .line 1322
    rem-long/2addr p1, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v8, :cond_0

    .line 1325
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/settings/R$plurals;->lock_timeout_hours:I

    long-to-int v4, v4

    invoke-virtual {v11, v12, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v9

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1326
    rem-long/2addr v2, v0

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    const-string v0, " "

    if-lez v8, :cond_1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 1332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/android/settings/R$plurals;->lock_timeout_minutes:I

    long-to-int v2, v2

    invoke-virtual {v4, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-lez v1, :cond_3

    cmp-long v1, p1, v6

    if-lez v1, :cond_3

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    cmp-long v0, p1, v6

    if-lez v0, :cond_4

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->lock_timeout_seconds:I

    long-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array p2, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v9

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1340
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTimeoutNewEntry : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDisplayUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static getTouchSensitivityDefaultValue()I
    .locals 2

    .line 1031
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigTouchSensetivity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ON"

    .line 1033
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getWhiteColorBalance(Landroid/content/Context;)I
    .locals 3

    .line 2089
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sec_display_preset_index"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 1

    .line 1011
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "psm_always_on_display_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ","

    .line 1013
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1014
    aget-object p0, p0, v0

    const-string v0, "1"

    .line 1015
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAccessibilityVisionEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "greyscale_mode"

    const/4 v1, 0x0

    .line 947
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "high_contrast"

    .line 948
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "color_blind"

    .line 949
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "color_lens_switch"

    .line 950
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isDeXScreenTimeoutChangeAllowed(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "SecDisplayUtils"

    const-string v1, "content://com.sec.knox.provider/DexPolicy"

    .line 2019
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2022
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isScreenTimeoutChangeAllowed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SQLiteException MDM DeXPolicy"

    .line 2024
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 2028
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_1
    const-string v2, "isScreenTimeoutChangeAllowed"

    .line 2030
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v1, v2

    .line 2036
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    :try_start_2
    const-string v2, "CursorIndexOutOfBoundsException in isScreenTimeoutChangeAllowed"

    .line 2034
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2036
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 2037
    throw v0

    .line 2040
    :cond_0
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeXScreenTimeoutChangeAllowed  "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDefaultLauncher(Landroid/content/pm/PackageManager;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "SecDisplayUtils"

    if-eqz p0, :cond_1

    .line 979
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 980
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    const-string v3, "isDefaultLauncher : "

    const-string v4, "com.sec.android.app.launcher"

    if-eqz p0, :cond_0

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 984
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    .line 985
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 986
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "isDefaultLauncher : true"

    .line 992
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDefaultScreenZoom(Landroid/content/Context;)Z
    .locals 3

    .line 381
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result p0

    const-string v0, "ro.sf.lcd_density"

    const/16 v1, 0xa0

    .line 382
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDefaultScreenZoom currentDensity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deviceDensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecDisplayUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isFinishSetupWizard(Landroid/content/Context;)Z
    .locals 3

    .line 2390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_setup_complete"

    const/4 v1, 0x0

    const/4 v2, -0x3

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isFoldDevice()Z
    .locals 1

    .line 2738
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableNoSubDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFoldSupportCameraCutout(Landroid/content/Context;)Z
    .locals 4

    .line 2824
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2826
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isWinnerProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ro.product.first_api_level"

    .line 2831
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    return v3

    .line 2836
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public static isInDefaultTimeoutList([Ljava/lang/CharSequence;J)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 1348
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1349
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isInvalidFont(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFont - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDisplayUtils"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2513
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 2519
    :cond_1
    sget-object v3, Lcom/samsung/android/settings/display/SecDisplayUtils;->APK_SYSTEM_FLIPFONT_NAME_LIST:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    if-eqz p1, :cond_5

    .line 2520
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "android"

    .line 2521
    invoke-virtual {v2, v8, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    move v8, v0

    goto :goto_1

    :cond_2
    move v8, v5

    .line 2522
    :goto_1
    invoke-static {p0, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 2523
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apkname : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", isCheckPlatformSignatures : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isCheckReleaseSignatures : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_4

    if-eqz v7, :cond_3

    .line 2525
    invoke-static {v2, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSharedFont(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    return v5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    const-string p0, "checkFont - check if valid certificate"

    .line 2531
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    invoke-static {v2, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSharedFont(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/16 p0, 0x40

    const/4 v3, 0x0

    .line 2540
    :try_start_0
    invoke-virtual {v2, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object p0, v3

    :goto_2
    if-eqz p0, :cond_b

    .line 2545
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2547
    aget-object v2, p0, v5

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    :try_start_1
    const-string v4, "SHA-256"

    .line 2549
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 2550
    aget-object p0, p0, v5

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 2551
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 2552
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "cf80JTE6tM1K+wQqq8r4Js7yneGrnaKmuJl1biThDSA="

    .line 2555
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "**Signature is correct**"

    .line 2556
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8
    const-string p0, "**Signature is incorrect**"

    .line 2559
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception p0

    .line 2563
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2566
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_2
    const-string v2, "X509"

    .line 2570
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 2573
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_9

    .line 2580
    :try_start_3
    invoke-virtual {v2, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 2584
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 2587
    :cond_9
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK name: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a

    .line 2589
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Certificate for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Certificate issued by: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The certificate is valid from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Certificate SN# "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Generated with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v3, :cond_b

    .line 2600
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 2602
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "**Certificate data is correct**"

    .line 2603
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_b
    return v0
.end method

.method public static isMultiWindowMode(Landroid/content/Context;)Z
    .locals 1

    .line 2384
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->getTaskWindowingMode(Landroid/os/IBinder;)I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isPortrait(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2360
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 2362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking orientation port is failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecDisplayUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isScreenSaverEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1052
    :try_start_0
    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p0

    .line 1053
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SecDisplayUtils"

    const-string v0, " isScreenSaverEnabled security exception"

    .line 1055
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSemAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 2652
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "com.samsung.feature.samsung_experience_mobile"

    .line 2653
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSharedFont(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4

    .line 2612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/16 v2, 0x80

    .line 2619
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2622
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 2626
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2627
    iget p1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p0, :cond_4

    const-string v2, "packageinstaller"

    .line 2628
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v0

    .line 2629
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flip font is preload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isSharedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecDisplayUtils"

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public static isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 2486
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2487
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_3

    .line 2489
    array-length p1, p0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v3, p0, v1

    .line 2490
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 2491
    invoke-virtual {v7, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception p0

    .line 2499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find my package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDisplayUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return v0
.end method

.method public static isSupportCoverHighRefreshRate()Z
    .locals 1

    const-string v0, "0"

    .line 1612
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportMaxHS60RefreshRate(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e7

    if-eq p1, v1, :cond_0

    const-string p0, "1"

    .line 1742
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    return v0

    .line 1737
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportMaxHS60RefreshRate(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "0"

    .line 1739
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static isSupportScreenSaverWhenToDream()Z
    .locals 1

    .line 1046
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDockSettings()Z

    move-result v0

    return v0
.end method

.method public static isWinnerProduct()Z
    .locals 2

    .line 2853
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string v1, "winner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putIntRefreshRate(Landroid/content/Context;II)V
    .locals 1

    .line 1665
    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getRefreshRateKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1666
    invoke-static {p0, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result p2

    if-eqz p2, :cond_0

    .line 1667
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static setAutoBrightnessSetting(Landroid/content/Context;Z)I
    .locals 2

    const-string v0, "SecDisplayUtils"

    if-nez p0, :cond_0

    const-string p0, "setAutoBrightnessSetting() - context is null"

    .line 1368
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1377
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "setAutoBrightnessSetting() - Disabled by dex"

    .line 1378
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "screen_brightness_mode"

    if-eqz p1, :cond_2

    .line 1383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1385
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v0
.end method

.method public static setAutoBrightnessWithCamera(Landroid/content/Context;Z)V
    .locals 3

    .line 1438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1439
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportCameraSensor(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "adaptive_brightness"

    .line 1440
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1442
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const-string v2, "adaptive_brightness_toggled"

    .line 1443
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    .line 1445
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "samsung.intent.action.START_AUTO_BRIGHTNESS_ROOT"

    .line 1446
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.adaptivebrightnessgo"

    const-string v2, "com.samsung.adaptivebrightnessgo.RootService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "from"

    const-string v1, "settings"

    .line 1449
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SecDisplayUtils"

    const-string v0, "Error while calling adaptive brightness = "

    .line 1453
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setChargingInfoAlways(Landroid/content/Context;I)V
    .locals 1

    .line 2719
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "charging_info_always"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2720
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setChargingInfoAlways : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDisplayUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDefaultScreenZoom(Landroid/content/Context;)V
    .locals 7

    const-string v0, "SecDisplayUtils"

    const/4 v1, 0x0

    .line 390
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 391
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "setDefaultScreenZoom: baseDensity="

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    :try_start_1
    new-array v3, v3, [F

    const/high16 v5, 0x3f000000    # 0.5f

    aput v5, v3, v1

    const/4 v5, 0x1

    const/high16 v6, 0x3f400000    # 0.75f

    aput v6, v3, v5

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v5

    .line 393
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v5

    .line 394
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v2

    int-to-float v2, v2

    aget v1, v3, v5

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " resolution index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v1

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 401
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultScreenZoom: Can\'t call getInitialDisplayDensity() on IWindowManager. Remote exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 404
    :goto_1
    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(Landroid/content/Context;I)V

    :cond_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(Landroid/content/Context;I)V

    .line 406
    :cond_2
    throw v0
.end method

.method public static setDisplayEasyModeDensity(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "SecDisplayUtils"

    .line 824
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 826
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 828
    :try_start_0
    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "preserved_density_standard_mode"

    if-nez p1, :cond_2

    .line 835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "display_size_forced"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    const-string v6, ""

    .line 837
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ","

    .line 838
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 839
    array-length v6, v2

    if-le v6, v5, :cond_0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 841
    :cond_1
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 843
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v3

    .line 844
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 845
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set Display to Easy mode : current density = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preserved density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-object v1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object p0

    .line 849
    array-length v1, p0

    sub-int/2addr v1, v5

    aget p0, p0, v1

    :goto_1
    move v4, p0

    goto/16 :goto_3

    .line 851
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 852
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set Display to Standard mode : restored density = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 856
    :cond_3
    :try_start_1
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "getInitialDisplayDensity() exception!!!"

    .line 858
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Protection) set Display to Standard mode : restored density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 864
    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit16 v1, v1, 0x168

    .line 865
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    int-to-float v2, p0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetPx = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", basePx = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", convertRatio = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, v4

    mul-float/2addr p0, v2

    float-to-int p0, p0

    goto :goto_1

    .line 871
    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayEasyModeDensity -> reqMode : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", density : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 872
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(IIIIZI)V

    return-void

    :catch_1
    const-string p0, "getInitialDisplaySize() exception!!!"

    .line 830
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setExtraBrightness(Landroid/content/Context;I)V
    .locals 2

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExtraBrightness : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDisplayUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_extra_brightness"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setFrontScreenAppsInfo(Ljava/lang/String;)V
    .locals 2

    .line 2797
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 2799
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "names"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get FrontScreenAppsInfo from json object. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDisplayUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setNightModeSetting(Landroid/content/Context;Z)I
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SecDisplayUtils"

    const-string p1, "setNightModeSetting() - context is null"

    .line 1226
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "uimode"

    .line 1229
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1230
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return v0
.end method

.method public static setPreviewImageHeight(Landroid/content/Context;I)I
    .locals 4

    .line 2349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2353
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2355
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p0, v0

    int-to-double v0, p0

    int-to-double p0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v2

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static setScreenSaverEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 2080
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screensaver_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setScreenTimeout(Landroid/content/Context;J)I
    .locals 4

    const-string v0, "SecDisplayUtils"

    if-eqz p0, :cond_5

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "setScreenTimeout() - Disabled by dex"

    .line 1280
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 1286
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_screen_timeout"

    .line 1284
    invoke-static {p0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string p0, "setScreenTimeout() - Disabled by admin"

    .line 1288
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1292
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1294
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1295
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_3

    .line 1296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    long-to-int p1, p1

    const-string p2, "screen_off_timeout"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x0

    return p0

    .line 1301
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenTimeout() - SCREEN_TIMEOUT_NOT_IN_DEFAULT_TIMEOUT_LIST : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 1275
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenTimeout() - INVALID_ARGUMENT Contextg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "null"

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not null / timeout = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static setScreenZoom(Landroid/content/Context;I)Z
    .locals 3

    .line 2151
    sget-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    .line 2152
    array-length v2, v0

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    .line 2155
    aget p1, v0, p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(Landroid/content/Context;I)V

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setScreenZoomInfo(Landroid/content/Context;[I)V
    .locals 6

    .line 438
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    sget-object v2, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v2

    .line 446
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 447
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 451
    aget v3, p1, v2

    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 453
    aget p1, p1, v1

    if-ge v4, p1, :cond_2

    const-string p0, "SecDisplayUtils"

    const-string p1, "setScreenZoomInfo(), screenZoomRange is smaller than origin device, blocked restoring"

    .line 455
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x5

    if-ne v4, v1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    mul-int/lit8 v3, v3, 0x2

    :cond_3
    sub-int/2addr v4, v2

    if-ge v4, v3, :cond_4

    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    .line 467
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(Landroid/content/Context;I)V

    return-void
.end method

.method public static setSelectedScreenResolution(Landroid/content/Context;IZ)V
    .locals 9

    .line 725
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v0

    const-string v1, "SecDisplayUtils"

    if-nez v0, :cond_0

    const-string p0, "This device doesn\'t support multi resolution"

    .line 726
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 730
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 745
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 746
    invoke-interface {v2, v3, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 747
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v2

    .line 749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInitialDisplaySize() size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_density_forced"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentDensity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultDensity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    const-string v7, ""

    .line 762
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ","

    .line 763
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 764
    array-length v7, v5

    if-le v7, v6, :cond_1

    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    iget v5, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 766
    :cond_2
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 768
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v7, "easy_mode_switch"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    move v3, v6

    :cond_3
    if-eqz v3, :cond_4

    const/high16 p0, 0x44340000    # 720.0f

    .line 773
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x44b40000    # 1440.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, p0

    float-to-int p0, v3

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "easymode)defaultDensity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 776
    :cond_4
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    int-to-float v3, v5

    div-float/2addr p0, v3

    int-to-float v3, v4

    mul-float/2addr p0, v3

    float-to-int p0, p0

    .line 778
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedScreenResolution() density : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int/lit16 v3, v3, 0x168

    const/4 v4, 0x2

    if-eqz p1, :cond_7

    if-eq p1, v6, :cond_6

    if-eq p1, v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    :cond_7
    :goto_2
    int-to-float p1, v4

    int-to-float v5, v3

    div-float/2addr p1, v5

    .line 799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "basePx : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   targetPx : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertRatio :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    int-to-double v5, p0

    const-wide/high16 v7, 0x4064000000000000L    # 160.0

    div-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x140

    if-ge v3, v4, :cond_8

    const-string p0, "smallestWidth is less then 320!!!!! so set default smallestWidth value"

    .line 804
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    move v2, p0

    .line 808
    :goto_3
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int v4, p0

    .line 809
    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int v5, p0

    int-to-float p0, v2

    mul-float/2addr p0, p1

    float-to-int v6, p0

    .line 812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "set width : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  height : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  density : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  setDefault : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_a

    if-lez v5, :cond_a

    if-gtz v6, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 817
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(IIIIZI)V

    :cond_a
    :goto_4
    return-void

    :catch_0
    const-string p0, "getInitialDisplaySize() exception!!!"

    .line 751
    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setWhiteBalanceEnable(Z)V
    .locals 0

    .line 2112
    sput-boolean p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mWhiteBalanceVisible:Z

    return-void
.end method

.method public static setWhiteColorBalance(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    const/4 v2, 0x5

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p1

    .line 2106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "sec_display_preset_index"

    invoke-static {p0, p1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static updateDeXTimeoutPreferenceDescription(Landroid/content/Context;Lcom/samsung/android/settings/widget/SecRestrictedPreference;J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const-string v0, ""

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 1997
    invoke-static {p0, p2, p3, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimeoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x2

    .line 1998
    invoke-static {p0, p2, p3, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimeoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p1, :cond_4

    .line 1999
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 2003
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 2004
    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2009
    :cond_3
    aget-object p0, p1, v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static updateFontSizeByFontScale(Landroid/content/Context;)V
    .locals 6

    .line 2283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_scale"

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 2287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2288
    sget v4, Lcom/android/settings/R$array;->sec_entryvalues_8_step_font_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2291
    invoke-static {v2, v3}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 2294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current font_size and font_scale ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") is not matched. So we updated font_size to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SecDisplayUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static updateTimeoutPreferenceDescription(Landroid/content/Context;Lcom/samsung/android/settings/widget/SecRestrictedPreference;J)Ljava/lang/String;
    .locals 3

    .line 1763
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1764
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-eqz p1, :cond_0

    .line 1765
    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1766
    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 1771
    array-length p0, v0

    if-nez p0, :cond_2

    goto :goto_0

    .line 1774
    :cond_2
    invoke-static {p2, p3, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 1778
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    :cond_4
    :goto_0
    return-object v2
.end method

.method public static writeFontScaleDBAllUser(Landroid/content/Context;F)V
    .locals 6

    const-string v0, "user"

    .line 2323
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2324
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2325
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2326
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v5, "font_scale"

    invoke-static {v3, v5, p1, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontScaleDBAllUser() user.id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecDisplayUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeFontWeightDBAllUser(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "user"

    .line 2333
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2334
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "font_weight_adjustment"

    invoke-static {v2, v4, p1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontWeightDBAllUser() user.id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / value : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecDisplayUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
