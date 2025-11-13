.class public abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.super Landroid/app/Service;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_UCM_PLUGIN_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_PLUGIN_STATUS"

.field public static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final AID:Ljava/lang/String; = "aid"

.field public static final ALIASES:Ljava/lang/String; = "aliases"

.field public static final ALLOWED_PACKAGES:Ljava/lang/String; = "allowed_packages"

.field public static final ALLOW_ALL:I = 0x1

.field public static final API_FAILED:I = -0x1

.field public static final API_RESULT:Ljava/lang/String; = "api_result"

.field public static final API_SUCCESS:I = 0x0

.field public static final AUTH_ALPHA_NUMERIC:I = 0x1

.field public static final AUTH_MAX_COUNT:Ljava/lang/String; = "maxAuthCnt"

.field public static final AUTH_MODE:Ljava/lang/String; = "authMode"

.field public static final AUTH_NUMERIC:I = 0x0

.field public static final AUTH_UNKNOWN:I = -0x1

.field public static final BLOCK_ALL:I = 0x2

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_APPLET_INSTALLATION_STATUS:Ljava/lang/String; = "applet_installation_status"

.field public static final BUNDLE_EXTRA_ESE_CHIP_VENDOR:Ljava/lang/String; = "applet_ese_chip_vendor"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final CS_NAME:Ljava/lang/String; = "csName"

.field public static final ERROR_ALIAS_NOT_FOUND:I = 0x11

.field public static final ERROR_APDU_CREATION:I = 0x1000100

.field public static final ERROR_APPLET_INSTALLATION:I = 0x9000000

.field public static final ERROR_APPLET_INSTALL_LOCATION:I = 0x19

.field public static final ERROR_APPLET_MAX_ERROR_CODE:I = 0x8010000

.field public static final ERROR_APPLET_UNKNOWN:I = 0x8000000

.field public static final ERROR_BAD_APPLET_RESPONSE:I = 0x1000200

.field public static final ERROR_BAD_PADDING_EXCEPTION:I = 0x10b

.field public static final ERROR_CANNOT_CHANGE_ODE_CONFIGURATION:I = 0xc000300

.field public static final ERROR_CERTFACTORY_INSTANCE_NOT_FOUND:I = 0xc

.field public static final ERROR_CERTIFICATE_ENCODING_EXCEPTION:I = 0x106

.field public static final ERROR_CERTIFICATE_EXCEPTION:I = 0x105

.field public static final ERROR_CIPHER_INSTANCE_NOT_FOUND:I = 0xb

.field public static final ERROR_CORRUPTED_CS_RESPONSE:I = 0x17

.field public static final ERROR_CREDENTIAL_STORAGE_ACCESS_DENIED_BY_ADMIN_POLICY:I = 0xf

.field public static final ERROR_CRYPTO_ENGINE_EXCEPTION:I = 0x101

.field public static final ERROR_DATABASE_COMPROMISED:I = 0x26

.field public static final ERROR_EMPTY_CERTIFICATE_CHAIN:I = 0x9

.field public static final ERROR_EMPTY_PARAMETER:I = 0x10

.field public static final ERROR_ESECOMM_TRANSMIT_FAILURE:I = 0x15

.field public static final ERROR_FAILED_TO_GET_READER_FOR_STORAGE:I = 0x2000502

.field public static final ERROR_FILE_NOT_FOUND_EXCEPTION:I = 0x10e

.field public static final ERROR_GET_READERS_ILLEGAL_STATE_EXCEPTION:I = 0x2000102

.field public static final ERROR_GET_READERS_NULL_POINTER_EXCEPTION:I = 0x2000101

.field public static final ERROR_ILLEGAL_BLOCK_SIZE_EXCEPTION:I = 0x10c

.field public static final ERROR_INCORRECT_CARD:I = 0x24

.field public static final ERROR_INCORRECT_PIN:I = 0x20

.field public static final ERROR_INCORRECT_PUK:I = 0x21

.field public static final ERROR_INTERNAL_COMMUNICATION:I = 0x1000400

.field public static final ERROR_INTERNAL_UCM_FRMWK_END:I = 0x1fff

.field public static final ERROR_INTERNAL_UCM_FRMWK_START:I = 0x1000

.field public static final ERROR_INVALID_ALGORTHM_PARAMETER_EXCEPTION:I = 0x103

.field public static final ERROR_INVALID_INPUT:I = 0x4

.field public static final ERROR_INVALID_KEY_SPEC_EXCEPTION:I = 0x107

.field public static final ERROR_INVALID_ODE_CONFIGURATION:I = 0xc000200

.field public static final ERROR_IO_EXCEPTION:I = 0x10d

