.class public final Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;,
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED:I = 0x1

.field public static final blacklist DEV_OK:I = -0xffff68

.field public static final blacklist DISABLE:I = 0x1

.field public static final blacklist ENABLE:I = 0x0

.field public static final blacklist ENG_KERNEL:I = 0x0

.field public static final blacklist ERRORBYTE_EM_SERVICE:[B

.field public static final blacklist ERRORBYTE_INVAILD_PARAM:[B

.field public static final blacklist ERRORBYTE_NOT_INSATALLED:[B

.field public static final blacklist ERRORBYTE_NOT_SUPPORTED:[B

.field public static final blacklist ERRORBYTE_NO_PERMISSION:[B

.field public static final blacklist ERRORINTARR_EM_SERVICE:[I

.field public static final blacklist ERRORINTARR_INTERNAL:[I

.field public static final blacklist ERRORINTARR_NOT_INSTALLED:[I

.field public static final blacklist ERRORINTARR_NOT_SUPPORTED:[I

.field public static final blacklist ERRORINTARR_NO_PERMISSION:[I

.field public static final blacklist ERRORSTRING_EM_SERVICE:Ljava/lang/String; = "ERROR_EM_SERVICE"

.field public static final blacklist ERRORSTRING_INTERNAL:Ljava/lang/String; = "ERROR_INTERNAL"

.field public static final blacklist ERRORSTRING_NOT_INSTALLED:Ljava/lang/String; = "ERROR_TOKEN_NOT_INSATLLED"

.field public static final blacklist ERRORSTRING_NO_PERMISSION:Ljava/lang/String; = "ERROR_NO_PERMISSION"

.field public static final blacklist ERROR_COUNTER:I = -0xfffffec

.field public static final blacklist ERROR_EM_SERVICE:I = -0x3e8

.field public static final blacklist ERROR_INVALID_ESI:I = -0x578

.field public static final blacklist ERROR_INVALID_PARAM:I = -0x6a4

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0x640

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x514

.field public static final blacklist ERROR_TUC_ZERO:I = -0x5dc

.field public static final blacklist MODE_CUST_KERNEL:I = 0x3

.field public static final blacklist MODE_DEBUG_LOG:I = 0x2

.field public static final blacklist MODE_ENG_KERNEL:I = 0x0

.field public static final blacklist MODE_KNOX_TEST:I = 0x4

.field public static final blacklist MODE_TEST_ENV:I = 0x1

.field public static final blacklist MODE_USB_DEBUG:I = 0x1

.field public static final blacklist NATIVE_NO_PERMISSION:I = -0xffffffc

.field public static final blacklist NATIVE_SUCCESS:I = 0x0

.field public static final blacklist NOK:I = 0x0

.field public static final blacklist NOT_ALLOWED:I = 0x0

.field public static final blacklist OK:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "engmode_java_manager"

.field public static final blacklist USB_DEBUG:I = 0x1

.field public static final blacklist USB_DEBUG_ALLOWED:I = 0x1

.field public static final blacklist USB_DEBUG_NOT_ALLOWED:I


# instance fields
.field private blacklist mCallerUid:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

.field private blacklist mPkgMgr:Landroid/content/pm/PackageManager;

.field private final blacklist mPkgName:Ljava/lang/String;

.field private blacklist mSignature:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerUid(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignature(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    new-array v1, v0, [B

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    new-array v1, v0, [B

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    new-array v0, v0, [B

    const/4 v1, -0x4

    aput-byte v1, v0, v2

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_INSATALLED:[B

    const v0, -0xfffffff

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_INTERNAL:[I

    const v0, -0xffffffe

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    const v0, -0xffffffd

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NO_PERMISSION:[I

    const v0, -0xffffffc

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_SUPPORTED:[I

    const v0, -0xffffffb

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_INSTALLED:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "engmode_java_manager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;-><init>(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    const-string v2, "PackageManager Exception occued"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    const-string v2, ", "

    const-string v3, "("

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") connects to EngineeringModeNative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") can\'t be connect.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist essCommand(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "essCommand is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_commandForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist getExpiryDate()Ljava/lang/String;
    .locals 4

    const-string v0, "getExpiryDate() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getExpiryDate()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public blacklist getID()[B
    .locals 3

    const-string v0, "getID() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getID()[B

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist getLastTokenStatus()Ljava/lang/String;
    .locals 4

    const-string v0, "ERROR_EM_SERVICE"

    const-string v1, "getLastTokenStatus() is called"

    const-string v2, "engmode_java_manager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public blacklist getModes()[I
    .locals 3

    const-string v0, "getModes() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v1
.end method

.method public blacklist getNumOfModes()I
    .locals 4

    const-string v0, "getNumOfModes() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getNumOfModes()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist getPriorityTime()[B
    .locals 3

    const-string v0, "setPriorityTime() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist getRequestMsg(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3

    const-string v0, "getRequestMsg() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 3

    const-string v0, "getRequestMsg() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist getServerTime()J
    .locals 5

    const-string v0, "getServerTime() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x3e8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getServerTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_0
    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v2

    :catch_1
    move-exception v0

    const-string v4, "Failed to connect service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-wide v2
.end method

.method public blacklist getStatus(I)I
    .locals 4

    const-string v0, "getStatus() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getStatus(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist getStringModes()Ljava/lang/String;
    .locals 4

    const-string v0, "ERROR_EM_SERVICE"

    const-string v1, "getStringModes() is called"

    const-string v2, "engmode_java_manager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v1

    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public blacklist getTUC(I)I
    .locals 4

    const-string v0, "getTUC() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getTUC(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist getToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 5

    const-string v0, "getToken() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;

    invoke-direct {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getToken()[B

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    invoke-virtual {v2, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public blacklist installToken([B)I
    .locals 4

    const-string v0, "installToken() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_installToken([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist installTokenForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "installTokenForESS() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTokenInstalled()I
    .locals 2

    const-string v0, "engmode_java_manager"

    const-string v1, "isTokenInstalled() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_isTokenInstalled()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public blacklist makeDelTokenForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "makeDelTokenForESS() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    const-string v0, "makeITLReq() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist makeITLReqForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "makeITLReqForESS is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist makeTimeReq()[B
    .locals 4

    const-string v0, "makeTimeReq() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeTimeReq()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method

.method public blacklist makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 3

    const-string v0, "makeTokenReq() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist makeTokenReqForESS(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "makeTokenReqForESS() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist recoveryITL([B)I
    .locals 4

    const-string v0, "restoreITL() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_recoveryITL([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist recoveryITLForESS(Ljava/lang/String;)I
    .locals 4

    const-string v0, "recoveryITLForESS() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist removeToken()I
    .locals 4

    const-string v0, "removeToken() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_removeToken()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist sendFuseCmd()I
    .locals 4

    const-string v0, "sendFuseCmd() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_sendFuseCmd()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist setPriorityTime(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "setPriorityTime() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    :catch_1
    move-exception v0

    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public blacklist updateTime([B)[B
    .locals 4

    const-string v0, "updateTime"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_updateTime([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception v2

    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0
.end method
