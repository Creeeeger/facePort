.class public Lcom/android/server/DevRootKeyATCmd;
.super Ljava/lang/Object;
.source "DevRootKeyATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_CMD_DRK_V1_WRITING_END:Ljava/lang/String; = "FF"

.field private static final blacklist AT_CMD_DRK_V2_VERSION:Ljava/lang/String; = "01"

.field private static final blacklist AT_CMD_DRK_V2_WRITING_END:Ljava/lang/String; = "FFF"

.field private static final blacklist AT_COMMAND_DEVROOTK:Ljava/lang/String; = "DEVROOTK"

.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_MAIN_INDEX:I = 0x0

.field private static final blacklist AT_MAIN_INDEX_READ_DATA:I = 0x1

.field private static final blacklist AT_MAIN_INDEX_TC_DATA:I = 0x9

.field private static final blacklist AT_MAIN_INDEX_VERIFY:I = 0x0

.field private static final blacklist AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field private static final blacklist AT_MAIN_READ_DATA:I = 0xa

.field private static final blacklist AT_MAIN_TC_DATA:I = 0x5a

.field private static final blacklist AT_MAIN_VERIFY:I = 0x0

.field private static final blacklist AT_MAIN_WRITE_DATA:I = 0x14

.field private static final blacklist AT_MID_INDEX:I = 0x1

.field private static final blacklist AT_MINOR_INDEX:I = 0x2

.field private static final blacklist AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG_FAIL(FAILED CONNECTION)"

.field private static final blacklist AT_RESPONSE_EXCEPION_OCCURS:Ljava/lang/String; = "NG_FAIL(EXCEPTION_OCCURS)"

.field private static final blacklist AT_RESPONSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field private static final blacklist AT_RESPONSE_INSTANCE_ERROR:Ljava/lang/String; = "NG_FAIL(INSTANCE ERROR)"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG_FAIL(DATA MISSED)"

.field private static final blacklist AT_RESPONSE_NO_EM_TOKEN:Ljava/lang/String; = "NG_FAIL(NO_TOKEN)"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final blacklist AT_RESPONSE_PMK_OK:Ljava/lang/String; = "OK(NOT SUPPORT PMK IN M OS)"

.field private static final blacklist AT_RESPONSE_UNIMPLEMENTED:Ljava/lang/String; = "NG_FAIL(UNIMPLEMENTED_CMD)"

.field private static final blacklist CSR_BRANCH_ID_LENGTH:I = 0x3

.field private static final blacklist CSR_REQUEST_PHASE2:I = 0x16

.field private static final blacklist CSR_TIMESTAMP_LENGTH:I = 0xe

.field private static final blacklist DRK_V1_SEQ_NO:I = 0x2

.field private static final blacklist DRK_V2_SEQ_NO:I = 0x3

.field private static final blacklist DRK_V2_VERSION:I = 0x2

.field private static final blacklist ERR_KEYMASTER_GAK_ROOT_FAIL:I = -0x2cf7

.field private static final blacklist ERR_KEYMASTER_JDM_FALSE_PROP:I = -0x2cf4

.field private static final blacklist ERR_KEYMASTER_JDM_NULL_PROP:I = -0x2cf5

.field private static final blacklist ERR_KEYMASTER_VERIFICATION_FAIL:I = -0x2cf6

.field private static final blacklist GOOGLE_ATTESTATION_KEY_VERIFY:I = 0x4

.field private static final blacklist GOOGLE_ATTESTATION_KEY_WRITE:I = 0x1a

