.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final whitelist USES_ENCRYPTED_STORAGE:I = 0x7

.field public static final blacklist USES_POLICY_ALLOW_BLUETOOTH_MODE:I = 0x11

.field public static final blacklist USES_POLICY_ALLOW_BROWSER:I = 0xf

.field public static final blacklist USES_POLICY_ALLOW_DESKTOP_SYNC:I = 0x12

.field public static final blacklist USES_POLICY_ALLOW_INTERNET_SHARING:I = 0x10

.field public static final blacklist USES_POLICY_ALLOW_IRDA:I = 0x13

.field public static final blacklist USES_POLICY_ALLOW_POPIMAP_EMAIL:I = 0xe

.field public static final blacklist USES_POLICY_ALLOW_STORAGE_CARD:I = 0xb

.field public static final blacklist USES_POLICY_ALLOW_TEXT_MESSAGING:I = 0xd

.field public static final blacklist USES_POLICY_ALLOW_WIFI:I = 0xc

.field public static final whitelist USES_POLICY_DISABLE_CAMERA:I = 0x8

.field public static final whitelist USES_POLICY_DISABLE_KEYGUARD_FEATURES:I = 0x9

.field public static final blacklist USES_POLICY_EDM_BEGIN:I = 0x16

.field public static final whitelist USES_POLICY_EXPIRE_PASSWORD:I = 0x6

.field public static final whitelist USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final whitelist USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final blacklist USES_POLICY_PASSWORD_RECOVERABLE:I = 0xa

.field public static final blacklist USES_POLICY_REQUIRE_STORAGECARD_ENCRYPTION:I = 0x14

.field public static final whitelist USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final greylist-max-o USES_POLICY_SETS_GLOBAL_PROXY:I = 0x5

.field public static final blacklist USES_POLICY_SIMPLE_PASSWORD_ENABLED:I = 0x15

.field public static final whitelist USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final whitelist USES_POLICY_WIPE_DATA:I = 0x4

.field static greylist-max-o sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mActivityInfo:Landroid/content/pm/ActivityInfo;

.field greylist-max-o mSupportsTransferOwnership:Z

.field greylist-max-o mUsesPolicies:I

