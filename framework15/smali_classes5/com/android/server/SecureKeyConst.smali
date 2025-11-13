.class public final Lcom/android/server/SecureKeyConst;
.super Ljava/lang/Object;
.source "SecureKeyConst.java"


# static fields
.field public static final blacklist AT_CMD_DRK_V1_WRITING_END:Ljava/lang/String; = "FF"

.field public static final blacklist AT_CMD_DRK_V2_VERSION:Ljava/lang/String; = "01"

.field public static final blacklist AT_CMD_DRK_V2_WRITING_END:Ljava/lang/String; = "FFF"

.field public static final blacklist AT_MAIN_INDEX:I = 0x0

.field public static final blacklist AT_MAIN_INDEX_READ_DATA:I = 0x1

.field public static final blacklist AT_MAIN_INDEX_TC_DATA:I = 0x9

.field public static final blacklist AT_MAIN_INDEX_VERIFY:I = 0x0

.field public static final blacklist AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field public static final blacklist AT_MAIN_READ_DATA:I = 0xa

.field public static final blacklist AT_MAIN_TC_DATA:I = 0x5a

.field public static final blacklist AT_MAIN_VERIFY:I = 0x0

.field public static final blacklist AT_MAIN_WRITE_DATA:I = 0x14

.field public static final blacklist AT_MID_INDEX:I = 0x1

.field public static final blacklist AT_MINOR_INDEX:I = 0x2

.field public static final blacklist AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG_FAIL(FAILED CONNECTION)"

.field public static final blacklist AT_RESPONSE_EXCEPION_OCCURS:Ljava/lang/String; = "NG_FAIL(EXCEPTION_OCCURS)"

.field public static final blacklist AT_RESPONSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field public static final blacklist AT_RESPONSE_INSTANCE_ERROR:Ljava/lang/String; = "NG_FAIL(INSTANCE ERROR)"

.field public static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field public static final blacklist AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG_FAIL(DATA MISSED)"

.field public static final blacklist AT_RESPONSE_NOT_SUPPORT_DRK:Ljava/lang/String; = "OK(NOT SUPPORT DRK)"

.field public static final blacklist AT_RESPONSE_NO_EM_TOKEN:Ljava/lang/String; = "NG_FAIL(NO_TOKEN)"

.field public static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field public static final blacklist AT_RESPONSE_PMK_OK:Ljava/lang/String; = "OK(NOT SUPPORT PMK IN M OS)"

.field public static final blacklist AT_RESPONSE_UNIMPLEMENTED:Ljava/lang/String; = "NG_FAIL(UNIMPLEMENTED_CMD)"

.field public static final blacklist CSR_BRANCH_ID_LENGTH:I = 0x3

.field public static final blacklist CSR_REQUEST_PHASE2:I = 0x16

.field public static final blacklist CSR_TIMESTAMP_LENGTH:I = 0xe

.field public static final blacklist DRK_V1_SEQ_NO:I = 0x2

.field public static final blacklist DRK_V2_SEQ_NO:I = 0x3

.field public static final blacklist DRK_V2_VERSION:I = 0x2

.field public static final blacklist ERR_KEYMASTER_GAK_ROOT_FAIL:I = -0x2cf7

.field public static final blacklist ERR_KEYMASTER_JDM_FALSE_PROP:I = -0x2cf4

.field public static final blacklist ERR_KEYMASTER_JDM_NULL_PROP:I = -0x2cf5

.field public static final blacklist ERR_KEYMASTER_TIMEOUT:I = -0x2cf8

.field public static final blacklist ERR_KEYMASTER_VERIFICATION_FAIL:I = -0x2cf6

.field public static final blacklist GOOGLE_ATTESTATION_KEY_VERIFY:I = 0x4

.field public static final blacklist GOOGLE_ATTESTATION_KEY_WRITE:I = 0x1a

