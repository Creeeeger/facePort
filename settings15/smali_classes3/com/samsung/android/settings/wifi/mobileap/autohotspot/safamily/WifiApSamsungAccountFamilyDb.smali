.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FAMILY_GROUP_INFO_URI:Landroid/net/Uri;

.field public static final FAMILY_GROUP_MEMBER_INFO_URI:Landroid/net/Uri;

.field public static currentGuid:Ljava/lang/String;

.field public static final mylock:Ljava/lang/Object;

.field public static newFamilyCount:I

.field public static newFamilyGuids:Ljava/lang/String;

.field public static newFamilyId:Ljava/lang/String;

.field public static newFamilyUserNames:Ljava/lang/String;

.field public static newGroupOwnerId:Ljava/lang/String;

.field public static newHashFamilyId:Ljava/lang/Long;

.field public static oldFamilyCount:I

.field public static oldFamilyGuids:Ljava/lang/String;

.field public static oldFamilyId:Ljava/lang/String;

.field public static oldFamilyUserNames:Ljava/lang/String;

.field public static oldGroupOwnerId:Ljava/lang/String;

.field public static oldHashFamilyId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;

    const-string v0, "content://com.samsung.android.samsungaccount.familyGroupProvider/family_group_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->FAMILY_GROUP_INFO_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.samsungaccount.familyGroupProvider/family_group_member_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->FAMILY_GROUP_MEMBER_INFO_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->mylock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static saveMemberIcon(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil;->bmForURL:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil$1;

    invoke-direct {v1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil$1;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil;->mURLThread:Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil$1;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil;->mURLThread:Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil$1;

    if-eqz p2, :cond_0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p2, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil;->mURLThread:Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil$1;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil;->mURLThread:Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil$1;

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 p2, 0x0

    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil;->bmForURL:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    const/16 v2, 0x59

    const/4 v3, 0x1

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v1, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    shr-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v5, v2, v2, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/utils/PhotoUtil;->bmForURL:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v2, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-static {v1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "smart_tethering_family_icons_"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setFamilyGroupInfoValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    move-wide v5, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_1

    const-wide/16 v7, 0x1f

    mul-long/2addr v7, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-long v5, v5

    add-long/2addr v7, v5

    const-wide v5, 0x7ffffffffffffffeL

    rem-long v5, v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v3

    if-gez v0, :cond_2

    mul-long/2addr v5, v1

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newHashFamilyId:Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getEncryptedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyId:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getEncryptedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newGroupOwnerId:Ljava/lang/String;

    const-string p1, ""

    if-lez p3, :cond_3

    invoke-static {p0, p4}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getEncryptedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, p1

    :goto_2
    sput-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyUserNames:Ljava/lang/String;

    if-lez p3, :cond_4

    invoke-static {p0, p5}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getEncryptedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    move-object p2, p1

    :goto_3
    sput-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyGuids:Ljava/lang/String;

    sput p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyCount:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[[[[[[[[[[ ============\nnewHashFamilyId : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newHashFamilyId:Ljava/lang/Long;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\nnewFamilyCount : "

    invoke-static {p2, p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\nnewFamilyUserNames : "

    invoke-static {p2, p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyUserNames:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\nnewFamilyGuids : "

    invoke-static {p2, p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyGuids:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\nnewFamilyLEaderGuid : "

    invoke-static {p2, p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newGroupOwnerId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\nnewFamilyId : "

    invoke-static {p2, p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n============ ]]]]]]]]]]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiApSamsungAccountFamilyDb"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newHashFamilyId:Ljava/lang/Long;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "hash_value_based_on_familyid"

    invoke-static {p0, p3, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget p3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "smart_tethering_family_count"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smart_tethering_ownerid"

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newGroupOwnerId:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smart_tethering_family_guids"

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyGuids:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smart_tethering_familyid"

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyId:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smart_tethering_family_user_names"

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyUserNames:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyId:Ljava/lang/String;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static setOldDbValues(Landroid/content/Context;)V
    .locals 4

    const-string v0, "hash_value_based_on_familyid"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v1, :cond_0

    sput-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldHashFamilyId:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldHashFamilyId:Ljava/lang/Long;

    :goto_0
    const-string/jumbo v0, "smart_tethering_family_count"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sput v3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyCount:I

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyCount:I

    :goto_1
    const-string/jumbo v0, "smart_tethering_ownerid"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldGroupOwnerId:Ljava/lang/String;

    const-string/jumbo v0, "smart_tethering_family_user_names"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyUserNames:Ljava/lang/String;

    const-string/jumbo v0, "smart_tethering_family_guids"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyGuids:Ljava/lang/String;

    const-string/jumbo v0, "smart_tethering_familyid"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyId:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newHashFamilyId:Ljava/lang/Long;

    const-string p0, ""

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyId:Ljava/lang/String;

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyUserNames:Ljava/lang/String;

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyGuids:Ljava/lang/String;

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newGroupOwnerId:Ljava/lang/String;

    sput v3, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->newFamilyCount:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[[[[[[[[[[  ============\noldHashFamilyId : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldHashFamilyId:Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\noldFamilyCount : "

    invoke-static {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\noldFamilyUserNames : "

    invoke-static {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyUserNames:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\noldFamilyGuids : "

    invoke-static {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyGuids:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\noldFamilyLEaderGuid : "

    invoke-static {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldGroupOwnerId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\noldFamilyId : "

    invoke-static {p0, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->oldFamilyId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n============ ]]]]]]]]]]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiApSamsungAccountFamilyDb"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized updateSAFamilyGroupInfo(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    const-string/jumbo v0, "updateSAFamilyGroupInfo(),version:"

    const-class v7, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;

    monitor-enter v7

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const-string v3, "account"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_0

    const-string v0, "WifiApSamsungAccountFamilyDb"

    const-string v1, "SA account not loggedin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_20

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.osp.app.signin"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    :try_start_2
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const-string v4, "FamilyGroupProviderVersion"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    goto :goto_0

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->mylock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->setOldDbValues(Landroid/content/Context;)V

    const-string v4, "WifiApSamsungAccountFamilyDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "smart_tethering_guid"

    invoke-static {v1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->currentGuid:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->currentGuid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/16 v16, 0x0

    const/16 v17, 0x0

    :try_start_4
    sget-object v10, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->FAMILY_GROUP_INFO_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v15

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v9, :cond_7

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_7

    move/from16 v10, v16

    :goto_1
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "group_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "group_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "group_type"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "group_owner"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sget-boolean v10, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v10, :cond_2

    const-string v10, "WifiApSamsungAccountFamilyDb"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "groupId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",groupName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",groupType:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",groupOwner:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v11, v0

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_2
    const-string v10, "WifiApSamsungAccountFamilyDb"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "groupId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_3

    move-object/from16 v13, v17

    goto :goto_2

    :cond_3
    const-string v13, "*"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",groupName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    move-object/from16 v0, v17

    goto :goto_3

    :cond_4
    const-string v13, "*"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",groupType:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_5

    move-object/from16 v0, v17

    goto :goto_4

    :cond_5
    const-string v0, "*"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",groupOwner:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_6

    move-object/from16 v0, v17

    goto :goto_5

    :cond_6
    const-string v0, "*"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v11, v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v11, v0

    move/from16 v10, v16

    :goto_7
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v9, v0

    :try_start_9
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v11

    :catchall_5
    move-exception v0

    goto/16 :goto_1f

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_7
    move/from16 v10, v16

    :cond_8
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_a

    :catch_1
    move-exception v0

    move/from16 v10, v16

    :goto_9
    :try_start_a
    const-string v9, "WifiApSamsungAccountFamilyDb"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_9
    :goto_a
    if-eqz v10, :cond_1a

    :try_start_b
    sget-object v10, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->FAMILY_GROUP_MEMBER_INFO_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v15

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v9, :cond_18

    :try_start_c
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    if-eqz v0, :cond_18

    move/from16 v10, v16

    :goto_b
    :try_start_d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "user_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "group_id"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v11, "member_type"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "status"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "family_name"

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "given_name"

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "image_url"

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->currentGuid:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-nez v2, :cond_a

    :try_start_e
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v6

    :goto_c
    move/from16 v16, v10

    goto/16 :goto_19

    :cond_a
    :goto_d
    :try_start_f
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-nez v2, :cond_b

    :try_start_10
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_b
    :try_start_11
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object/from16 v18, v6

    const v6, 0x7f1433a8

    :try_start_12
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :catchall_7
    move-exception v0

    :goto_e
    move-object v1, v0

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_e

    :cond_c
    move-object/from16 v18, v6

    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_d
    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    invoke-static {v1, v10, v15}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->saveMemberIcon(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    const/4 v2, 0x1

    add-int/lit8 v6, v10, 0x1

    :try_start_13
    sget-boolean v10, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v10, :cond_e

    const-string v10, "WifiApSamsungAccountFamilyDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memberCount:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",userId:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",groupId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",memberType:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",status:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",familyName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",givenName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imageUrl:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :catchall_9
    move-exception v0

    move-object v1, v0

    move/from16 v16, v6

    goto/16 :goto_19

    :cond_e
    const-string v1, "WifiApSamsungAccountFamilyDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "memberCount:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",userId:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_f

    move-object/from16 v0, v17

    goto :goto_11

    :cond_f
    const-string v10, "*"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",groupId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_10

    move-object/from16 v0, v17

    goto :goto_12

    :cond_10
    const-string v0, "*"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",memberType:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_11

    move-object/from16 v0, v17

    goto :goto_13

    :cond_11
    const-string v0, "*"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",status:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",familyName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v13, :cond_12

    move-object/from16 v0, v17

    goto :goto_14

    :cond_12
    const-string v0, "*"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",givenName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v14, :cond_13

    move-object/from16 v0, v17

    goto :goto_15

    :cond_13
    const-string v0, "*"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imageUrl:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_14

    move-object/from16 v0, v17

    goto :goto_16

    :cond_14
    const-string v0, "*"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :goto_17
    move v10, v6

    goto :goto_18

    :cond_15
    move-object/from16 v18, v6

    :try_start_14
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_16

    const-string v0, "WifiApSamsungAccountFamilyDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Same GUID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->currentGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :cond_16
    :goto_18
    move-object/from16 v1, p0

    move-object/from16 v6, v18

    goto/16 :goto_b

    :cond_17
    move-object/from16 v18, v6

    move/from16 v16, v10

    goto :goto_1b

    :cond_18
    move-object/from16 v18, v6

    goto :goto_1b

    :catchall_a
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    :goto_19
    :try_start_15
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_1a

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v1

    :catch_2
    move-exception v0

    goto :goto_1d

    :goto_1b
    if-eqz v9, :cond_19

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :cond_19
    :goto_1c
    move-object v2, v5

    goto :goto_1e

    :catch_3
    move-exception v0

    move-object/from16 v18, v6

    :goto_1d
    :try_start_17
    const-string v1, "WifiApSamsungAccountFamilyDb"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_1a
    move-object/from16 v18, v6

    const-string v0, "WifiApSamsungAccountFamilyDb"

    const-string v1, "doesn\'t have a Family group"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v3, v18

    move/from16 v4, v16

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->setFamilyGroupInfoValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    monitor-exit v7

    return-void

    :goto_1f
    :try_start_18
    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :try_start_19
    throw v0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    monitor-exit v7

    return-void

    :goto_20
    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isSAFamilySupportedInSAFamilyDB(Landroid/content/Context;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rcvd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",supported:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiApSamsungAccountFamilyDb"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSamsungAccountFamilyDb;->updateSAFamilyGroupInfo(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