.field public static final ERROR_KEYSTORE_ENTRY_NOT_FOUND:I = 0x8

.field public static final ERROR_KEYSTORE_EXCEPTION:I = 0x10a

.field public static final ERROR_KEYSTORE_TYPE:I = 0x7

.field public static final ERROR_MISSING_DEPENDENCY:I = 0x25

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NON_UCS_PLUGINSPI:I = 0x13

.field public static final ERROR_NO_ADAPTER_FOUND:I = 0x18

.field public static final ERROR_NO_ADAPTER_RESPONSE:I = 0x14

.field public static final ERROR_NO_PLUGIN_AGENT_FOUND:I = 0xe

.field public static final ERROR_NO_PLUGIN_RESPONSE:I = 0xd

.field public static final ERROR_NO_SESSION_AVAILABLE:I = 0x2000501

.field public static final ERROR_NO_SUCH_ALGORITHM_EXCEPTION:I = 0x102

.field public static final ERROR_NO_SUCH_PROVIDER_EXCEPTION:I = 0x108

.field public static final ERROR_OMA_TRANSMIT_FAILURE:I = 0x16

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000303

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_STATE_EXCEPTION:I = 0x2000302

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_IO_EXCEPTION:I = 0x2000301

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_NO_SUCH_ELEMENT_EXCEPTION:I = 0x2000305

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_SECURITY_EXCEPTION:I = 0x2000304

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_UNKNOWN:I = 0x2000306

.field public static final ERROR_OPEN_SESSION_IO_EXCEPTION:I = 0x2000201

.field public static final ERROR_OUT_OF_BOUND:I = 0x6

.field public static final ERROR_PLUGIN_ALREADY_USED:I = 0x22

.field public static final ERROR_PRIVATEKEY_ENTRY_NOT_FOUND:I = 0xa

.field public static final ERROR_SCP_CREATE_CHANNEL_FAILED:I = 0x3000003

.field public static final ERROR_SCP_DECRYPTION_FAILED:I = 0x3000002

.field public static final ERROR_SCP_ENCRYPTION_FAILED:I = 0x3000001

.field public static final ERROR_SCP_NULL_RESPONSE_RECV:I = 0x3000004

.field public static final ERROR_SCP_UNKNOWN:I = 0x3000000

.field public static final ERROR_SHORT_BUFFER_EXCEPTION:I = 0x104

.field public static final ERROR_SIGNATURE_EXCEPTION:I = 0x110

.field public static final ERROR_SMARTCARD_UNAVAILABLE:I = 0x1000300

.field public static final ERROR_STORAGE_FULL:I = 0x5

.field public static final ERROR_TRANSMIT_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000403

.field public static final ERROR_TRANSMIT_ILLEGAL_STATE_EXCEPTION:I = 0x2000402

.field public static final ERROR_TRANSMIT_IO_EXCEPTION:I = 0x2000401

.field public static final ERROR_TRANSMIT_NULL_POINTER_EXCEPTION:I = 0x2000405

.field public static final ERROR_TRANSMIT_SECURITY_EXCEPTION:I = 0x2000404

.field public static final ERROR_TRANSMIT_UNKNOWN:I = 0x2000406

.field public static final ERROR_UNDEFINED_EXCEPTION:I = 0x10f

.field public static final ERROR_UNKNOWN:I = 0x12

.field public static final ERROR_UNREADABLE_ODE_CONFIGURATION:I = 0xc000100

.field public static final ERROR_UNRECOVERABLE_KEY_EXCEPTION:I = 0x109

.field public static final ERROR_UNRECOVERABLE_STATE:I = 0x23

.field public static final ERROR_UNSUPPORTED_ALGORITHM:I = 0x2

.field public static final ERROR_UNSUPPORTED_OPERATION:I = 0x3

.field public static final ERROR_UNSUPPORTED_PARAMETER:I = 0x1

.field public static final EVENT_ADMIN_LICENSE_EXPIRED:I = 0xd

.field public static final EVENT_ADMIN_LICENSE_RENEWED:I = 0xe

.field public static final EVENT_BOOT_COMPLETED:I = 0x11

.field public static final EVENT_CONTAINER_LOCKED:I = 0x14

.field public static final EVENT_CONTAINER_UNLOCKED:I = 0x15

.field public static final EVENT_DEVICE_LOCKED:I = 0xf

.field public static final EVENT_DEVICE_UNLOCKED:I = 0x10

.field public static final EVENT_FACTORY_RESET:I = 0x65

.field public static final EVENT_KEYGUARD_SET:I = 0x12

.field public static final EVENT_KEYGUARD_UNSET:I = 0x13

