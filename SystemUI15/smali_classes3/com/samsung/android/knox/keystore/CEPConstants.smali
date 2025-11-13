.class public Lcom/samsung/android/knox/keystore/CEPConstants;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CEP_ACTION_CERT_ENROLL_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.CEP_CERT_ENROLL_STATUS"

.field public static final CEP_ACTION_SERVICE_DISCONNECTED:Ljava/lang/String; = "com.samsung.android.knox.intent.CEP_SERVICE_DISCONNECTED"

.field public static final CEP_KEYALGO_TYPE_RSA:Ljava/lang/String; = "RSA"

.field public static final CEP_KEYSTORETYPE_ANDROID:Ljava/lang/String; = "ANDROID"

.field public static final CEP_KEYSTORETYPE_CCM:Ljava/lang/String; = "CCM"

.field public static final CEP_KEYSTORETYPE_UCM:Ljava/lang/String; = "UCM"

.field public static final CEP_TLV_CLEAR_CHALLENGE_PASSWORD:I = 0x0

.field public static final CEP_TLV_ENCRYPTED_CHALLENGE_PASSWORD:I = 0x1

.field public static final CEP_TLV_ENCRYPTED_DATA:I = 0x2

.field public static final CEP_TLV_ENCRYPTED_KEY:I = 0x3

.field public static final CERT_PROFILE_TYPE_CMC:Ljava/lang/String; = "CMC"

.field public static final CERT_PROFILE_TYPE_CMP:Ljava/lang/String; = "CMP"

.field public static final CERT_PROFILE_TYPE_SCEP:Ljava/lang/String; = "SCEP"

.field public static final CERT_SUCCESS:I = 0x0

.field public static final ERR_ALIAS_EXIST:I = -0x135

.field public static final ERR_CCM:I = -0x133

.field public static final ERR_CCM_NOT_SUPPORTED:I = -0x134

.field public static final ERR_CERT_FAILURE:I = -0x1

.field public static final ERR_CERT_NOT_FOUND:I = -0x190

.field public static final ERR_CERT_PENDING:I = 0x1

.field public static final ERR_CERT_VERIFICATION_FAILURE:I = -0x191

.field public static final ERR_CHALLENGE_PASSWORD_EXPIRED:I = -0x12f

.field public static final ERR_INVALID_CA_CERT:I = -0x130

.field public static final ERR_KEYLOCK_NOT_SET:I = -0x1f8

.field public static final ERR_KEYSTORE_EXCEPTION:I = -0x1f5

.field public static final ERR_MISSING_INPUTFIELDS:I = -0x131

.field public static final ERR_NETWORK_UNAVAILABLE:I = -0x2

.field public static final ERR_OPERATION_NOT_SUPPORTED:I = -0x25a

.field public static final ERR_SERVICE_BIND_FAILED:I = -0x259

.field public static final ERR_TLV_DECODE_FAILURE:I = -0x12d

.field public static final ERR_TRANSACTIONID_NOTFOUND:I = -0x132

.field public static final ERR_UCM:I = -0x137

.field public static final ERR_UCM_INPUT_INVALID:I = -0x136

.field public static final ERR_UCM_PACKAGE_NOT_WHITELISTED:I = -0x138

.field public static final ERR_UNKNOWN:I = -0x3

.field public static final EXTRA_ENROLL_ALIAS:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.ALIAS"

.field public static final EXTRA_ENROLL_CERT_HASH:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.CERT_HASH"

.field public static final EXTRA_ENROLL_KEYSTORE_TYPE:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.KEYSTORE_TYPE"

.field public static final EXTRA_ENROLL_REFERENCE_NUMBER:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.REFERENCE_NUMBER"

.field public static final EXTRA_ENROLL_STATUS:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.STATUS"

.field public static final EXTRA_ENROLL_TRANSACTION_ID:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.TRANSACTION_ID"

.field public static final EXTRA_SERVICE_PROTOCOL:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.SERVICE_PROTOCOL"

.field public static final EXTRA_SERVICE_USERID:Ljava/lang/String; = "com.samsung.extra.knox.certenroll.SERVICE_USERID"

.field public static final SERVICE_BIND_SUCCESS:I = -0x258


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
