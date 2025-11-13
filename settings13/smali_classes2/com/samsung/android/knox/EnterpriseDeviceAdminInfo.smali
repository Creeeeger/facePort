.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNewToOldPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldToNewPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final timaversion:Z


# instance fields
.field mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

.field mIsPseudoAdmin:Z

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUsesPolicies:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string/jumbo v0, "ro.config.timaversion"

    const-string v1, "0"

    .line 90
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->timaversion:Z

    .line 885
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 886
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 894
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 1216
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x16

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const v4, 0x1040a42

    const v5, 0x104091a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x17

    const-string v3, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const v4, 0x1040a45

    const v5, 0x104091d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x18

    const-string v3, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    const v4, 0x1040a51

    const v5, 0x1040929

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x19

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const v4, 0x1040a5c

    const v5, 0x1040934

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1a

    const-string v3, "com.samsung.android.knox.permission.KNOX_ROAMING"

    const v4, 0x1040a71

    const v5, 0x104094d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1b

    const-string v3, "com.samsung.android.knox.permission.KNOX_WIFI"

    const v4, 0x1040a83

    const v5, 0x104095f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1c

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const v4, 0x1040a78

    const v5, 0x1040954

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1d

    const-string v3, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    const v4, 0x1040a60

    const v5, 0x1040938

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1e

    const-string v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const v4, 0x1040a70

    const v5, 0x104094c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1f

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const v4, 0x1040a6a

    const v5, 0x1040946

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x20

    const-string v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const v4, 0x1040a55

    const v5, 0x104092d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x21

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN"

    const v4, 0x1040a82

    const v5, 0x104095e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x22

    const-string v3, "com.samsung.android.knox.permission.KNOX_APN"

    const v4, 0x1040a40

    const v5, 0x1040918

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x23

    const-string v3, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const v4, 0x1040a6c

    const v5, 0x1040948

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x24

    const-string v3, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const v6, 0x1040a48

    const v7, 0x1040920

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x35

    const-string v3, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const v6, 0x1040a47

    const v7, 0x104091f

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x25

    const-string v3, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const v6, 0x1040a4f

    const v7, 0x1040927

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x36

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const v6, 0x1040a32

    const v7, 0x104090a

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x37

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const v6, 0x1040a2b

    const v7, 0x1040903

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x26

    const-string v3, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const v6, 0x1040a5d

    const v7, 0x1040935

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x27

    const-string v3, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const v6, 0x1040a56

    const v7, 0x104092e

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x28

    const-string v3, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const v6, 0x1040a6f

    const v7, 0x104094b

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x29

    const-string v3, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const v6, 0x1040a63

    const v7, 0x104093b

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2a

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const v6, 0x1040a4c

    const v7, 0x1040924

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2b

    const-string v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const v6, 0x1040a44

    const v7, 0x104091c

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x30

    const-string v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    const v6, 0x1040a57

    const v7, 0x104092f

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2c

    const-string v3, "com.samsung.android.knox.permission.KNOX_LDAP"

    const v6, 0x1040a68

    const v7, 0x1040940

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2e

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const v6, 0x1040a69

    const v7, 0x1040941

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2f

    const-string v3, "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    const v6, 0x1040a53

    const v7, 0x104092b

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x43

    const-string v3, "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

    const v6, 0x1040a74

    const v7, 0x1040950

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2d

    const-string v3, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const v6, 0x1040a5e

    const v7, 0x1040936

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x31

    const-string v3, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const v6, 0x1040a54

    const v7, 0x104092c

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x32

    const-string v3, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const v6, 0x1040a6b

    const v7, 0x1040947

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x33

    const-string v3, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const v6, 0x1040a46

    const v7, 0x104091e

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6b

    const-string v3, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    const v6, 0x1040a16

    const v7, 0x10408ee

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6a

    const-string v3, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    const v6, 0x1040a7c

    const v7, 0x1040958

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x39

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const v6, 0x1040a66

    const v7, 0x104093e

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x38

    const-string v3, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    const v6, 0x1040a64

    const v7, 0x104093c

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6f

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const v6, 0x1040a50

    const v7, 0x1040928

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3a

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const v6, 0x1040a76

    const v7, 0x1040952

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3b

    const-string v3, "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

    const v6, 0x1040a77

    const v7, 0x1040953

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3c

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const v8, 0x1040a67

    const v9, 0x104093f

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3f

    const-string v3, "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    const v8, 0x1040a2e

    const v9, 0x1040906

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x40

    const-string v3, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    const v8, 0x1040a2f

    const v9, 0x1040907

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x41

    const-string v3, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    const v10, 0x1040a2c

    const v11, 0x1040904

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x46

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x44

    const-string v3, "com.samsung.android.knox.permission.KNOX_EBILLING"

    const v10, 0x1040a17

    const v11, 0x10408ef

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3d

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const v12, 0x1040a4a

    const v13, 0x1040922

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x48

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    const v12, 0x1040a80

    const v13, 0x104095c

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x49

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const v12, 0x1040a81

    const v13, 0x104095d

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4a

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    const v12, 0x1040ace

    const v13, 0x10409a9

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4c

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    const v12, 0x1040a7f

    const v13, 0x104095b

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3e

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const v12, 0x1040a61

    const v13, 0x1040939

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4b

    const-string v3, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const v12, 0x1040a62

    const v13, 0x104093a

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x42

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const v12, 0x1040a75

    const v13, 0x1040951

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x47

    const-string v3, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const v12, 0x1040a72

    const v13, 0x104094e

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4d

    const-string v3, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const v12, 0x1040a5f

    const v13, 0x1040937

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4e

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const v12, 0x1040a4b

    const v13, 0x1040923

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4f

    const-string v3, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const v12, 0x1040a4d

    const v13, 0x1040925

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x50

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const v12, 0x1040a28

    const v13, 0x1040900

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x51

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const v12, 0x1040a29

    const v13, 0x1040901

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x52

    const-string v3, "com.samsung.android.knox.permission.KNOX_NPA"

    const v12, 0x1040a35

    const v13, 0x104090d

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x53

    const-string v3, "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x54

    const-string v3, "com.samsung.android.knox.permission.KNOX_DEX"

    const v10, 0x1040a52

    const v11, 0x104092a

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x55

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x56

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const v8, 0x1040acd

    const v9, 0x10409a8

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x57

    const-string v3, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    const v8, 0x1040a31

    const v9, 0x1040909

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x59

    const-string v3, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x5a

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

    const v4, 0x1040a43

    const v5, 0x104091b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x5b

    const-string v3, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    const v4, 0x1040a7b

    const v5, 0x1040957

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6e

    const-string v3, "com.samsung.android.knox.permission.KNOX_HDM"

    const v4, 0x1040a33

    const v5, 0x104090b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x70

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    const v4, 0x1040a27

    const v5, 0x10408ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x71

    const-string v3, "com.samsung.android.knox.permission.SMART_SCAN"

    const v4, 0x1040a2a

    const v5, 0x1040902

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x72

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6d

    const-string v3, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const v6, 0x1040a30

    const v7, 0x1040908

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x73

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

    const v6, 0x1040a90

    const v7, 0x104096c

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x74

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

    const v6, 0x1040a13

    const v7, 0x10408eb

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x75

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

    const v6, 0x1040a12

    const v7, 0x10408ea

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x76

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_AI"

    const v6, 0x1040a38

    const v7, 0x1040910

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x77

    const-string v3, "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x78

    const-string v3, "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x79

    const-string v3, "com.samsung.android.knox.permission.KNOX_MPOS"

    const v4, 0x1040a34

    const v5, 0x104090c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 1743
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1744
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 1745
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1746
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-object v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1749
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1750
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v5

    aget-object v2, v2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2102
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 1809
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 1810
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 1811
    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 1813
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1814
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 1819
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 1820
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 1822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    return-void
.end method