.field greylist-max-o mVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 319
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 322
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x4

    const-string/jumbo v3, "wipe-data"

    const v4, 0x1040b35

    const v5, 0x1040b19

    const v6, 0x1040b36

    const v7, 0x1040b1a

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x2

    const-string/jumbo v3, "reset-password"

    const v4, 0x1040b30

    const v5, 0x1040b13

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x0

    const-string v3, "limit-password"

    const v4, 0x1040b2d

    const v5, 0x1040b10

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x1

    const-string/jumbo v3, "watch-login"

    const v4, 0x1040b34

    const v5, 0x1040b17

    const v6, 0x1040b34

    const v7, 0x1040b18

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x3

    const-string v3, "force-lock"

    const v4, 0x1040b2c

    const v5, 0x1040b0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x5

    const-string/jumbo v3, "set-global-proxy"

    const v4, 0x1040b31

    const v5, 0x1040b14

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x6

    const-string v3, "expire-password"

    const v4, 0x1040b2b

    const v5, 0x1040b0e

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v2, 0x7

    const-string v3, "encrypted-storage"

    const v4, 0x1040b2a

    const v5, 0x1040b0d

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x8

    const-string v3, "disable-camera"

    const v4, 0x1040b27

    const v5, 0x1040b0a

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x9

    const-string v3, "disable-keyguard-features"

    const v4, 0x1040b28

    const v5, 0x1040b0b

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x14

    const-string/jumbo v3, "require-storagecard-encryption"

    const v4, 0x1040b2f

    const v5, 0x1040b12

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0xa

    const-string/jumbo v3, "recover-password"

    const v4, 0x1040b2e

    const v5, 0x1040b11

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0xe

    const-string v3, "allow-popimapemail"

    const v4, 0x1040b21

    const v5, 0x1040b04

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0xb

    const-string v3, "allow-storagecard"

    const v4, 0x1040b22

    const v5, 0x1040b05

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0xc

    const-string v3, "allow-wifi"

    const v4, 0x1040b25

    const v5, 0x1040b08

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0xd

    const-string v3, "allow-textmessaging"

    const v4, 0x1040b23

    const v5, 0x1040b06

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0xf

    const-string v3, "allow-browser"

    const v4, 0x1040b1c

    const v5, 0x1040aff

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x10

    const-string v3, "allow-internetsharing"

    const v4, 0x1040b1f

    const v5, 0x1040b02

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x11

    const-string v3, "allow-bluetoothmode"

    const v4, 0x1040b1b

    const v5, 0x1040afe

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x12

    const-string v3, "allow-desktopsync"

    const v4, 0x1040b1e

    const v5, 0x1040b01

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x13

    const-string v3, "allow-irda"

    const v4, 0x1040b20

    const v5, 0x1040b03

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 397
    sget-object v1, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 398
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$1;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object v2, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 451
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 453
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v0, "android.app.device_admin"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v4, v0

    .line 454
    if-eqz v4, :cond_11

    .line 459
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 461
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 464
    .local v5, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_0

    const/4 v6, 0x2

    if-eq v7, v6, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "nodeName":Ljava/lang/String;
    const-string v9, "device-admin"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 474
    sget-object v9, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 477
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    .line 480
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 482
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 483
    .local v10, "outerDepth":I
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v7, v11

    if-eq v11, v8, :cond_d

    const/4 v11, 0x3

    if-ne v7, v11, :cond_1

    .line 484
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_e

    .line 485
    :cond_1
    if-eq v7, v11, :cond_c

    const/4 v12, 0x4

    if-ne v7, v12, :cond_2

    .line 486
    move-object/from16 v17, v0

    move v0, v8

    goto/16 :goto_8

    .line 488
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 489
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "uses-policies"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 490
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 491
    .local v14, "innerDepth":I
    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    move v7, v15

    if-eq v15, v8, :cond_8

    if-ne v7, v11, :cond_4

    .line 492
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v14, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v17, v0

    goto :goto_6

    .line 493
    :cond_4
    :goto_3
    if-eq v7, v11, :cond_7

    if-ne v7, v12, :cond_5

    .line 494
    move-object/from16 v17, v0

    goto :goto_5

    .line 496
    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 497
    .local v15, "policyName":Ljava/lang/String;
    sget-object v12, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 498
    .local v12, "val":Ljava/lang/Integer;
    if-eqz v12, :cond_6

    .line 499
    iget v11, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    shl-int v16, v8, v16

    or-int v11, v11, v16

    iput v11, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    move-object/from16 v17, v0

    goto :goto_4

    .line 501
    :cond_6
    const-string v11, "DeviceAdminInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .local v17, "res":Landroid/content/res/Resources;
    const-string v0, "Unknown tag under uses-policies of "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v12    # "val":Ljava/lang/Integer;
    .end local v15    # "policyName":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 493
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_7
    move-object/from16 v17, v0

    .line 491
    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :goto_5
    move-object/from16 v0, v17

    const/4 v8, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x4

    goto :goto_2

    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_8
    move-object/from16 v17, v0

    .line 505
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v14    # "innerDepth":I
    .restart local v17    # "res":Landroid/content/res/Resources;
    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_9
    move-object/from16 v17, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    const-string/jumbo v0, "support-transfer-ownership"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 506
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_a

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    goto :goto_7

    .line 507
    :cond_a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v8, "support-transfer-ownership tag must be empty."

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_b
    const/4 v0, 0x1

    .line 512
    .end local v13    # "tagName":Ljava/lang/String;
    :goto_7
    move v8, v0

    move-object/from16 v0, v17

    goto/16 :goto_1

    .line 485
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_c
    move-object/from16 v17, v0

    move v0, v8

    .line 483
    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :goto_8
    move v8, v0

    move-object/from16 v0, v17

    goto/16 :goto_1

    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_d
    move-object/from16 v17, v0

    .line 517
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "outerDepth":I
    :cond_e
    if-eqz v4, :cond_f

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 519
    :cond_f
    return-void

    .line 470
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_10
    move-object/from16 v17, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with device-admin tag"

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v0

    .line 455
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No android.app.device_admin meta-data"

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create context for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/admin/DeviceAdminInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_9
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 518
    :cond_12
    throw v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 435
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    .line 525
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public whitelist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 580
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 588
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermissions()I
    .locals 1

    .line 758
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    return v0
.end method

.method public whitelist getReceiverName()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTagForPolicy(I)Ljava/lang/String;
    .locals 1
    .param p1, "policyIdent"    # I

    .line 680
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getUsedPolicies()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 695
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 696
    .local v2, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v3, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public whitelist isVisible()Z
    .locals 1

    .line 652
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 627
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 644
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 606
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readPoliciesFromXml(Landroid/util/TypedXmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 713
    return-void
.end method

.method public blacklist setPermissions(I)V
    .locals 0
    .param p1, "val"    # I

    .line 762
    iput p1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    .line 763
    return-void
.end method

.method public whitelist supportsTransferOwnership()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist usesPolicy(I)Z
    .locals 4
    .param p1, "policyIdent"    # I

    .line 667
    const/4 v0, 0x0

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    .line 668
    return v0

    .line 671
    :cond_0
    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    const/4 v2, 0x1

    shl-int v3, v2, p1

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public blacklist writePoliciesToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 3
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    const/4 v1, 0x0

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 732
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mSupportsTransferOwnership:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 735
    return-void
.end method
