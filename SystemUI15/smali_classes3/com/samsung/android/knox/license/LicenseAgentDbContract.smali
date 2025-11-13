.class public Lcom/samsung/android/knox/license/LicenseAgentDbContract;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final COLUMN_ACTIVATION_TS:Ljava/lang/String; = "TIME"

.field public static final COLUMN_LICENSE_KEY:Ljava/lang/String; = "LICENSE_KEY"

.field public static final COLUMN_LICENSE_STATUS:Ljava/lang/String; = "LICENSE_STATUS"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field public static final COLUMN_PRODUCT_TYPE:Ljava/lang/String; = "PRODUCT_TYPE"

.field public static final COLUMN_SKU:Ljava/lang/String; = "SKU"

.field public static final DB_URI:Landroid/net/Uri;

.field public static final DEFAULT_PROJECTION:[Ljava/lang/String;

.field public static final DEVICE_OWNER_REMOVED:Ljava/lang/String; = "DeviceOwnerRemoved"

.field public static final DUMP_STARTED:Ljava/lang/String; = "dumpStarted"

.field public static final ELM_REGISTRATION_INTERNAL:Ljava/lang/String; = "ELMRegistrationInternal"

.field public static final GET_ACTIVATION_METHOD:Ljava/lang/String; = "getActivations"

.field public static final GET_ALL_ACTIVATIONS_METHOD:Ljava/lang/String; = "getAllActivations"

.field public static final IS_EULA_ACCEPTED_ON_DEVICE:Ljava/lang/String; = "IsEulaAcceptedOnDevice"

.field public static final KLM_DEACTIVATION_INTERNAL:Ljava/lang/String; = "KLMDeactivationInternal"

.field public static final KLM_REGISTRATION_INTERNAL:Ljava/lang/String; = "KLMRegistrationInternal"

.field public static final LICENSE_VALIDATION_INTERNAL:Ljava/lang/String; = "licenseValidationInternal"

.field public static final PACKAGE_NAME_REMOVED:Ljava/lang/String; = "packageName"

.field public static final PACKAGE_REMOVED_INTERNAL:Ljava/lang/String; = "packageRemovedInternal"

.field public static final PROFILE_OWNER_REMOVED:Ljava/lang/String; = "ProfileOwnerRemoved"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "content://com.samsung.klmsagent.provider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DB_URI:Landroid/net/Uri;

    const-string v5, "PRODUCT_TYPE"

    const-string v6, "TIME"

    const-string v1, "PACKAGE_NAME"

    const-string v2, "LICENSE_STATUS"

    const-string v3, "LICENSE_KEY"

    const-string v4, "SKU"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