.field public static final blacklist GoogleDevRootPubKey:[B

.field public static final blacklist GoogleRootPubKey:[B

.field public static final blacklist KEY_DRK_V1:I = 0x0

.field public static final blacklist KEY_DRK_V2:I = 0x2

.field public static final blacklist KEY_GAK_ID_ATCMD:I = 0x6

.field public static final blacklist KEY_GAK_ID_BOOT:I = 0x8

.field public static final blacklist KEY_GOOGLE_ATTESTATION:I = 0x1

.field public static final blacklist KEY_RKP_DEVINFO:I = 0x5

.field public static final blacklist KEY_SAMSUNG_ATTESTATION:I = 0x3

.field public static final blacklist KEY_SGAK_ID_ATCMD:I = 0x7

.field public static final blacklist KEY_SGAK_ID_BOOT:I = 0x9

.field public static final blacklist KEY_STRONGBOX_ATTESTATION:I = 0x4

.field public static final blacklist MODE_MNFR_ALLOW_ATCMD:I = 0x1c

.field public static final blacklist NOT_ERROR:I = 0x0

.field public static final blacklist PDP_ERROR:Ljava/lang/String; = "PDP_ERROR"

.field public static final blacklist REMOTE_KEY_PROVISIONING_DEVINFO_READ:I = 0xd

.field public static final blacklist SAMSUNG_ATTESTATION_CSR_REQUEST:I = 0x18

.field public static final blacklist SAMSUNG_ATTESTATION_KEY_VERIFY:I = 0x3

.field public static final blacklist SAMSUNG_ATTESTATION_KEY_WRITE:I = 0x19

.field public static final blacklist SAMSUNG_DEVICE_ROOT_KEY_UID_READ_PHASE1:I = 0xa

.field public static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE1:I = 0x0

.field public static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE2:I = 0x2

.field public static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERSION_READ_PHASE2:I = 0xc

.field public static final blacklist SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE1:I = 0x14

.field public static final blacklist SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE2:I = 0x17

.field public static final blacklist SAMSUNG_PAYMENT_KEY_UID_READ_PHASE1:I = 0xb

.field public static final blacklist SAMSUNG_PAYMENT_KEY_VERIFY:I = 0x1

.field public static final blacklist SAMSUNG_PAYMENT_KEY_WRITE_PHASE1:I = 0x15

.field public static final blacklist STRONGBOX_ATTESTATION_KEY_VERIFY:I = 0x5

.field public static final blacklist STRONGBOX_ATTESTATION_KEY_WRITE:I = 0x1b

.field public static final blacklist TC_CHECK_DRK_VERSION:I = 0x5b

.field public static final blacklist TC_GENERATESERVICEKEY:I = 0x5f

.field public static final blacklist TC_GENERATESERVICEKEYWITHTLV:I = 0x60

.field public static final blacklist TC_GETDEVICEINFO:I = 0x61

.field public static final blacklist TC_GETDRKCERT:I = 0x5e

.field public static final blacklist TC_GETDRKUID:I = 0x5d

.field public static final blacklist TC_ISEXIST_DRK:I = 0x5c

.field public static final blacklist TC_SERVICE_AVAILABLE:I = 0x5a

.field public static final blacklist isDevDevice:Ljava/lang/String;

.field public static final blacklist isJDM:Z

.field public static final blacklist isJDMProductNotInHouse:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const/16 v0, 0x226

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/SecureKeyConst;->GoogleRootPubKey:[B

    const/16 v0, 0x226

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/SecureKeyConst;->GoogleDevRootPubKey:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SecureKeyConst;->isJDMProductNotInHouse:Z

    const-string/jumbo v0, "in_house"

    const-string/jumbo v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SecureKeyConst;->isJDM:Z

    const-string/jumbo v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SecureKeyConst;->isDevDevice:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x2t
        0xft
        0x0t
        0x30t
        -0x7et
        0x2t
        0xat
        0x2t
        -0x7et
        0x2t
        0x1t
        0x0t
        -0x51t
        -0x4at
        -0x39t
        -0x7et
        0x2bt
        -0x4ft
        -0x59t
        0x1t
        -0x14t
        0x2bt
        -0x4ct
        0x2et
        -0x75t
        -0x34t
        0x54t
        0x16t
        0x63t
        -0x55t
        -0x11t
        -0x68t
        0x2ft
        0x32t
        -0x39t
        0x7ft
        0x75t
        0x31t
        0x3t
        0xct
        -0x69t
        0x52t
        0x4bt
        0x1bt
        0x5ft
        -0x18t
        0x9t
        -0x5t
        -0x39t
        0x2at
        -0x57t
        0x45t
        0x1ft
        0x74t
        0x3ct
        -0x43t
        -0x66t
        0x6ft
        0x13t
        0x35t
        0x74t
        0x4at
        -0x5bt
        0x5et
        0x77t
        -0xat
        -0x4at
        -0x54t
        0x35t
        0x35t
        -0x12t
        0x17t
        -0x3et
        0x5et
        0x63t
        -0x6bt
        0x17t
        -0x23t
        -0x64t
        -0x6et
        -0x1at
        0x37t
        0x4at
        0x53t
        -0x35t
        -0x2t
        0x25t
        -0x71t
        -0x71t
        -0x5t
        -0x4at
        -0x3t
        0x12t
        -0x6dt
        0x78t
        -0x5et
        0x2at
        0x4ct
        -0x57t
        -0x64t
        0x45t
        0x2dt
        0x47t
        -0x5bt
        -0x61t
        0x32t
        0x1t
        -0xct
        0x41t
        -0x69t
        -0x36t
        0x1ct
        -0x33t
        0x7et
        0x76t
        0x2ft
        -0x4et
        -0xbt
        0x31t
        0x51t
        -0x4at
        -0x2t
        -0x4et
        -0x1t
        -0x3t
        0x2bt
        0x6ft
        -0x1ct
        -0x2t
        0x5bt
        -0x3at
        -0x43t
        -0x62t
        -0x3dt
        0x4bt
        -0x2t
        0x8t
        0x23t
        -0x63t
        -0x56t
        -0x4t
        -0x15t
        -0x72t
        -0x4bt
        -0x58t
        -0x13t
        0x2bt
        0x3at
        -0x33t
        -0x64t
        0x5et
        0x3at
        0x77t
        -0x70t
        -0x1ft
        -0x4bt
        0x14t
        0x42t
        0x79t
        0x31t
        0x59t
        -0x7bt
        -0x68t
        0x11t
        -0x53t
        -0x62t
        -0x4et
        -0x57t
        0x6bt
        -0x43t
        -0x29t
        -0x5bt
        0x7ct
        -0x6dt
        -0x57t
        0x1ct
        0x41t
        -0x4t
        -0x33t
        0x27t
        -0x2at
        0x7ft
        -0x2at
        -0xat
        0x71t
        -0x56t
        0xbt
        -0x7ft
        0x52t
        0x61t
        -0x53t
        0x38t
        0x4ft
        -0x5dt
        0x79t
        0x44t
        -0x7at
        0x46t
        0x4t
        -0x23t
        -0x4dt
        -0x28t
        -0x3ct
        -0x7t
        0x20t
        -0x5ft
        -0x65t
        0x16t
        0x56t
        -0x3et
        -0xft
        0x4at
        -0x2at
        -0x30t
        0x3ct
        0x56t
        -0x14t
        0x6t
        0x8t
        -0x67t
        0x4t
        0x1ct
        0x1et
        -0x2ft
        -0x5bt
        -0x2t
        0x6dt
        0x34t
        0x40t
        -0x4bt
        0x56t
        -0x46t
        -0x2ft
        -0x30t
        -0x5ft
        0x52t
        0x58t
        -0x64t
        0x53t
        -0x1bt
        0x5dt
        0x37t
        0x7t
        0x62t
        -0x10t
        0x12t
        0x2et
        -0x11t
        -0x6ft
        -0x7at
        0x1bt
        0x1bt
        0xet
        0x6ct
        0x4ct
        -0x80t
        -0x6et
        0x74t
        -0x67t
        -0x40t
        -0x17t
        -0x42t
        -0x40t
        -0x48t
        0x3et
        0x3bt
        -0x3ft
        -0x7t
        0x3ct
        0x72t
        -0x40t
        0x49t
        0x60t
        0x4bt
        -0x43t
        0x2ft
        0x13t
        0x45t
        -0x1at
        0x2ct
        0x3ft
        -0x72t
        0x26t
        -0x25t
        -0x14t
        0x6t
        -0x37t
        0x47t
        0x66t
        -0xdt
        -0x3ft
        0x28t
        0x23t
        -0x63t
        0x4ft
        0x43t
        0x12t
        -0x6t
        -0x28t
        0x12t
        0x38t
        -0x79t
        -0x20t
        0x6bt
        -0x14t
        -0xbt
        0x67t
        0x58t
        0x3bt
        -0x8t
        0x35t
        0x5at
        -0x7ft
        -0x2t
        -0x16t
        -0x46t
        -0x7t
        -0x66t
        -0x7dt
        -0x38t
        -0x21t
        0x3et
        0x2at
        0x32t
        0x2at
        -0x4t
        0x67t
        0x2bt
        -0xft
        0x20t
        -0x4ft
        0x35t
        0x15t
        -0x75t
        0x68t
        0x21t
        -0x32t
        -0x51t
        0x30t
        -0x65t
        0x6et
        -0x12t
        0x77t
        -0x7t
        -0x78t
        0x33t
        -0x50t
        0x18t
        -0x26t
        -0x5ft
        0xet
        0x45t
        0x1ft
        0x6t
        -0x5dt
        0x74t
        -0x2bt
        0x7t
        -0x7ft
        -0xdt
        0x59t
        0x8t
        0x29t
        0x66t
        -0x45t
        0x77t
        -0x75t
        -0x6dt
        0x8t
        -0x6ct
        0x26t
        -0x68t
        -0x19t
        0x4et
        0xbt
        -0x33t
        0x24t
        0x62t
        -0x76t
        0x1t
        -0x3et
        -0x34t
        0x3t
        -0x1bt
        0x1ft
        0xbt
        0x3et
        0x5bt
        0x4at
        -0x3ft
        -0x1ct
        -0x21t
        -0x62t
        -0x51t
        -0x61t
        -0xat
        -0x5ct
        -0x6et
        -0x59t
        0x7ct
        0x14t
        -0x7dt
        -0x78t
        0x28t
        -0x7bt
        0x1t
        0x5bt
        0x42t
        0x2ct
        -0x1at
        0x7bt
        -0x80t
        -0x48t
        -0x74t
        -0x65t
        0x48t
        -0x1ft
        0x3bt
        0x60t
        0x7at
        -0x4bt
        0x45t
        -0x39t
        0x23t
        -0x1t
        -0x74t
        0x44t
        -0x8t
        -0xet
        -0x2dt
        0x68t
        -0x47t
        -0xat
        0x52t
        0xdt
        0x31t
        0x14t
        0x5et
        -0x41t
        -0x62t
        -0x7at
        0x2at
        -0x29t
        0x1dt
        -0xat
        -0x5dt
        -0x41t
        -0x2et
        0x45t
        0x9t
        0x59t
        -0x2at
        0x53t
        0x74t
        0xdt
        -0x69t
        -0x5ft
        0x2ft
        0x36t
        -0x75t
        0x13t
        -0x11t
        0x66t
        -0x2bt
        -0x30t
        -0x5bt
        0x4at
        0x6et
        0x2ft
        0x5dt
        -0x66t
        0x6ft
        -0x11t
        0x44t
        0x68t
        0x32t
        -0x44t
        0x67t
        -0x7ct
        0x47t
        0x25t
        -0x7at
        0x1ft
        0x9t
        0x3dt
        -0x30t
        -0x1at
        -0xdt
        0x40t
        0x5dt
        -0x58t
        -0x6at
        0x43t
        -0x11t
        0xft
        0x4dt
        0x69t
        -0x4at
        0x42t
        0x0t
        0x51t
        -0x3t
        -0x47t
        0x30t
        0x49t
        0x67t
        0x3et
        0x36t
        -0x6bt
        0x5t
        -0x80t
        -0x2dt
        -0x33t
        -0xct
        -0x5t
        -0x30t
        -0x75t
        -0x3bt
        -0x7ct
        -0x7dt
        -0x6bt
        0x26t
        0x0t
        0x63t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x2t
        0xft
        0x0t
        0x30t
        -0x7et
        0x2t
        0xat
        0x2t
        -0x7et
        0x2t
        0x1t
        0x0t
        -0x19t
        -0x37t
        0x1dt
        0x35t
        -0x7t
        -0x68t
        0x72t
        0x2bt
        0x41t
        0x64t
        0x37t
        -0x6dt
        -0x11t
        0x16t
        -0x57t
        -0x5at
        -0x37t
        0x42t
        0x63t
        0x67t
        -0x7ft
        0x18t
        0x2ct
        0x3at
        -0x38t
        -0x6et
        0x65t
        -0x65t
        0x7et
        0x76t
        -0x77t
        0x32t
        -0x72t
        0x2t
        -0xft
        -0x75t
        -0x4t
        -0x31t
        -0x5et
        0x1dt
        -0x7ct
        -0x67t
        0x21t
        -0x13t
        0x1bt
        0x28t
        0x6ft
        -0x78t
        -0x16t
        -0x45t
        0x1et
        0x3et
        0x34t
        -0x76t
        0x16t
        -0x1et
        0x1at
        -0x5at
        -0x77t
        -0xat
        -0x20t
        0x40t
        -0xct
        0x5t
        0x46t
        -0x39t
        -0x38t
        -0x3ct
        -0x6bt
        0x5ct
        -0x24t
        -0x71t
        0x4ft
        0xat
        0x40t
        -0x59t
        -0x7et
        -0x63t
        -0x1bt
        -0x65t
        -0x4at
        -0x75t
        0x60t
        -0x6ct
        0x2bt
        0x59t
        0x12t
        -0x6et
        -0x6t
        0x22t
        0x33t
        0x5bt
        -0x25t
        -0x7dt
        -0x16t
        0x24t
        0x51t
        0x0t
        -0x53t
        -0x16t
        -0x6dt
        -0x62t
        0x68t
        0x7et
        -0x79t
        -0x37t
        0x66t
        -0x4at
        0x5ct
        -0x65t
        0x78t
        -0x37t
        -0x6ft
        -0x8t
        -0x7at
        -0x7t
        0x51t
        -0x2ct
        -0x7bt
        -0x2et
        -0x39t
        0x54t
        -0x13t
        -0x2ft
        -0x28t
        -0x7ct
        -0x37t
        0x23t
        0x65t
        0x5at
        0x16t
        0x32t
        -0x66t
        0xdt
        0x54t
        0x3ft
        -0x1bt
        0x24t
        0x3ft
        -0x4bt
        0x37t
        0x11t
        0x0t
        -0x34t
        0x1ct
        0x7dt
        0x76t
        0xet
        -0x45t
        0x3bt
        -0x41t
        -0x2t
        -0x8t
        -0x5bt
        -0x7at
        0x58t
        -0x4dt
        -0x56t
        0x36t
        0x0t
        0x1bt
        -0x5t
        -0x1ct
        0x49t
        0x50t
        0x7et
        -0x20t
        -0x4ft
        0x68t
        -0x3at
        -0x21t
        -0x25t
        0x5bt
        0x7dt
        0x5ct
        0x6t
        -0x7dt
        -0x59t
        -0x1bt
        0x4et
        -0x7t
        -0x45t
        0x49t
        -0x29t
        0x63t
        -0x1bt
        -0x5et
        -0x5ct
        -0x42t
        0x69t
        0x28t
        0x1bt
        -0x5at
        -0x28t
        -0x37t
        -0x61t
        0x50t
        0x56t
        0x30t
        0x7ft
        -0x3t
        0x4at
        -0x26t
        0x11t
        0x9t
        -0x76t
        0x1bt
        -0x27t
        -0x64t
        -0x5dt
        0x7at
        0x7ft
        -0x45t
        -0x3et
        -0x6bt
        -0x21t
        -0x7bt
        0x2ft
        -0x1t
        -0x38t
        -0x2dt
        0x75t
        0x51t
        -0x23t
        -0x35t
        -0x14t
        -0x2bt
        -0x7at
        -0x9t
        -0x4ct
        0x10t
        0x38t
        -0x29t
        -0x53t
        0x1ft
        0x24t
        -0x1dt
        0x32t
        0x49t
        -0x39t
        -0x33t
        -0x68t
        0x2t
        0x3ct
        -0x44t
        -0xct
        -0x40t
        -0x3t
        0x41t
        0x61t
        -0x63t
        0x3t
        -0x35t
        0x74t
        0x62t
        -0x57t
        0x1ct
        0x68t
        0x12t
        0xbt
        -0xdt
        0x26t
        0x2bt
        -0x2t
        0x2ft
        -0x4t
        -0xft
        -0x5dt
        0x4at
        0x1ct
        -0x2ct
        0x2bt
        -0xft
        0x47t
        -0x4ft
        0x71t
        0x5et
        -0x60t
        0x3t
        -0x48t
        0x61t
        -0x45t
        0x24t
        0x15t
        -0x30t
        0x7bt
        -0x21t
        0x56t
        -0xat
        -0x78t
        0x74t
        -0x61t
        0x5dt
        -0x12t
        -0x40t
        0x5ct
        -0x4t
        0x62t
        0x9t
        -0x7ft
        -0x50t
        0x32t
        0x62t
        -0x4ct
        -0xat
        -0x36t
        0x44t
        0x69t
        -0x7ct
        -0xat
        -0x50t
        0x78t
        0x1ct
        0x38t
        -0x29t
        0x2at
        0x2t
        0x6et
        -0x53t
        -0x43t
        0x52t
        -0x54t
        -0x4et
        0x1et
        0x6ct
        -0x2ft
        0x5at
        -0x78t
        0x48t
        0x2at
        -0x4at
        -0x7et
        -0x5ft
        0x72t
        -0x3et
        0x40t
        0x5at
        0x3et
        0xft
        0xdt
        0x5et
        0x53t
        0x18t
        0x62t
        0x48t
        -0x2at
        0x7ct
        -0x60t
        0x55t
        0x26t
        -0x32t
        -0x57t
        -0x11t
        0x57t
        -0x74t
        -0x27t
        -0x7ct
        0x5ft
        0x3dt
        0x28t
        0x26t
        -0x48t
        -0x1ct
        -0x2t
        -0x67t
        -0x5t
        0x32t
        0x11t
        0x43t
        0x19t
        -0x23t
        0xat
        -0x7ct
        0x54t
        -0x1t
        0x76t
        0x6bt
        -0x46t
        0x1t
        0x7ct
        -0x60t
        0x39t
        -0x26t
        -0x10t
        -0x69t
        -0x23t
        0x4bt
        -0xdt
        -0x65t
        0x15t
        0x1dt
        0x7at
        0x71t
        0x4dt
        -0x67t
        0x39t
        -0x48t
        -0x1t
        0x33t
        0x20t
        0x30t
        0x7et
        0x24t
        -0x78t
        -0x38t
        0x29t
        -0x10t
        0x7bt
        -0x47t
        0x1ct
        -0x7dt
        -0x70t
        0x2et
        -0x5t
        0x7ct
        0x43t
        -0x18t
        0x44t
        0x4at
        0x28t
        0x60t
        -0x37t
        -0x3t
        0x47t
        -0x25t
        0x64t
        -0x4at
        -0x25t
        -0x4dt
        -0xat
        0x4at
        -0x30t
        -0x36t
        0x6et
        0xet
        -0x3dt
        0x4bt
        0x71t
        0x13t
        0x71t
        0x6t
        0x25t
        0x3dt
        -0x20t
        -0x6dt
        -0x10t
        0xbt
        -0x6dt
        -0x70t
        0x79t
        0x33t
        -0x79t
        -0x51t
        0x57t
        0x49t
        0x43t
        0x54t
        0x74t
        -0x24t
        -0x4bt
        -0x3t
        0x30t
        -0x65t
        -0x74t
        -0xat
        -0x6bt
        -0x1t
        0x50t
        0x2ct
        -0x25t
        0x45t
        0x13t
        0x2ct
        0x2at
        0x3bt
        0x4ct
        0x5at
        0x58t
        0x12t
        0x70t
        0x7t
        -0x1at
        -0x76t
        -0x75t
        -0x17t
        -0x4at
        -0x9t
        0x33t
        -0xdt
        -0x63t
        0x7et
        -0x76t
        -0x76t
        -0x52t
        0x20t
        0x39t
        -0x5ct
        0x50t
        0x66t
        0x7et
        0x56t
        0x79t
        -0x59t
        -0xat
        0x37t
        -0x8t
        -0x73t
        -0x8t
        0x57t
        0x1t
        0x5t
        0x1t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkblockDrkWriting()Z
    .locals 7

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "a36xq SC-54F gtact5pro gtact5prowifi"

    const-string/jumbo v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", specificDevice : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEVROOT#ATCmd"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method