.field private static final blacklist GoogleDevRootPubKey:[B

.field private static final blacklist GoogleRootPubKey:[B

.field private static final blacklist KEY_DRK_V1:I = 0x0

.field private static final blacklist KEY_DRK_V2:I = 0x2

.field private static final blacklist KEY_GOOGLE_ATTESTATION:I = 0x1

.field private static final blacklist KEY_RKP_DEVINFO:I = 0x5

.field private static final blacklist KEY_SAMSUNG_ATTESTATION:I = 0x3

.field private static final blacklist KEY_STRONGBOX_ATTESTATION:I = 0x4

.field private static final blacklist MODE_MNFR_ALLOW_ATCMD:I = 0x1c

.field private static final blacklist NOT_ERROR:I = 0x0

.field private static final blacklist PDP_ERROR:Ljava/lang/String; = "PDP_ERROR"

.field private static final blacklist REMOTE_KEY_PROVISIONING_DEVINFO_READ:I = 0xd

.field private static final blacklist SAMSUNG_ATTESTATION_CSR_REQUEST:I = 0x18

.field private static final blacklist SAMSUNG_ATTESTATION_KEY_VERIFY:I = 0x3

.field private static final blacklist SAMSUNG_ATTESTATION_KEY_WRITE:I = 0x19

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_UID_READ_PHASE1:I = 0xa

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE1:I = 0x0

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE2:I = 0x2

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERSION_READ_PHASE2:I = 0xc

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE1:I = 0x14

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE2:I = 0x17

.field private static final blacklist SAMSUNG_PAYMENT_KEY_UID_READ_PHASE1:I = 0xb

.field private static final blacklist SAMSUNG_PAYMENT_KEY_VERIFY:I = 0x1

.field private static final blacklist SAMSUNG_PAYMENT_KEY_WRITE_PHASE1:I = 0x15

.field private static final blacklist STRONGBOX_ATTESTATION_KEY_VERIFY:I = 0x5

.field private static final blacklist STRONGBOX_ATTESTATION_KEY_WRITE:I = 0x1b

.field private static final blacklist TAG:Ljava/lang/String; = "DEVROOT#ATCmd(1.0.0)"

.field private static final blacklist TC_CHECK_DRK_VERSION:I = 0x5b

.field private static final blacklist TC_GENERATESERVICEKEY:I = 0x5f

.field private static final blacklist TC_GENERATESERVICEKEYWITHTLV:I = 0x60

.field private static final blacklist TC_GETDEVICEINFO:I = 0x61

.field private static final blacklist TC_GETDRKCERT:I = 0x5e

.field private static final blacklist TC_GETDRKUID:I = 0x5d

.field private static final blacklist TC_ISEXIST_DRK:I = 0x5c

.field private static final blacklist TC_SERVICE_AVAILABLE:I = 0x5a

.field private static final blacklist VERSION:Ljava/lang/String; = "1.0.0"

.field static blacklist getKeyWaitTime:I

.field private static final blacklist isDevDevice:Ljava/lang/String;

.field private static final blacklist isJDM:Z


# instance fields
.field private blacklist isJDMProductNotInHouse:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private blacklist mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field private blacklist mTlvKeyBlob:Ljava/lang/String;

.field private blacklist mTlvKeyBlobCounter:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 148
    const/16 v0, 0x226

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/DevRootKeyATCmd;->GoogleRootPubKey:[B

    .line 197
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/DevRootKeyATCmd;->GoogleDevRootPubKey:[B

    .line 287
    const-string v0, "in_house"

    const-string v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DevRootKeyATCmd;->isJDM:Z

    .line 289
    const-string/jumbo v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DevRootKeyATCmd;->isDevDevice:Ljava/lang/String;

    .line 292
    const-string v0, "_nativeJni.dk.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 810
    const/16 v0, 0x32

    sput v0, Lcom/android/server/DevRootKeyATCmd;->getKeyWaitTime:I

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

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevRootKeyATCmd;->isJDMProductNotInHouse:Z

    .line 297
    iput-object p1, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    .line 298
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 299
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 305
    iput-boolean v0, p0, Lcom/android/server/DevRootKeyATCmd;->isJDMProductNotInHouse:Z

    .line 306
    return-void
.end method

.method private blacklist appendKeyBlob(ILjava/lang/String;)Z
    .locals 3
    .param p1, "sequenceNo"    # I
    .param p2, "keyBlob"    # Ljava/lang/String;

    .line 772
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 774
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 775
    iput-object p2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    goto :goto_0

    .line 780
    :cond_0
    iget v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    .line 782
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 791
    :goto_0
    return v0

    .line 787
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkKeyValidity(I)I
    .locals 6
    .param p1, "keyType"    # I

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "ret":I
    const/4 v1, 0x1

    .line 815
    .local v1, "isSupportSKeymaster":Z
    const/4 v2, 0x1

    .line 816
    .local v2, "isSupportStrongboxKeymaster":Z
    const-string/jumbo v3, "ro.product.first_api_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x21

    if-lt v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 818
    .local v3, "isSupportIDAttestation":Z
    :goto_0
    const-string v5, "DEVROOT#ATCmd(1.0.0)"

    if-eqz v1, :cond_2

    .line 819
    if-eqz v3, :cond_1

    .line 820
    invoke-direct {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->installDeviceID(I)I

    move-result v0

    .line 821
    if-eqz v0, :cond_1

    .line 822
    const-string v4, "installDeviceID failed"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return v0

    .line 827
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v0

    .line 828
    if-eqz v0, :cond_2

    .line 829
    const-string/jumbo v4, "validateDeviceKey failed"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v0

    .line 834
    :cond_2
    if-eq p1, v4, :cond_3

    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    if-eqz v2, :cond_4

    .line 835
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKeyFromKeystore(IZ)I

    move-result v0

    .line 836
    if-eqz v0, :cond_4

    .line 837
    const-string/jumbo v4, "validateDeviceKeyFromKeystore failed"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return v0

    .line 842
    :cond_4
    return v0
.end method

.method private native blacklist generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private blacklist getKeyBlobIndex()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    return v0
.end method

.method private blacklist getTotalKeyBlob()[B
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist initTlvKeyBlob()V
    .locals 1

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 807
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 808
    return-void
.end method

.method private native blacklist installDeviceBoundCertificate(I[B)I
.end method

.method private blacklist installDeviceID(I)I
    .locals 22
    .param p1, "keyType"    # I

    .line 846
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 847
    .local v12, "telephonyService":Landroid/telephony/TelephonyManager;
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 848
    .local v13, "brand":Ljava/lang/String;
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 849
    .local v14, "device":Ljava/lang/String;
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 850
    .local v15, "produt":Ljava/lang/String;
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v16

    .line 851
    .local v16, "serial":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v17

    .line 852
    .local v17, "imei1":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v18

    .line 853
    .local v18, "imei2":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v19

    .line 854
    .local v19, "meid":Ljava/lang/String;
    sget-object v20, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 855
    .local v20, "manufacturer":Ljava/lang/String;
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 857
    .local v21, "model":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/android/server/DevRootKeyATCmd;->installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native blacklist installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native blacklist installDeviceUnboundKey(I[B)I
.end method

.method private blacklist isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z
    .locals 5
    .param p1, "rootCert"    # Ljava/security/cert/Certificate;
    .param p2, "keyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 861
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 862
    .local v0, "X509RootCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 863
    .local v1, "pubkey":Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 865
    .local v2, "pubkeyEncoded":[B
    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    .line 866
    :cond_0
    sget-object v4, Lcom/android/server/DevRootKeyATCmd;->GoogleRootPubKey:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/DevRootKeyATCmd;->GoogleDevRootPubKey:[B

    .line 867
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 872
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 868
    :cond_2
    :goto_0
    return v3
.end method

.method private native blacklist isExistDRK(I)I
.end method

.method private native blacklist isSupportedDrkV2()Z
.end method

.method private blacklist isValidEM()Z
    .locals 5

    .line 1061
    sget-boolean v0, Lcom/android/server/DevRootKeyATCmd;->isJDM:Z

    const/4 v1, 0x1

    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    if-nez v0, :cond_0

    .line 1062
    const-string v0, "It is not a JDM project"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return v1

    .line 1066
    :cond_0
    sget-object v0, Lcom/android/server/DevRootKeyATCmd;->isDevDevice:Ljava/lang/String;

    const-string v3, "0x1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    const-string v0, "It is not A User Product Device"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return v1

    .line 1071
    :cond_1
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v3, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 1073
    .local v0, "EMMgr":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 1074
    const-string v1, "Failed to connect to em service"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return v4

    .line 1078
    :cond_2
    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 1079
    const-string v3, "EM Status : Permitted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return v1

    .line 1083
    :cond_3
    const-string v1, "EM Status : Not Permitted"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return v4
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 755
    const/4 v0, 0x0

    .line 758
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 765
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 764
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 767
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private native blacklist readDrkUID(I)Ljava/lang/String;
.end method

.method private native blacklist readKeyInfo(I)[B
.end method

.method private native blacklist validateDeviceKey(I)I
.end method

.method private blacklist validateDeviceKeyFromKeystore(IZ)I
    .locals 29
    .param p1, "keyType"    # I
    .param p2, "isSupportIDAttestation"    # Z

    .line 876
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "gak_rsa_alias"

    const-string v4, "UTF-8"

    const-string v5, "SHA-256"

    const-string v6, "gak_ec_alias"

    const-string v7, "AndroidKeyStore"

    const/4 v8, 0x0

    .line 877
    .local v8, "ret":Z
    const-string v9, "gak_ec_alias"

    .line 878
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    const-string v10, "gak_ec_challenge"

    .line 879
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    const-string v11, "gak_rsa_alias"

    .line 880
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    const-string v12, "gak_rsa_challenge"

    .line 886
    .local v12, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    .line 887
    .local v14, "keyStore":Ljava/security/KeyStore;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 890
    new-instance v15, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v13, 0xc

    invoke-direct {v15, v6, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 891
    .local v15, "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/16 v13, 0x100

    invoke-virtual {v15, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 892
    const-string v13, "NONE"

    filled-new-array {v5, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 893
    const-string v13, "gak_ec_challenge"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_9

    move/from16 v17, v8

    .end local v8    # "ret":Z
    .local v17, "ret":Z
    :try_start_1
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8

    .line 894
    const-string/jumbo v8, "phone"

    if-eqz p2, :cond_4

    .line 895
    :try_start_2
    iget-object v13, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 896
    .local v13, "telephonyService":Landroid/telephony/TelephonyManager;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 897
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v21
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/ProviderException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_8

    .line 898
    .local v21, "serial":Ljava/lang/String;
    move-object/from16 v23, v9

    const/4 v9, 0x0

    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .local v23, "GAK_EC_ALIAS":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v13, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v24, v19

    .line 899
    .local v24, "imei":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v25
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/ProviderException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v9, v25

    .line 901
    .local v9, "meid":Ljava/lang/String;
    if-eqz v21, :cond_0

    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v25, :cond_0

    .line 902
    move-object/from16 v25, v10

    const/16 v20, 0x1

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v25, "GAK_EC_CHALLENGE":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v26, v11

    move-object/from16 v11, v22

    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v26, "GAK_RSA_ALIAS":Ljava/lang/String;
    :try_start_6
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 989
    .end local v9    # "meid":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v22, v12

    move/from16 v8, v17

    goto/16 :goto_6

    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v26, v11

    move-object v3, v0

    move-object/from16 v22, v12

    move/from16 v8, v17

    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto/16 :goto_6

    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object v3, v0

    move-object/from16 v22, v12

    move/from16 v8, v17

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto/16 :goto_6

    .line 901
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v9    # "meid":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .restart local v21    # "serial":Ljava/lang/String;
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "imei":Ljava/lang/String;
    :cond_0
    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v11, v22

    .line 903
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :goto_0
    if-eqz v24, :cond_1

    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v10, :cond_1

    .line 904
    move-object/from16 v22, v12

    const/4 v10, 0x2

    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .local v22, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :try_start_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 989
    .end local v9    # "meid":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v22, v12

    move-object v3, v0

    move/from16 v8, v17

    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    goto/16 :goto_6

    .line 903
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v9    # "meid":Ljava/lang/String;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .restart local v21    # "serial":Ljava/lang/String;
    .restart local v24    # "imei":Ljava/lang/String;
    :cond_1
    move-object/from16 v22, v12

    .line 905
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 906
    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    .line 909
    .local v10, "idTypes":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v27, v9

    .end local v9    # "meid":Ljava/lang/String;
    .local v27, "meid":Ljava/lang/String;
    array-length v9, v10

    if-ge v12, v9, :cond_3

    .line 910
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v10, v12

    .line 909
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v27

    goto :goto_2

    .line 912
    .end local v12    # "i":I
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 913
    invoke-virtual {v15, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_3

    .line 989
    .end local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v27    # "meid":Ljava/lang/String;
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v12, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object v3, v0

    move/from16 v8, v17

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto/16 :goto_6

    .line 894
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_4
    move-object/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    .line 915
    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :goto_3
    const/4 v9, 0x4

    if-ne v2, v9, :cond_5

    .line 916
    const/4 v10, 0x1

    invoke-virtual {v15, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 918
    :cond_5
    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v10

    .line 919
    .local v10, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v11, "EC"

    invoke-static {v11, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v11

    .line 920
    .local v11, "kpGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v11, v10}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 921
    invoke-virtual {v11}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 924
    invoke-virtual {v14, v6}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 925
    .local v6, "gakEcCertChain":[Ljava/security/cert/Certificate;
    invoke-direct {v1, v6}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v12
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/ProviderException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_7

    .line 926
    .end local v17    # "ret":Z
    .local v12, "ret":Z
    if-nez v12, :cond_6

    .line 927
    const/16 v3, -0x2cf6

    return v3

    .line 930
    :cond_6
    const/4 v13, 0x0

    :try_start_9
    aget-object v17, v6, v13

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v13, v17

    .line 931
    .local v13, "appEcCert":Ljava/security/cert/X509Certificate;
    const/16 v17, 0x1

    aget-object v21, v6, v17

    check-cast v21, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v21

    .line 932
    .local v17, "gakEcCert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 935
    array-length v9, v6

    const/16 v20, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-direct {v1, v9, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v9

    const/16 v24, -0x2cf7

    if-nez v9, :cond_7

    .line 936
    return v24

    .line 940
    :cond_7
    new-instance v9, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-object/from16 v27, v6

    const/16 v6, 0xc

    .end local v6    # "gakEcCertChain":[Ljava/security/cert/Certificate;
    .local v27, "gakEcCertChain":[Ljava/security/cert/Certificate;
    invoke-direct {v9, v3, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    move-object v6, v9

    .line 941
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .local v6, "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/16 v9, 0x800

    invoke-virtual {v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 942
    const-string v9, "PSS"

    const-string v15, "PKCS1"

    filled-new-array {v9, v15}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 943
    const-string v9, "SHA-1"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 944
    const-string v5, "gak_rsa_challenge"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 945
    if-eqz p2, :cond_c

    .line 946
    iget-object v4, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 947
    .local v4, "telephonyService":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    .line 949
    .local v8, "serial":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v15

    .line 950
    .local v15, "imei":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, v16

    .line 952
    .local v9, "meid":Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_8

    .line 953
    move-object/from16 v28, v4

    const/16 v16, 0x1

    .end local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    .local v28, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 952
    .end local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_8
    move-object/from16 v28, v4

    .line 954
    .end local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    :goto_4
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 955
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    .line 957
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 960
    .local v4, "idTypes":[I
    const/16 v16, 0x0

    move-object/from16 v18, v8

    move/from16 v8, v16

    .local v8, "i":I
    .local v18, "serial":Ljava/lang/String;
    :goto_5
    move-object/from16 v16, v9

    .end local v9    # "meid":Ljava/lang/String;
    .local v16, "meid":Ljava/lang/String;
    array-length v9, v4

    if-ge v8, v9, :cond_b

    .line 961
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v4, v8

    .line 960
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v16

    goto :goto_5

    .line 963
    .end local v8    # "i":I
    :cond_b
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 964
    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 966
    .end local v4    # "idTypes":[I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "imei":Ljava/lang/String;
    .end local v16    # "meid":Ljava/lang/String;
    .end local v18    # "serial":Ljava/lang/String;
    .end local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_c
    const/4 v4, 0x4

    if-ne v2, v4, :cond_d

    .line 967
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 969
    :cond_d
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 970
    .end local v10    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v5, "RSA"

    invoke-static {v5, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    .line 971
    .end local v11    # "kpGenerator":Ljava/security/KeyPairGenerator;
    .local v5, "kpGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v5, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 972
    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 975
    invoke-virtual {v14, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 976
    .local v3, "gakRsaCertChain":[Ljava/security/cert/Certificate;
    invoke-direct {v1, v3}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v7
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/ProviderException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_6

    move v8, v7

    .line 977
    .end local v12    # "ret":Z
    .local v8, "ret":Z
    if-nez v8, :cond_e

    .line 978
    const/16 v7, -0x2cf6

    return v7

    .line 981
    :cond_e
    const/4 v7, 0x0

    :try_start_a
    aget-object v9, v3, v7

    check-cast v9, Ljava/security/cert/X509Certificate;

    move-object v7, v9

    .line 982
    .local v7, "appRsaCert":Ljava/security/cert/X509Certificate;
    const/4 v9, 0x1

    aget-object v10, v3, v9

    check-cast v10, Ljava/security/cert/X509Certificate;

    move-object v9, v10

    .line 983
    .local v9, "gakRsaCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 986
    array-length v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v10, v3, v10

    invoke-direct {v1, v10, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v10
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/ProviderException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_a} :catch_5

    if-nez v10, :cond_f

    .line 987
    return v24

    .line 995
    .end local v3    # "gakRsaCertChain":[Ljava/security/cert/Certificate;
    .end local v7    # "appRsaCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "gakRsaCert":Ljava/security/cert/X509Certificate;
    .end local v13    # "appEcCert":Ljava/security/cert/X509Certificate;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v17    # "gakEcCert":Ljava/security/cert/X509Certificate;
    .end local v27    # "gakEcCertChain":[Ljava/security/cert/Certificate;
    :cond_f
    nop

    .line 997
    const/4 v3, 0x0

    return v3

    .line 989
    .end local v4    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v5    # "kpGenerator":Ljava/security/KeyPairGenerator;
    .end local v6    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :catch_5
    move-exception v0

    move-object v3, v0

    goto :goto_6

    .end local v8    # "ret":Z
    .restart local v12    # "ret":Z
    :catch_6
    move-exception v0

    move-object v3, v0

    move v8, v12

    goto :goto_6

    .end local v12    # "ret":Z
    .local v17, "ret":Z
    :catch_7
    move-exception v0

    move-object v3, v0

    move/from16 v8, v17

    goto :goto_6

    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v12, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object v3, v0

    move/from16 v8, v17

    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto :goto_6

    .end local v17    # "ret":Z
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v8    # "ret":Z
    .restart local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_9
    move-exception v0

    move/from16 v17, v8

    move-object/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object v3, v0

    .line 993
    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 994
    const/16 v4, -0x2cf6

    return v4
.end method

.method private blacklist verifyCertChains(Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1019
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1020
    .local v1, "len":I
    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1021
    const-string v4, "certification chain size is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return v3

    .line 1025
    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1026
    .local v4, "rootCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1027
    .local v5, "finalCert":Ljava/security/cert/X509Certificate;
    new-instance v6, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v6, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 1028
    .local v6, "ccsp":Ljava/security/cert/CollectionCertStoreParameters;
    const-string v7, "Collection"

    invoke-static {v7, v6}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v7

    .line 1032
    .local v7, "store":Ljava/security/cert/CertStore;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 1033
    .local v8, "validDate":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1034
    const/4 v9, 0x5

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1037
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v9, "certchain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    add-int/lit8 v11, v1, -0x1

    if-ge v10, v11, :cond_1

    .line 1039
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1042
    .end local v10    # "i":I
    :cond_1
    const-string v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v10

    .line 1043
    .local v10, "cp":Ljava/security/cert/CertPath;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1044
    .local v11, "trust":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    new-instance v12, Ljava/security/cert/TrustAnchor;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1045
    const-string v12, "PKIX"

    invoke-static {v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v12

    .line 1046
    .local v12, "cpv":Ljava/security/cert/CertPathValidator;
    new-instance v13, Ljava/security/cert/PKIXParameters;

    invoke-direct {v13, v11}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 1047
    .local v13, "param":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v13, v7}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 1048
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 1049
    invoke-virtual {v13, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1050
    invoke-virtual {v12, v10, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v14

    check-cast v14, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 1051
    .local v14, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    invoke-virtual {v14}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    .line 1053
    .local v15, "subjectPublicKey":Ljava/security/PublicKey;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1054
    const-string/jumbo v3, "wrong public key returned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v2, 0x0

    return v2

    .line 1057
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist verifyCertChains([Ljava/security/cert/Certificate;)Z
    .locals 5
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1003
    const/4 v0, 0x1

    .line 1004
    .local v0, "finalIdx":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v1, "x509Certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    array-length v2, p1

    .line 1007
    .local v2, "len":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1008
    aget-object v4, p1, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1009
    .local v4, "x509Cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    .end local v4    # "x509Cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1012
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains(Ljava/util/List;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public blacklist generateCertWithTlv(Z)Ljava/lang/String;
    .locals 7
    .param p1, "tlv"    # Z

    .line 643
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 646
    .local v1, "tlvTestExponent":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 649
    .local v0, "tlvTestKeyUsage":[B
    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    .line 656
    .local v2, "tlvTestSubjectAlterName":[B
    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    .line 658
    .local v3, "tlbTestHashAlgo":[B
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 659
    new-instance v5, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v5}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 660
    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 661
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 662
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/16 v6, 0x1d

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 663
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    goto :goto_0

    .line 665
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 668
    :goto_0
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v6, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    .line 671
    .local v4, "serviceCert":[B
    if-eqz v4, :cond_1

    .line 672
    const-string v5, "OK"

    return-object v5

    .line 674
    :cond_1
    const-string v5, "NG_FAIL"

    return-object v5

    nop

    :array_0
    .array-data 1
        0x2t
        0x2t
        0x1et
        -0x11t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x2t
        0x2t
        -0x4t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x30t
        -0x7at
        0x2et
        0x54t
        0x68t
        0x69t
        0x73t
        0x20t
        0x69t
        0x73t
        0x20t
        0x73t
        0x75t
        0x62t
        0x6at
        0x65t
        0x63t
        0x74t
        0x20t
        0x61t
        0x6ct
        0x74t
        0x65t
        0x72t
        0x6et
        0x61t
        0x74t
        0x69t
        0x76t
        0x65t
        0x20t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x20t
        0x66t
        0x69t
        0x65t
        0x6ct
        0x64t
        0x20t
        0x74t
        0x65t
        0x73t
        0x74t
        0x2et
        0x2dt
        0x5ft
    .end array-data

    nop

    :array_3
    .array-data 1
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
        0x5t
    .end array-data
.end method

.method public blacklist getCmd()Ljava/lang/String;
    .locals 1

    .line 310
    const-string v0, "DEVROOTK"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "cmd"    # Ljava/lang/String;

    .line 315
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ProcessCmd ["

    const-string v3, "DEVROOT#ATCmd(1.0.0)"

    const/4 v4, 0x0

    .line 317
    .local v4, "ret":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 319
    .local v5, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/DevRootKeyATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "params":[Ljava/lang/String;
    const-string v7, "NG_FAIL(INVALID_PARAM)"

    if-nez v6, :cond_0

    .line 322
    return-object v7

    .line 325
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v10, v6, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 329
    aget-object v8, v6, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v8, :cond_1

    :try_start_1
    aget-object v8, v6, v9

    .line 330
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v10, :cond_2

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 332
    :cond_1
    :goto_0
    :try_start_2
    aget-object v8, v6, v11

    const-string v12, "0"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v8, :cond_2

    .line 334
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 335
    .end local v5    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 339
    .end local v0    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v6, v9

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v12, v6, v10

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    const-string v13, "01"

    const-string v15, " TB-"

    const-string v14, "NG_FAIL(DATA MISSED) SN-"

    const-string v12, "_"

    const-string v9, "FFF"

    const-string v10, "NG_FAIL"

    const-string v16, "NG_FAIL(NO_TOKEN)"

    const-string v11, "NG_FAIL "

    move/from16 v17, v4

    .end local v4    # "ret":I
    .local v17, "ret":I
    const-string v4, "OK"

    packed-switch v8, :pswitch_data_0

    .line 628
    :pswitch_0
    move-object/from16 v18, v3

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 583
    :pswitch_1
    const/4 v8, 0x2

    aget-object v10, v6, v8

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-virtual {v10, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "strSequenceNo":Ljava/lang/String;
    aget-object v10, v6, v8

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_7

    .line 592
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_1

    .line 595
    .end local v2    # "sequenceNo":I
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 597
    .restart local v2    # "sequenceNo":I
    :goto_1
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v10, v6, v7

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v7, v6, v7

    .line 598
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 597
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 598
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 597
    invoke-direct {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 601
    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_7

    .line 604
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_6

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v7

    .end local v17    # "ret":I
    .local v7, "ret":I
    goto :goto_2

    .line 612
    .end local v7    # "ret":I
    .restart local v17    # "ret":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 615
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :goto_2
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 618
    if-eqz v7, :cond_8

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 621
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_7

    .line 604
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_7
    move/from16 v7, v17

    .line 624
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 625
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_7

    .line 543
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_2
    move-object/from16 v18, v3

    const/4 v2, 0x2

    :try_start_7
    aget-object v3, v6, v2

    const/4 v8, 0x5

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 545
    .restart local v3    # "strSequenceNo":Ljava/lang/String;
    aget-object v8, v6, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_7

    .line 552
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_3

    .line 555
    .end local v2    # "sequenceNo":I
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 557
    .restart local v2    # "sequenceNo":I
    :goto_3
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v10, v6, v7

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v7, v6, v7

    .line 558
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 557
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 558
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 557
    invoke-direct {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_7

    .line 564
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_b
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 569
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 572
    if-eqz v7, :cond_d

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 575
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_7

    .line 564
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_c
    move/from16 v7, v17

    .line 578
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 579
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_7

    .line 526
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_3
    move-object/from16 v18, v3

    const/4 v2, 0x2

    :try_start_9
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_e

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_7

    .line 532
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x2

    aget-object v3, v6, v2

    .line 533
    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v2, v6, v2

    .line 534
    const/16 v7, 0x11

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 532
    const/4 v4, 0x3

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 536
    .local v2, "retBytes":[B
    if-eqz v2, :cond_f

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 539
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_7

    .line 483
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v18, v3

    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/4 v8, 0x5

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "strSequenceNo":Ljava/lang/String;
    aget-object v8, v6, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_7

    .line 492
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_10
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_4

    .line 495
    .end local v2    # "sequenceNo":I
    :cond_11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 497
    .restart local v2    # "sequenceNo":I
    :goto_4
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v10, v6, v7

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v12, v6, v7

    .line 498
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    .line 497
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-direct {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_7

    .line 504
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_12
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v7

    if-nez v7, :cond_13

    .line 507
    return-object v16

    .line 510
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 513
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 516
    if-eqz v7, :cond_15

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 519
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_7

    .line 504
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_14
    move/from16 v7, v17

    .line 522
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 523
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_7

    .line 633
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    move v4, v7

    goto/16 :goto_8

    .line 462
    .end local v7    # "ret":I
    .restart local v17    # "ret":I
    :pswitch_5
    move-object/from16 v18, v3

    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_16

    .line 463
    return-object v16

    .line 466
    :cond_16
    const/4 v2, 0x2

    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_17

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_7

    .line 472
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_17
    const/4 v2, 0x2

    aget-object v3, v6, v2

    .line 473
    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v7, v6, v2

    .line 474
    const/16 v8, 0x11

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 476
    .local v2, "retBytes":[B
    if-eqz v2, :cond_18

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 479
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_7

    .line 429
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v18, v3

    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 432
    .local v2, "strSequenceNo":Ljava/lang/String;
    const-string v3, "FF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v3

    if-nez v3, :cond_19

    .line 435
    return-object v16

    .line 438
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v1, v7, v3}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 441
    .end local v17    # "ret":I
    .local v3, "ret":I
    if-nez v3, :cond_1a

    .line 442
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_5

    .line 444
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 447
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move v4, v3

    goto/16 :goto_7

    .line 633
    .end local v2    # "strSequenceNo":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v2, p1

    move v4, v3

    goto/16 :goto_8

    .line 451
    .end local v3    # "ret":I
    .restart local v2    # "strSequenceNo":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_1b
    :try_start_d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 453
    .local v3, "sequenceNo":I
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v9, v6, v7

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget-object v7, v6, v7

    .line 454
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 453
    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 453
    invoke-direct {v1, v3, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 457
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_7

    .line 421
    .end local v2    # "strSequenceNo":Ljava/lang/String;
    .end local v3    # "sequenceNo":I
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v18, v3

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->readKeyInfo(I)[B

    move-result-object v2

    .line 422
    .local v2, "retBytes":[B
    if-eqz v2, :cond_1d

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 425
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_7

    .line 410
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v18, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 411
    return-object v16

    .line 414
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 417
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_7

    .line 398
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v18, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_20

    .line 399
    return-object v16

    .line 401
    :cond_20
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->readDrkUID(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "Uid":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 406
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_7

    .line 390
    .end local v2    # "Uid":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v18, v3

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 391
    .end local v17    # "ret":I
    .local v2, "ret":I
    if-nez v2, :cond_22

    .line 392
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 394
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 395
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_7

    .line 382
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_b
    move-object/from16 v18, v3

    const/4 v2, 0x1

    :try_start_f
    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 383
    .end local v17    # "ret":I
    .restart local v2    # "ret":I
    if-nez v2, :cond_23

    .line 384
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 386
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 387
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_7

    .line 374
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_c
    move-object/from16 v18, v3

    const/4 v2, 0x3

    :try_start_11
    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 375
    .end local v17    # "ret":I
    .restart local v2    # "ret":I
    if-nez v2, :cond_24

    .line 376
    :try_start_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 378
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 379
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_7

    .line 633
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_3
    move-exception v0

    move v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_8

    .line 370
    .end local v2    # "ret":I
    .restart local v17    # "ret":I
    :pswitch_d
    move-object/from16 v18, v3

    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_7

    .line 343
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_e
    move-object/from16 v18, v3

    const-string v2, "factory"

    const-string/jumbo v3, "ro.factory.factory_binary"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 344
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->isExistDRK(I)I

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 345
    .end local v17    # "ret":I
    .local v2, "ret":I
    if-nez v2, :cond_25

    .line 346
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 348
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 350
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_26
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_27

    .line 351
    return-object v16

    .line 354
    :cond_27
    iget-object v2, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v2, :cond_28

    .line 355
    const-string v0, "NG_FAIL(INSTANCE ERROR)"

    return-object v0

    .line 357
    :cond_28
    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v2

    if-nez v2, :cond_29

    .line 358
    const-string v0, "NG_FAIL(FAILED CONNECTION)"

    return-object v0

    .line 360
    :cond_29
    iget-object v2, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    goto :goto_7

    .line 363
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto :goto_7

    .line 633
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v4, v17

    goto :goto_8

    .line 628
    :goto_6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v6, v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/DevRootKeyATCmd;->processTestCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    move-object v5, v2

    move/from16 v4, v17

    .line 631
    .end local v17    # "ret":I
    .local v4, "ret":I
    :goto_7
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    move-object/from16 v2, p1

    :try_start_17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    .line 637
    goto :goto_9

    .line 633
    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_8

    :catch_6
    move-exception v0

    move/from16 v17, v4

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist processTestCmd(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "subData"    # Ljava/lang/String;

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "tmpResult":[B
    const/4 v1, 0x0

    .line 683
    .local v1, "tmpStrResult":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    const-string v2, "NG_FAIL(UNIMPLEMENTED_CMD)"

    return-object v2

    .line 687
    :cond_0
    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v2, :cond_1

    .line 688
    const-string v2, "NG_FAIL(INSTANCE ERROR)"

    return-object v2

    .line 692
    :cond_1
    const/4 v3, 0x1

    const-string v4, "NG_FAIL"

    const-string v5, "OK"

    packed-switch p1, :pswitch_data_0

    .line 742
    :try_start_0
    const-string v2, "NG_FAIL(INVALID_PARAM)"

    goto/16 :goto_0

    .line 735
    :pswitch_0
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    move-result-object v2

    .line 736
    .local v2, "dInfo":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    if-nez v2, :cond_2

    .line 737
    move-object v3, v4

    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 739
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    move-object v3, v5

    .line 740
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 732
    .end local v2    # "dInfo":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 733
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 729
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 730
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 720
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyCertificate(I)[B

    move-result-object v2

    move-object v0, v2

    .line 723
    if-nez v0, :cond_3

    .line 724
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 726
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    move-object v3, v5

    .line 727
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 712
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 714
    if-nez v1, :cond_4

    .line 715
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 717
    .end local v3    # "result":Ljava/lang/String;
    :cond_4
    move-object v3, v5

    .line 718
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 706
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 707
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 709
    .end local v3    # "result":Ljava/lang/String;
    :cond_5
    move-object v3, v5

    .line 710
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 700
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 701
    move-object v3, v5

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 703
    .end local v3    # "result":Ljava/lang/String;
    :cond_6
    move-object v3, v4

    .line 704
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 745
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 694
    :pswitch_7
    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v2

    if-nez v2, :cond_7

    .line 695
    const-string v2, "NG_FAIL(FAILED CONNECTION)"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 697
    .end local v3    # "result":Ljava/lang/String;
    :cond_7
    move-object v3, v5

    .line 698
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 742
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    move-object v3, v2

    .line 749
    .restart local v3    # "result":Ljava/lang/String;
    :goto_1
    goto :goto_3

    .line 747
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 750
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/lang/String;
    :goto_3
    return-object v3

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