.field public static final EVENT_PACKAGE_UNINSTALL:I = 0xc

.field public static final EVENT_PLUGIN_UNMANAGED:I = 0xa

.field public static final EVENT_SHUTDOWN:I = 0x16

.field public static final EVENT_USER_REMOVED:I = 0xb

.field private static KEY_EXTRA_AAD:Ljava/lang/String; = "extra_aad"

.field private static KEY_EXTRA_IV:Ljava/lang/String; = "extra_iv"

.field private static KEY_EXTRA_TAG_LEN:Ljava/lang/String; = "extra_tag_length"

.field public static final LOCKSCREEN_MESSAGE:Ljava/lang/String; = "lockscreen_message"

.field public static final LOCK_STATE:Ljava/lang/String; = "state"

.field public static final MAX_PIN_LENGTH:Ljava/lang/String; = "maxPinLength"

.field public static final MAX_PUK_LENGTH:Ljava/lang/String; = "maxPukLength"

.field public static final MIN_PIN_LENGTH:Ljava/lang/String; = "minPinLength"

.field public static final MIN_PUK_LENGTH:Ljava/lang/String; = "minPukLength"

.field public static final MISC_INFO:Ljava/lang/String; = "miscInfo"

.field public static final PACKAGE_ACCESS_TYPE:Ljava/lang/String; = "package_access_type"

.field public static final PACKAGE_UID:Ljava/lang/String; = "packageUid"

.field public static final PARTIALLY:I = 0x3

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final PLUGIN_BOOLEAN_RESPONSE:Ljava/lang/String; = "booleanresponse"

.field public static final PLUGIN_BUNDLE_RESPONSE:Ljava/lang/String; = "bundleresponse"

.field public static final PLUGIN_BYTEARRAY_RESPONSE:Ljava/lang/String; = "bytearrayresponse"

.field public static final PLUGIN_BYTEARRAY_RESPONSE_2:Ljava/lang/String; = "bytearrayresponse2"

.field public static final PLUGIN_DATA_STRING_RESPONSE:Ljava/lang/String; = "RESPONSE_DATA"

.field public static final PLUGIN_ERROR_CODE:Ljava/lang/String; = "errorresponse"

.field public static final PLUGIN_INT_RESPONSE:Ljava/lang/String; = "intresponse"

.field public static final PLUGIN_KEY_TYPE_PRIVATE:I = 0x2

.field public static final PLUGIN_KEY_TYPE_RESPONSE:Ljava/lang/String; = "keytyperesponse"

.field public static final PLUGIN_KEY_TYPE_SECRET:I = 0x1

.field public static final PLUGIN_KEY_TYPE_UNKNOWN:I = -0x1

.field public static final PLUGIN_PUBLIC_KEY:Ljava/lang/String; = "generatedpublickey"

.field public static final PLUGIN_SECRET_KEY:Ljava/lang/String; = "generatedsecretkey"

.field public static final PLUGIN_STRINGARRAY_RESPONSE:Ljava/lang/String; = "stringarrayresponse"

.field public static final PLUGIN_STRING_RESPONSE:Ljava/lang/String; = "stringresponse"

.field public static final PLUGIN_TOASTMSG_RESPONSE:Ljava/lang/String; = "toastmessageresponse"

.field public static final REMAIN_COUNT:Ljava/lang/String; = "remainCnt"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final SCP_TYPE:Ljava/lang/String; = "scptype"

.field public static final STATE_BLOCKED:I = 0x85

.field public static final STATE_LOCKED:I = 0x84

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNLOCKED:I = 0x83

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final STORAGE_TYPE:Ljava/lang/String; = "storagetype"

.field public static final SUPPORTS_ODE:Ljava/lang/String; = "supportsode"

.field private static final TAG:Ljava/lang/String; = "UcmAgentService"

.field public static final TA_COMMAND_ID:Ljava/lang/String; = "tacommandid"

.field public static final TA_DATA:Ljava/lang/String; = "tadata"

.field public static final TA_DATA_LENGTH:Ljava/lang/String; = "tadatalength"

.field public static final TA_ERROR_CODE:Ljava/lang/String; = "taerrorcode"

.field public static final TA_ERROR_DESCRIPTION:Ljava/lang/String; = "taerrordescription"

.field public static final TA_MAGIC_NUMBER:Ljava/lang/String; = "tamagicnumber"

.field public static final TA_VERSION:Ljava/lang/String; = "taversion"

.field public static final USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field private mProvider:Ljava/security/Provider;


