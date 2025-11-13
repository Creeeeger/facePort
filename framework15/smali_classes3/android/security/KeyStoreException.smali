.class public Landroid/security/KeyStoreException;
.super Ljava/lang/Exception;
.source "KeyStoreException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStoreException$PublicErrorInformation;,
        Landroid/security/KeyStoreException$RetryPolicy;,
        Landroid/security/KeyStoreException$PublicErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_ATTESTATION_CHALLENGE_TOO_LARGE:I = 0x9

.field public static final whitelist ERROR_ATTESTATION_KEYS_UNAVAILABLE:I = 0x10

.field public static final blacklist ERROR_DEVICE_REQUIRES_UPGRADE_FOR_ATTESTATION:I = 0x11

.field public static final whitelist ERROR_ID_ATTESTATION_FAILURE:I = 0x8

.field public static final whitelist ERROR_INCORRECT_USAGE:I = 0xd

.field public static final whitelist ERROR_INTERNAL_SYSTEM_ERROR:I = 0x4

.field public static final whitelist ERROR_KEYMINT_FAILURE:I = 0xa

.field public static final whitelist ERROR_KEYSTORE_FAILURE:I = 0xb

.field public static final whitelist ERROR_KEYSTORE_UNINITIALIZED:I = 0x3

.field public static final whitelist ERROR_KEY_CORRUPTED:I = 0x7

.field public static final whitelist ERROR_KEY_DOES_NOT_EXIST:I = 0x6

.field public static final whitelist ERROR_KEY_NOT_TEMPORALLY_VALID:I = 0xe

.field public static final whitelist ERROR_KEY_OPERATION_EXPIRED:I = 0xf

.field public static final whitelist ERROR_OTHER:I = 0x1

.field public static final whitelist ERROR_PERMISSION_DENIED:I = 0x5

.field public static final whitelist ERROR_UNIMPLEMENTED:I = 0xc

.field public static final whitelist ERROR_USER_AUTHENTICATION_REQUIRED:I = 0x2

.field private static final blacklist GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist GENERAL_KEYSTORE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist IS_SYSTEM_ERROR:I = 0x2

.field private static final blacklist IS_TRANSIENT_ERROR:I = 0x4

.field private static final blacklist KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist KEYMINT_TEMPORAL_VALIDITY_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist REQUIRES_USER_AUTHENTICATION:I = 0x8

.field public static final whitelist RETRY_AFTER_NEXT_REBOOT:I = 0x4

.field public static final whitelist RETRY_NEVER:I = 0x1

.field public static final whitelist RETRY_WHEN_CONNECTIVITY_AVAILABLE:I = 0x3

.field public static final whitelist RETRY_WITH_EXPONENTIAL_BACKOFF:I = 0x2

.field public static final blacklist RKP_FETCHING_PENDING_CONNECTIVITY:I = 0x3

.field public static final blacklist RKP_FETCHING_PENDING_SOFTWARE_REBOOT:I = 0x4

.field public static final blacklist RKP_SERVER_REFUSED_ISSUANCE:I = 0x2

.field public static final blacklist RKP_SUCCESS:I = 0x0

.field public static final blacklist RKP_TEMPORARILY_UNAVAILABLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreException"

.field private static final blacklist sErrorCodeToFailureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/security/KeyStoreException$PublicErrorInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mErrorCode:I

.field private final blacklist mRkpStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    new-instance v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v0, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    new-instance v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v0, Landroid/security/KeyStoreException;->GENERAL_KEYSTORE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    new-instance v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-direct {v0, v4, v3}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v0, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    new-instance v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v0, Landroid/security/KeyStoreException;->KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    new-instance v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v5, 0xd

    invoke-direct {v0, v1, v5}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v0, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    new-instance v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v5, 0xe

    invoke-direct {v0, v1, v5}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v0, Landroid/security/KeyStoreException;->KEYMINT_TEMPORAL_VALIDITY_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, -0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_TEMPORAL_VALIDITY_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_TEMPORAL_VALIDITY_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v7, 0x8

    invoke-direct {v6, v7, v4}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x1b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x1c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v8, 0xf

    invoke-direct {v6, v3, v8}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x1d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x1f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x21

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x23

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x24

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x25

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x26

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x27

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x29

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x2d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x2e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x2f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x30

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x31

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x33

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x34

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x35

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x36

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x37

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x38

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x39

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x3a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x3b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x3d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x3f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v6, v4, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x41

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v6, v4, v7}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x43

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x45

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x47

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x48

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v6, v2, v4}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x49

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x4a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x4b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x4c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x4d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x4e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x4f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x51

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x52

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x53

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x54

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x55

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, -0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v6, v4, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v2, -0x3a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v2, -0x3a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v5, v7, v4}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v6, v4, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v6, v4, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/4 v8, 0x5

    invoke-direct {v6, v1, v8}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v8, v1, v3}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v7, v1, v5}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v7, v1, v3}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v7, 0x10

    invoke-direct {v6, v4, v7}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v6, v3, v5}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v5, v3, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v2, v3, v7}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v2, v3, v7}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v2, v4, v7}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {p1}, Landroid/security/KeyStoreException;->initializeRkpStatusForRegularErrors(I)I

    move-result v0

    iput v0, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    iput p3, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Providing RKP status for error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no effect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyStoreException"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (internal Keystore code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {p1}, Landroid/security/KeyStoreException;->initializeRkpStatusForRegularErrors(I)I

    move-result v0

    iput v0, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    return-void
.end method

.method private static blacklist getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;
    .locals 2

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-lez p0, :cond_1

    sget-object v1, Landroid/security/KeyStoreException;->GENERAL_KEYSTORE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    return-object v1

    :cond_1
    sget-object v1, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    return-object v1
.end method

.method public static blacklist hasFailureInfoForError(I)Z
    .locals 2

    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist initializeRkpStatusForRegularErrors(I)I
    .locals 2

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    const-string v0, "KeyStoreException"

    const-string v1, "RKP error code without RKP status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    return v0
.end method

.method public whitelist getNumericErrorCode()I
    .locals 2

    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->errorCode:I

    return v1
.end method

.method public whitelist getRetryPolicy()I
    .locals 6

    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    packed-switch v1, :pswitch_data_0

    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_0

    move v3, v4

    goto :goto_0

    :pswitch_0
    return v5

    :pswitch_1
    return v2

    :pswitch_2
    return v3

    :pswitch_3
    return v4

    :cond_0
    nop

    :goto_0
    return v3

    :cond_1
    iget v1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    packed-switch v1, :pswitch_data_1

    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    move v3, v4

    goto :goto_1

    :pswitch_4
    return v2

    :pswitch_5
    return v5

    :cond_2
    nop

    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist isSystemError()Z
    .locals 2

    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isTransientFailure()Z
    .locals 5

    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    const/16 v4, 0x16

    if-ne v1, v4, :cond_0

    iget v1, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    return v2

    :cond_0
    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist requiresUserAuthentication()Z
    .locals 2

    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, " (public error code: %d internal Keystore code: %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