.method private readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 3

    .line 2091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 2092
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 1

    .line 2084
    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, -0x1

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 2085
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 2086
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 1934
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1941
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1912
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NonExist"

    :goto_0
    return-object p0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 2025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2026
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2027
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2029
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2030
    new-instance v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v5, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    .line 2031
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v6, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v7, v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    .line 2032
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v8, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    .line 2033
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2036
    :cond_0
    :goto_1
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 2037
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 2038
    iget v3, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2039
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1967
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1976
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    .line 1957
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public parseRequestedPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "EnterpriseDeviceAdminInfo"

    const-string v1, ","

    .line 2121
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    .line 2125
    :try_start_0
    new-instance v4, Landroid/content/res/AssetManager;

    invoke-direct {v4}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2126
    :try_start_1
    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v6, "AndroidManifest.xml"

    .line 2128
    invoke-virtual {v4, v5, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    goto :goto_2

    .line 2130
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed adding asset path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v4, v3

    .line 2133
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_2

    if-eqz v4, :cond_1

    .line 2137
    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    :cond_1
    return-object v3

    .line 2141
    :cond_2
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2142
    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2146
    :try_start_2
    new-instance v8, Landroid/content/res/Resources;

    invoke-direct {v8, v4, v5, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 2150
    :goto_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v9, 0x2

    if-eq v5, v9, :cond_3

    if-eq v5, v7, :cond_3

    goto :goto_3

    .line 2155
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v3

    .line 2156
    :cond_4
    :goto_4
    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    if-eq v10, v7, :cond_a

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 2157
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v5, :cond_a

    :cond_5
    if-eq v10, v11, :cond_4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    goto :goto_4

    .line 2162
    :cond_6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string/jumbo v11, "uses-permission"

    .line 2163
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2164
    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v8, v2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2171
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2176
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 2178
    :cond_7
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2179
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_8
    move-object v11, v10

    .line 2181
    :goto_5
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_9

    .line 2183
    iget-object v12, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/util/BitSet;->set(I)V

    if-eqz v10, :cond_9

    .line 2185
    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 2186
    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2195
    :cond_9
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :cond_a
    if-eqz v9, :cond_b

    goto :goto_7

    :catch_2
    move-exception v5

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :catch_3
    move-exception v5

    move-object v9, v3

    .line 2200
    :goto_6
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_b

    .line 2203
    :goto_7
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2205
    :cond_b
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v4, :cond_c

    .line 2207
    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    .line 2210
    :cond_c
    invoke-static {v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v2

    .line 2211
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2213
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 2214
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2216
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2219
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 2221
    :cond_e
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_f
    move-object v4, v3

    .line 2224
    :goto_9
    sget-object v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    .line 2227
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v9, v6

    .line 2228
    :goto_a
    array-length v10, v8

    if-ge v9, v10, :cond_11

    .line 2229
    aget-object v10, v8, v9

    iget-object v11, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_10

    move v8, v7

    goto :goto_b

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_11
    move v8, v6

    :goto_b
    if-eqz v8, :cond_d

    .line 2236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add Granted permission : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 2238
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2239
    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_8

    :catch_4
    const-string p1, "Failed to get ELM permissions"

    .line 2246
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_12
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object p0

    :catchall_1
    move-exception p0

    move-object v3, v9

    :goto_c
    if-eqz v3, :cond_13

    .line 2203
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2204
    :cond_13
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2064
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public usesPolicy(I)Z
    .locals 1

    .line 1995
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1998
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2001
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 2074
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2076
    iget-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2078
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