# direct methods
.method public static bridge synthetic -$$Nest$mdecrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mencrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mencrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgenerateKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateKey(Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgenerateKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgenerateSecureRandom(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCertificateChain(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetKeyType(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mimportKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mimportKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minstallCertificateIfSupported(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmac(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mac(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaw(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msign(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    return-void
.end method

.method private final decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "bytearrayresponse"

    const-string v7, "/"

    const-string v8, "errorresponse"

    const-string v9, "decrypt. base algorithm = "

    const-string v10, "decrypt"

    const-string v11, "UcmAgentService"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x10

    if-nez v5, :cond_0

    const-string v2, "decrypt. property is null"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v12, "decrypt "

    const-string v13, ",uid: "

    invoke-static {v12, v2, v13}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "callerUid"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", caller: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "data length "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v3

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v14, "KNOX"

    iget-object v15, v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v14, v15}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v15, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v13, "ownerUid"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v12, "resource"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_33
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_32
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_31
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_27

    move-object/from16 v16, v8

    :try_start_1
    const-string v8, "extraArgs"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v15, v13, v12, v8}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v8, 0x0

    invoke-virtual {v14, v2, v8}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_25
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_20
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1a

    if-nez v2, :cond_2

    :try_start_2
    const-string v2, "decrypt. getEntry null "

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v2

    :goto_0
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_18

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_19

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_1b

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_1c

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_1d

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_1e

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_1f

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_20

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_21

    :cond_2
    :try_start_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aget-object v8, v8, v12

    iget-object v12, v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v4, v12}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_25
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_22
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1a

    const/16 v13, 0xa

    if-nez v9, :cond_9

    :try_start_4
    const-string v9, "AES"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_4

    :cond_3
    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "decrypt. getSecretKey null"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v13

    :goto_1
    invoke-direct {v1, v13}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_5
    const-string v1, "GCM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v8, Ljavax/crypto/spec/GCMParameterSpec;

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_TAG_LEN:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v8, v4, v7}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    :goto_2
    const/4 v4, 0x2

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_IV:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v8, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v12, v4, v2, v8}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->updateAAD([B)V

    :cond_8
    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :cond_9
    :goto_4
    :try_start_5
    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_5 .. :try_end_5} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_23
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1a

    if-nez v2, :cond_b

    :try_start_6
    const-string v2, "decrypt. getPrivateKey null"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v13

    :goto_5
    invoke-direct {v1, v13}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    :cond_b
    const/4 v1, 0x2

    :try_start_7
    invoke-virtual {v12, v1, v2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object v1

    :goto_6
    invoke-virtual {v10, v6, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v12}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    move-result v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_25
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_7 .. :try_end_7} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_23
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_21
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_7} :catch_20
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1a

    move-object/from16 v2, v16

    :try_start_8
    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_d

    return-object v10

    :catch_d
    move-exception v0

    :goto_7
    move-object v1, v0

    goto/16 :goto_14

    :catch_e
    move-exception v0

    :goto_8
    move-object v1, v0

    goto/16 :goto_16

    :catch_f
    move-exception v0

    :goto_9
    move-object v1, v0

    goto/16 :goto_17

    :catch_10
    move-exception v0

    :goto_a
    move-object v1, v0

    goto/16 :goto_18

    :catch_11
    move-exception v0

    :goto_b
    move-object v1, v0

    goto/16 :goto_19

    :catch_12
    move-exception v0

    :goto_c
    move-object v1, v0

    goto/16 :goto_1a

    :catch_13
    move-exception v0

    :goto_d
    move-object v1, v0

    goto/16 :goto_1b

    :catch_14
    move-exception v0

    :goto_e
    move-object v1, v0

    goto/16 :goto_1c

    :catch_15
    move-exception v0

    :goto_f
    move-object v1, v0

    goto/16 :goto_1d

    :catch_16
    move-exception v0

    :goto_10
    move-object v1, v0

    goto/16 :goto_1e

    :catch_17
    move-exception v0

    :goto_11
    move-object v1, v0

    goto/16 :goto_1f

    :catch_18
    move-exception v0

    :goto_12
    move-object v1, v0

    goto/16 :goto_20

    :catch_19
    move-exception v0

    :goto_13
    move-object v1, v0

    goto/16 :goto_21

    :catch_1a
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_7

    :catch_1b
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_8

    :catch_1c
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_9

    :catch_1d
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_a

    :catch_1e
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_b

    :catch_1f
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_c

    :catch_20
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_d

    :catch_21
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_e

    :catch_22
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_f

    :catch_23
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_10

    :catch_24
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_11

    :catch_25
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_12

    :catch_26
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_13

    :catch_27
    move-exception v0

    move-object v2, v8

    goto :goto_7

    :catch_28
    move-exception v0

    move-object v2, v8

    goto :goto_8

    :catch_29
    move-exception v0

    move-object v2, v8

    goto :goto_9

    :catch_2a
    move-exception v0

    move-object v2, v8

    goto :goto_a

    :catch_2b
    move-exception v0

    move-object v2, v8

    goto :goto_b

    :catch_2c
    move-exception v0

    move-object v2, v8

    goto :goto_c

    :catch_2d
    move-exception v0

    move-object v2, v8

    goto :goto_d

    :catch_2e
    move-exception v0

    move-object v2, v8

    goto :goto_e

    :catch_2f
    move-exception v0

    move-object v2, v8

    goto :goto_f

    :catch_30
    move-exception v0

    move-object v2, v8

    goto :goto_10

    :catch_31
    move-exception v0

    move-object v2, v8

    goto :goto_11

    :catch_32
    move-exception v0

    move-object v2, v8

    goto :goto_12

    :catch_33
    move-exception v0

    move-object v2, v8

    goto :goto_13

    :goto_14
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const v1, 0x2000402

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_15
    const/4 v1, 0x0

    goto/16 :goto_22

    :goto_16
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 v1, 0x3

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_17
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    const/16 v1, 0x103

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_18
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v1, 0x2

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_19
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 v1, 0x108

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_1a
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const/16 v1, 0x10c

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_1b
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const/16 v1, 0x10b

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_1c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0x10d

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_1d
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 v1, 0x105

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_1e
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 v1, 0x10a

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_1f
    invoke-virtual {v1}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const/16 v1, 0x109

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_20
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const/16 v1, 0x107

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_21
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v1, 0x2

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_15

    :goto_22
    invoke-virtual {v10, v6, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v10

    :cond_c
    const-string v2, "decrypt. data is null"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private final deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "booleanresponse"

    const-string v1, "errorresponse"

    const-string v2, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with error code ks.getErrorStatus() = "

    const-string v3, "deleteKey"

    const-string v4, "UcmAgentService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "deleteKey. property is null"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v3, "deleteKey "

    const-string v5, ", uid: "

    invoke-static {v3, p1, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "callerUid"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v5, 0x10a

    const/4 v6, 0x2

    :try_start_0
    const-string v7, "KNOX"

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v7, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v8, "ownerUid"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "resource"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "extraArgs"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v7, v8, v9, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p0

    goto :goto_5

    :catch_6
    move-exception p0

    goto :goto_6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_1
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_3
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_5
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_6
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_7
    const/4 p0, 0x0

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with EXCEPTION error code  = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private final encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "bytearrayresponse"

    const-string v1, "errorresponse"

    const-string v2, "encrypt"

    const-string v3, "UcmAgentService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10

    if-nez p4, :cond_0

    const-string p1, "encrypt. property is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v4, "encrypt: "

    const-string v5, ", algorithm: "

    const-string v6, ", uid: "

    invoke-static {v4, p1, v5, p3, v6}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callerUid"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "data length "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "KNOX"

    iget-object v7, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v6

    invoke-virtual {v6, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v8, "ownerUid"

    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "resource"

    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "extraArgs"

    invoke-virtual {p4, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v6, p1, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "encrypt. getEntry null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception p0

    goto/16 :goto_6

    :catch_3
    move-exception p0

    goto/16 :goto_7

    :catch_4
    move-exception p0

    goto/16 :goto_8

    :catch_5
    move-exception p0

    goto/16 :goto_9

    :catch_6
    move-exception p0

    goto/16 :goto_a

    :catch_7
    move-exception p0

    goto/16 :goto_b

    :catch_8
    move-exception p0

    goto/16 :goto_c

    :catch_9
    move-exception p0

    goto/16 :goto_d

    :catch_a
    move-exception p0

    goto/16 :goto_e

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0xa

    const/4 v9, 0x1

    if-nez v7, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AES/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "encrypt. getSecretKey null!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v8

    :goto_1
    invoke-direct {p0, v8}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {p0, v9, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "GCM"

    const-string v3, "/"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v9

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->KEY_EXTRA_AAD:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->updateAAD([B)V

    :cond_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object p1

    goto :goto_3

    :cond_6
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "encrypt. getPrivateKey null "

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v8

    :goto_2
    invoke-direct {p0, v8}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p3, "RSA/ECB/PKCS1Padding"

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Cipher;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {p0, v9, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object p1

    :goto_3
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_5
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_6
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_7
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const/16 p0, 0x10c

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_8
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const/16 p0, 0x10b

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_a
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_b
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_c
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const/16 p0, 0x109

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_d
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const/16 p0, 0x107

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    :goto_e
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_f
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2

    :cond_9
    const-string p1, "encrypt. data is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final generateKey(Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const-string v0, "booleanresponse"

    const-string v1, "errorresponse"

    const-string v2, "UCMERRORTESTING: @UcmAgentService responding to generateKey : "

    const-string v3, "generateKey"

    const-string v4, "UcmAgentService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "KeyGenParameterSpec is null"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "generateKey "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "callerUid"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v8, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    if-nez p0, :cond_1

    move p0, v6

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    const/16 p0, 0x103

    invoke-virtual {v3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "bytearrayresponse"

    invoke-virtual {v3, p0, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to generateKey with EXCEPTION error code  = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private final generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15

    move-object/from16 v0, p4

    const-string v1, "bytearrayresponse"

    const-string v2, "errorresponse"

    const-string v3, "generateKeyPair"

    const-string v4, "UcmAgentService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v0, "generateKeyPair. property is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "callerUid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v5, "extraArgs"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v0, "generateKeyPair. options is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    new-instance v14, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v14

    move-object/from16 v6, p1

    move/from16 v7, p3

    move v8, v11

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;IIZII)V

    move-object/from16 v5, p2

    invoke-virtual {v14, v5}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setPurpose(I)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setEcCurveName(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_DIGESTS:Ljava/lang/String;

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setOptions(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->build()Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "generateKeyPair "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/16 v4, 0x103

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    move-object v8, p0

    iget-object v8, v8, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v7, v8}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;)V

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_2
    move-object v0, v6

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v13, v1, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v13

    :cond_3
    const-string v5, "generatedpublickey"

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyPairGenerator;->getErrorStatus()I

    move-result v0

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v13

    :goto_1
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 v0, 0x3

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 v0, 0x108

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_4
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_6
    invoke-virtual {v13, v1, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v13
.end method

.method private final generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "bytearrayresponse"

    const-string v1, "errorresponse"

    const-string v2, "generateSecureRandom"

    const-string v3, "UcmAgentService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "generateSecureRandom. property is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "generateSecureRandom "

    const-string v4, ",uid: "

    invoke-static {p1, v2, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "callerUid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    :try_start_0
    const-string v4, "SHA1PRNG"

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v4, p0}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->generateSeed(I)[B

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/SecureRandom;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    const/4 p0, 0x0

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2
.end method

.method private final getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v0, "bytearrayresponse"

    const-string v1, "errorresponse"

    const-string v2, "getCertificateChain"

    const-string v3, "UcmAgentService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "getCertificateChain. property is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "getCertificateChain "

    const-string v4, ",uid:"

    invoke-static {v2, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "callerUid"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x2

    :try_start_0
    const-string v5, "KNOX"

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v7, "ownerUid"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "resource"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "extraArgs"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v6, v7, v8, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v5, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length p2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_2

    aget-object v6, p1, v3

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_5

    :catch_4
    move-exception p0

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_7

    :catch_6
    move-exception p0

    goto :goto_8

    :catch_7
    move-exception p0

    goto :goto_9

    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_3
    :goto_1
    const-string p1, "getCertificateChain empty"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_3
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_4
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_6
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_7
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_8
    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    const/16 p0, 0x106

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_9
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_a
    const/4 p0, 0x0

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2
.end method

.method private final getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "getKeyType"

    const-string v4, "UcmAgentService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    const-string v0, "getKeyType. property is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "getKeyType: "

    const-string v5, ", uid: "

    invoke-static {v0, v2, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "callerUid"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v0, "stringarrayresponse"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "booleanresponse"

    const/4 v0, 0x0

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v8, -0x1

    const-string v9, "keytyperesponse"

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez v6, :cond_1

    const-string v0, "getKeyType. aliases is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    new-instance v8, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v10, "ownerUid"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "resource"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "extraArgs"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    array-length v10, v6

    move v11, v0

    :goto_0
    const-string v12, "errorresponse"

    if-ge v11, v10, :cond_6

    aget-object v0, v6, v11

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "KNOX"

    iget-object v14, v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v0, v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v14, 0x0

    invoke-virtual {v0, v2, v14}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v14

    if-nez v14, :cond_2

    const-string v0, "getKeyType. key is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_2
    const/4 v15, 0x1

    invoke-virtual {v5, v7, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v13, "stringresponse"

    invoke-interface {v14}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v13, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    instance-of v13, v14, Ljavax/crypto/SecretKey;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    invoke-virtual {v5, v9, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    instance-of v13, v14, Ljava/security/PrivateKey;

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    invoke-virtual {v5, v9, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UCMERRORTESTING: @UcmAgentService responding to getKeyType with error code ks.getErrorStatus() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :goto_2
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    const/16 v0, 0x109

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, 0x10d

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_4
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v13, 0x2

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_5
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 v0, 0x105

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 v0, 0x10a

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCMERRORTESTING: @UcmAgentService responding to getKeyType with EXCEPTION error code  = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private final importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string v0, "booleanresponse"

    const-string v1, "errorresponse"

    const-string v2, "UCMERRORTESTING: @UcmAgentService responding to importKey with error code ks.getErrorStatus() = "

    const-string v3, "importKey"

    const-string v4, "UcmAgentService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "importKey. property is null"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v3, "secret_key"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_4

    sget-object v5, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v5, Landroid/security/keystore/KeyProtection$Builder;

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    :cond_2
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    :cond_3
    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v5

    const-string v6, "importKey: "

    const-string v8, ", uid: "

    invoke-static {v6, p1, v8}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "callerUid"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", caller: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v8, "KNOX"

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v8, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v8, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v9, "ownerUid"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "resource"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "extraArgs"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v8, v9, v10, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance p2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {p2, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {p0, p1, p2, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_1
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x2

    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    const/4 p0, 0x0

    invoke-virtual {v6, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to importKey with EXCEPTION error code  = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_4
    :goto_5
    const-string p1, "importKey. SecretKey is null or property doesn\'t have purpose"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "booleanresponse"

    const-string v5, "errorresponse"

    const-string v6, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with error code ks.getErrorStatus() = "

    const-string v7, "importKeyPair"

    const-string v8, "UcmAgentService"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    const-string v1, "importKeyPair. property is null"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    sget-object v9, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    sget-object v9, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    :cond_1
    sget-object v9, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    :cond_2
    sget-object v9, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    const-string v9, "importKeyPair "

    const-string v11, ",uid: "

    invoke-static {v9, v1, v11}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "callerUid"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", caller: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v12, "X.509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    new-instance v13, Ljava/io/ByteArrayInputStream;

    move-object/from16 v14, p3

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/security/cert/Certificate;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/security/cert/Certificate;

    const-string v13, "KNOX"

    iget-object v0, v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v13, v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v13, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v14, "ownerUid"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "resource"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v11, "extraArgs"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-direct {v13, v14, v15, v11}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    if-eqz v2, :cond_3

    const-string v11, "algorithm"

    const-string v13, "RSA"

    invoke-virtual {v3, v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v11, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v11, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v11}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_9

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    :goto_0
    new-instance v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {v3, v2, v12}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, v1, v3, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-virtual {v9, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v1

    invoke-virtual {v9, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :goto_1
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 v0, 0x3

    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v1, 0x2

    invoke-virtual {v9, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 v0, 0x108

    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_4
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    const/16 v0, 0x109

    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_5
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    const/16 v0, 0x107

    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, 0x10d

    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_7
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v1, 0x2

    invoke-virtual {v9, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_8
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 v0, 0x105

    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 v0, 0x10a

    invoke-virtual {v9, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_a
    const/4 v0, 0x0

    invoke-virtual {v9, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with EXCEPTION error code  = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

.method private final installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "booleanresponse"

    const-string v1, "errorresponse"

    const-string v2, "installCertificateIfSupported"

    const-string v3, "UcmAgentService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    const-string p1, "installCertificateIfSupported. property is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "installCertificateIfSupported: "

    const-string v4, ", uid: "

    invoke-static {v2, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "callerUid"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v4, "KNOX"

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v4, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    instance-of v6, v5, Ljava/security/PrivateKey;

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p2

    if-eqz p2, :cond_2

    array-length p3, p2

    if-eqz p3, :cond_2

    new-instance p3, Landroid/security/keystore/KeyProtection$Builder;

    sget-object v4, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    invoke-virtual {p3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p3

    new-instance p4, Ljava/security/KeyStore$PrivateKeyEntry;

    check-cast v5, Ljava/security/PrivateKey;

    invoke-direct {p4, v5, p2}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    invoke-virtual {p0, p1, p4, p3}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_5

    :cond_2
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Certificate chain empty"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    const/16 p0, 0x109

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_2
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_4
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x2

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_6
    const/4 p0, 0x0

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to installCertificateIfSupported with EXCEPTION error code  = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private final mac(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v0, "bytearrayresponse"

    const-string v1, "errorresponse"

    const-string v2, "mac"

    const-string v3, "UcmAgentService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10

    if-nez p4, :cond_0

    const-string p1, "mac. property is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v4, "mac "

    const-string v5, ", uid: "

    invoke-static {v4, p1, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callerUid"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "data length "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "KNOX"

    iget-object v6, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v7, "ownerUid"

    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "resource"

    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "extraArgs"

    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v5, p1, v4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "mac. getEntry null "

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_5

    :catch_4
    move-exception p0

    goto :goto_6

    :catch_5
    move-exception p0

    goto/16 :goto_7

    :catch_6
    move-exception p0

    goto/16 :goto_8

    :catch_7
    move-exception p0

    goto/16 :goto_9

    :cond_2
    check-cast p1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "mac. getSecretKey null "

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xa

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Mac;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->init(Ljavax/crypto/SecretKey;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length p1, p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->update([BII)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->doFinal()[B

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_3
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_4
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const/16 p0, 0x109

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_5
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x2

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_6
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_7
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_8
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    const/16 p0, 0x103

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :goto_9
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const/16 p0, 0x107

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_a
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2

    :cond_5
    const-string p1, "mac. data is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private responseErrorWithBoolean()Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithBoolean(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private responseErrorWithBoolean(I)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private responseErrorWithNullBytes(I)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private final saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string/jumbo v0, "saw"

    const-string v1, "UcmAgentService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string/jumbo v3, "stringarrayresponse"

    const-string v4, "errorresponse"

    if-nez p1, :cond_0

    const-string/jumbo p0, "saw. property is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p0, 0x10

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saw uid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "callerUid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    :try_start_0
    const-string v6, "KNOX"

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v7, "ownerUid"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "resource"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "extraArgs"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v6, v7, v8, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_5

    :catch_5
    move-exception p0

    goto :goto_6

    :catch_6
    move-exception p0

    goto :goto_7

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCMERRORTESTING: @UcmAgentService responding to saw with error code ks.getErrorStatus() = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_1
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :goto_3
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :goto_5
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :goto_6
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :goto_7
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_8
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to saw with EXCEPTION error code  = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private final sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "bytearrayresponse"

    const-string v1, "errorresponse"

    const-string/jumbo v2, "sign"

    const-string v3, "UcmAgentService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10

    if-nez p4, :cond_0

    const-string/jumbo p1, "sign. property is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v4, "sign "

    const-string v5, ",uid: "

    invoke-static {v4, p1, v5}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callerUid"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "data length "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "KNOX"

    iget-object v7, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    move-result-object v6

    invoke-virtual {v6, p4}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    new-instance v7, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string/jumbo v8, "ownerUid"

    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "resource"

    invoke-virtual {p4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "extraArgs"

    invoke-virtual {p4, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v6, p1, v5}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "sign. getEntry null "

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_5

    :catch_4
    move-exception p0

    goto/16 :goto_6

    :catch_5
    move-exception p0

    goto/16 :goto_7

    :catch_6
    move-exception p0

    goto/16 :goto_8

    :catch_7
    move-exception p0

    goto/16 :goto_9

    :catch_8
    move-exception p0

    goto/16 :goto_a

    :catch_9
    move-exception p0

    goto/16 :goto_b

    :cond_2
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "sign. getPrivateKey null "

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xa

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {p3, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Signature;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->setProperty(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->update([B)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->sign()[B

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_3
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_4
    invoke-virtual {p0}, Ljava/security/SignatureException;->printStackTrace()V

    const/16 p0, 0x110

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_5
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_7
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_8
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_9
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const/16 p0, 0x109

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_a
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const/16 p0, 0x107

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_c
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2

    :cond_5
    const-string/jumbo p1, "sign. data is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->responseErrorWithNullBytes(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract changePinWithPassword(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract generateDek()Landroid/os/Bundle;
.end method

.method public abstract generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateWrappedDek()Landroid/os/Bundle;
.end method

.method public abstract getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
.end method

.method public abstract getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getDek()Landroid/os/Bundle;
.end method

.method public abstract getDetailErrorMessage(I)Ljava/lang/String;
.end method

.method public abstract getInfo()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMaximumLength()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMinimumLength()Landroid/os/Bundle;
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    return-object p0
.end method

.method public abstract getStatus()Landroid/os/Bundle;
.end method

.method public abstract initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract keyguardPasswordUpdated(Z)Landroid/os/Bundle;
.end method

.method public abstract notifyChange(ILandroid/os/Bundle;)I
.end method

.method public final notifyCredentialStorageChanged()V
    .locals 1

    const-string p0, "UcmAgentService"

    const-string/jumbo v0, "notifyCredentialStorageChanged "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;I)V

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public abstract setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMaximumLength(I)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMinimumLength(I)Landroid/os/Bundle;
.end method

.method public abstract setState(I)Landroid/os/Bundle;
.end method

.method public abstract unwrapDek([B)Landroid/os/Bundle;
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method
