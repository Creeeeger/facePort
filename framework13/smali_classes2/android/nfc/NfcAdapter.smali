.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$NfcUnlockHandler;,
        Landroid/nfc/NfcAdapter$OnTagRemovedListener;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;,
        Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;,
        Landroid/nfc/NfcAdapter$ReaderCallback;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ADAPTER_RW_P2P_STATE_CHANGED:Ljava/lang/String; = "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

.field public static final whitelist ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final blacklist ACTION_ADAPTER_STATE_CHANGE_READER:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

.field public static final greylist-max-o ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_DONE"

.field public static final greylist-max-o ACTION_HANDOVER_TRANSFER_STARTED:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_STARTED"

.field public static final whitelist ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final whitelist ACTION_PREFERRED_PAYMENT_CHANGED:Ljava/lang/String; = "android.nfc.action.PREFERRED_PAYMENT_CHANGED"

.field public static final blacklist ACTION_REQUIRE_UNLOCK_FOR_NFC:Ljava/lang/String; = "android.nfc.action.REQUIRE_UNLOCK_FOR_NFC"

.field public static final whitelist ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final greylist-max-o ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final whitelist ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final whitelist ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "android.nfc.action.TRANSACTION_DETECTED"

.field public static final blacklist DUALSWP_PREFERRED_SIM_SLOT_1:I = 0x0

.field public static final blacklist DUALSWP_PREFERRED_SIM_SLOT_2:I = 0x1

.field public static final blacklist DUALSWP_PREFERRED_SIM_SLOT_INVALID:I = -0x1

.field public static final blacklist EXTRA_ADAPTER_RW_P2P_STATE:Ljava/lang/String; = "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

.field public static final whitelist EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final whitelist EXTRA_AID:Ljava/lang/String; = "android.nfc.extra.AID"

.field public static final whitelist EXTRA_DATA:Ljava/lang/String; = "android.nfc.extra.DATA"

.field public static final greylist-max-o EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_STATUS"

.field public static final greylist-max-o EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_URI"

.field public static final whitelist EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final whitelist EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final whitelist EXTRA_PREFERRED_PAYMENT_CHANGED_REASON:Ljava/lang/String; = "android.nfc.extra.PREFERRED_PAYMENT_CHANGED_REASON"

.field public static final whitelist EXTRA_READER_PRESENCE_CHECK_DELAY:Ljava/lang/String; = "presence"

.field public static final whitelist EXTRA_SECURE_ELEMENT_NAME:Ljava/lang/String; = "android.nfc.extra.SECURE_ELEMENT_NAME"

.field public static final whitelist EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final whitelist FLAG_NDEF_PUSH_NO_CONFIRM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_READER_NFC_A:I = 0x1

.field public static final whitelist FLAG_READER_NFC_B:I = 0x2

.field public static final whitelist FLAG_READER_NFC_BARCODE:I = 0x10

.field public static final whitelist FLAG_READER_NFC_F:I = 0x4

.field public static final whitelist FLAG_READER_NFC_V:I = 0x8

.field public static final whitelist FLAG_READER_NO_PLATFORM_SOUNDS:I = 0x100

.field public static final whitelist FLAG_READER_SKIP_NDEF_CHECK:I = 0x80

.field public static final greylist-max-o HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final greylist-max-o HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field private static final blacklist MDM_REJECT_TYPE_DISABLE:I = 0x1

.field private static final blacklist MDM_REJECT_TYPE_ENABLE:I = 0x0

.field public static final whitelist PREFERRED_PAYMENT_CHANGED:I = 0x2

.field public static final whitelist PREFERRED_PAYMENT_LOADED:I = 0x1

.field public static final whitelist PREFERRED_PAYMENT_UPDATED:I = 0x3

.field public static final blacklist SEM_FLAG_DISCOVERY_TECHNOLOGY_DISABLE:I = 0x0

.field public static final blacklist SEM_FLAG_DISCOVERY_TECHNOLOGY_KEEP_CURRENT:I = -0x1

.field public static final whitelist SEM_STATE_CARD_MODE_ON:I = 0x5

.field public static final whitelist STATE_OFF:I = 0x1

.field public static final whitelist STATE_ON:I = 0x3

.field public static final blacklist STATE_RW_P2P_OFF:I = 0xb

.field public static final blacklist STATE_RW_P2P_ON:I = 0xd

.field public static final blacklist STATE_RW_P2P_TURNING_OFF:I = 0xe

.field public static final blacklist STATE_RW_P2P_TURNING_ON:I = 0xc

.field public static final whitelist STATE_TURNING_OFF:I = 0x4

.field public static final whitelist STATE_TURNING_ON:I = 0x2

.field static final greylist-max-o TAG:Ljava/lang/String; = "NFC"

.field public static final blacklist TECHNOLOGY_MASK_A:I = 0x1

.field public static final blacklist TECHNOLOGY_MASK_B:I = 0x2

.field public static final blacklist TECHNOLOGY_MASK_F:I = 0x4

.field static greylist-max-o sCardEmulationService:Landroid/nfc/INfcCardEmulation;

.field static blacklist sHasBeamFeature:Z

.field static greylist-max-o sHasNfcFeature:Z

.field static greylist-max-o sIsInitialized:Z

.field static greylist-max-o sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

.field static greylist-max-o sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static greylist sService:Landroid/nfc/INfcAdapter;

.field static greylist-max-o sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

.field private blacklist mDevSettingCr:Landroid/database/Cursor;

.field greylist-max-o mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field final greylist-max-o mLock:Ljava/lang/Object;

.field final greylist-max-o mNfcActivityManager:Landroid/nfc/NfcActivityManager;

.field final greylist-max-o mNfcUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/nfc/NfcAdapter$NfcUnlockHandler;",
            "Landroid/nfc/INfcUnlockHandler;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRestrictionCr:Landroid/database/Cursor;

.field greylist-max-o mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 471
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1880
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 904
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 905
    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 906
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    .line 908
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    .line 909
    new-instance v0, Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;-><init>(Landroid/nfc/INfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    .line 910
    return-void
.end method

.method private blacklist auditLog(ZLjava/lang/String;)V
    .locals 5
    .param p1, "flag"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 2507
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    const-string v0, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2509
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2510
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "severity"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2511
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2512
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "outcome"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2513
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2514
    const-string v2, "component"

    const-string v3, "NFC"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2519
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static greylist getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NFC"

    const-string v2, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 849
    if-eqz p0, :cond_3

    .line 852
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 853
    if-eqz p0, :cond_2

    .line 858
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 860
    return-object v1

    .line 864
    :cond_0
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 865
    .local v0, "manager":Landroid/nfc/NfcManager;
    if-nez v0, :cond_1

    .line 867
    return-object v1

    .line 876
    :cond_1
    invoke-virtual {v0, p0}, Landroid/nfc/NfcManager;->bindNfcService(Landroid/content/Context;)V

    .line 879
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1

    .line 854
    .end local v0    # "manager":Landroid/nfc/NfcManager;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized greylist getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 772
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v1, :cond_5

    .line 773
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v1

    sput-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    .line 774
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasBeamFeature()Z

    move-result v1

    sput-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    .line 775
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcHceFeature()Z

    move-result v1

    .line 777
    .local v1, "hasHceFeature":Z
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    const-string v2, "NFC"

    const-string/jumbo v3, "this device does not have NFC support"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 781
    :cond_1
    :goto_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 782
    if-eqz v2, :cond_4

    .line 786
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 788
    :try_start_1
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    goto :goto_1

    .line 789
    :catch_0
    move-exception v2

    .line 790
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "NFC"

    const-string v4, "could not retrieve NFC Tag service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 794
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 796
    :try_start_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 800
    nop

    .line 802
    :try_start_4
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 806
    goto :goto_2

    .line 803
    :catch_1
    move-exception v2

    .line 804
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "NFC"

    const-string v4, "could not retrieve card emulation service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 797
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 798
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "NFC"

    const-string v4, "could not retrieve NFC-F card emulation service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 809
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    const/4 v2, 0x1

    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    goto :goto_3

    .line 783
    :cond_4
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 811
    .end local v1    # "hasHceFeature":Z
    :cond_5
    :goto_3
    if-nez p0, :cond_7

    .line 812
    sget-object v1, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_6

    .line 813
    new-instance v1, Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 815
    :cond_6
    sget-object v1, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object v1

    .line 817
    :cond_7
    :try_start_6
    sget-object v1, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcAdapter;

    .line 818
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v1, :cond_8

    .line 819
    new-instance v2, Landroid/nfc/NfcAdapter;

    invoke-direct {v2, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 820
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 822
    :cond_8
    monitor-exit v0

    return-object v1

    .line 771
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static greylist-max-o getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .line 828
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 829
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 830
    const/4 v1, 0x0

    return-object v1

    .line 832
    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist hasBeamFeature()Z
    .locals 5

    .line 682
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 683
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "NFC"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 684
    const-string v3, "Cannot get package manager, assuming no Android Beam feature"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v2

    .line 688
    :cond_0
    :try_start_0
    const-string v3, "android.sofware.nfc.beam"

    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 689
    :catch_0
    move-exception v3

    .line 690
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no Android Beam feature"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    return v2
.end method

.method private static greylist-max-o hasNfcFeature()Z
    .locals 5

    .line 702
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 703
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "NFC"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 704
    const-string v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return v2

    .line 708
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc"

    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 709
    :catch_0
    move-exception v3

    .line 710
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    return v2
.end method

.method private static greylist-max-o hasNfcHceFeature()Z
    .locals 5

    .line 721
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 722
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "NFC"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 723
    const-string v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v2

    .line 727
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc.hce"

    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.hardware.nfc.hcef"

    .line 728
    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 727
    :cond_2
    return v2

    .line 729
    :catch_0
    move-exception v3

    .line 730
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    return v2
.end method

.method private blacklist isAndroidBeamAllowed(Z)Z
    .locals 11
    .param p1, "showMsg"    # Z

    .line 2474
    const-string v0, "NFC"

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2476
    :try_start_0
    const-string v1, "isAndroidBeamAllowed - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2478
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 2479
    .local v1, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showMsg is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "isAndroidBeamAllowed"

    const/4 v10, 0x0

    move-object v9, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    .line 2482
    if-eqz v3, :cond_1

    .line 2483
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2485
    :try_start_1
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    const-string v5, "isAndroidBeamAllowed"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2486
    const-string v3, "AndroidBeam is not allowed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2487
    nop

    .line 2492
    :try_start_2
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2487
    return v4

    .line 2492
    :cond_0
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 2489
    :catch_0
    move-exception v3

    .line 2490
    .local v3, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v3}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2492
    .end local v3    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_4
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2493
    nop

    .line 2499
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    goto :goto_2

    .line 2492
    .restart local v1    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2493
    nop

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "showMsg":Z
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2495
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "showMsg":Z
    :cond_1
    return v2

    .line 2497
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2498
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to talk to Restriction Policy"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return v2
.end method

.method private blacklist isNFCAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 3567
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->isNFCAllowed(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3568
    :catch_0
    move-exception v0

    .line 3569
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call isNFCAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NFC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isNFCStateChangeAllowed(I)Z
    .locals 16
    .param p1, "rejectType"    # I

    .line 2523
    move-object/from16 v1, p0

    const-string v2, "NFC"

    invoke-direct/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2524
    if-nez p1, :cond_0

    const-string v0, "Enabling NFC"

    goto :goto_0

    :cond_0
    const-string v0, "Disabling NFC"

    :goto_0
    move-object v3, v0

    .line 2525
    .local v3, "rejectOption":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nfc policy: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2527
    .local v4, "msg":Ljava/lang/String;
    :try_start_0
    const-string v0, "isNFCStateChangeAllowed - Begin"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2529
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v1, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "isSettingsChangesAllowed"

    const-string/jumbo v0, "true"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2531
    const-string v5, "EDM : isNFCStateChangeAllowed is false. failed Reason: "

    const-string v6, "Enable reject"

    const-string v7, "Disable reject"

    const-string v8, "false"

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    .line 2532
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2534
    :try_start_2
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    const-string v10, "isSettingsChangesAllowed"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2535
    const-string v0, "Restriction policy block settings change"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    if-nez p1, :cond_1

    move-object v0, v6

    goto :goto_1

    :cond_1
    move-object v0, v7

    .line 2537
    .local v0, "rejectMsg":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 2538
    invoke-direct {v1, v9, v4}, Landroid/nfc/NfcAdapter;->auditLog(ZLjava/lang/String;)V
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2539
    nop

    .line 2544
    :try_start_3
    iget-object v5, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2539
    return v9

    .line 2544
    .end local v0    # "rejectMsg":Ljava/lang/String;
    :cond_2
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2541
    :catch_0
    move-exception v0

    .line 2542
    .local v0, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2544
    .end local v0    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_5
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2545
    goto :goto_4

    .line 2544
    :goto_3
    iget-object v5, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2545
    nop

    .end local v3    # "rejectOption":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "rejectType":I
    throw v0

    .line 2548
    .restart local v3    # "rejectOption":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "rejectType":I
    :cond_3
    :goto_4
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    .line 2549
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, v1, Landroid/nfc/NfcAdapter;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const-string v13, "isNFCStateChangeAllowed"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    .line 2551
    if-eqz v0, :cond_6

    .line 2552
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2554
    :try_start_6
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    const-string v10, "isNFCStateChangeAllowed"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2555
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Landroid/nfc/NfcAdapter$3;

    invoke-direct {v8, v1}, Landroid/nfc/NfcAdapter$3;-><init>(Landroid/nfc/NfcAdapter;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2561
    const-string v0, "Restriction policy block NFC state change"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    move-object v6, v7

    :goto_5
    move-object v0, v6

    .line 2563
    .local v0, "rejectMsg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2564
    invoke-direct {v1, v9, v4}, Landroid/nfc/NfcAdapter;->auditLog(ZLjava/lang/String;)V
    :try_end_6
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2565
    nop

    .line 2570
    :try_start_7
    iget-object v5, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2565
    return v9

    .line 2570
    .end local v0    # "rejectMsg":Ljava/lang/String;
    :cond_5
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 2567
    :catch_1
    move-exception v0

    .line 2568
    .local v0, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_8
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2570
    .end local v0    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_9
    iget-object v0, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2571
    goto :goto_8

    .line 2570
    :goto_7
    iget-object v5, v1, Landroid/nfc/NfcAdapter;->mDevSettingCr:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2571
    nop

    .end local v3    # "rejectOption":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "rejectType":I
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 2575
    .restart local v3    # "rejectOption":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "rejectType":I
    :cond_6
    :goto_8
    goto :goto_9

    .line 2573
    :catch_2
    move-exception v0

    .line 2574
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Failed to talk to Misc Policy"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "rejectOption":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7
    :goto_9
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isSupportFaver3()Z
    .locals 1

    .line 3584
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isSupportKnoxContainer()Z
    .locals 1

    .line 3575
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isSupportKnoxMdm()Z
    .locals 1

    .line 3579
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .param p2, "tagTechnologies"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2600
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2601
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2

    .line 2604
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2606
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2607
    return v1

    .line 2611
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2612
    :try_start_2
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2614
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 2615
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2618
    :cond_1
    new-instance v2, Landroid/nfc/NfcAdapter$4;

    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$4;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    .line 2625
    .local v2, "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 2626
    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    move-result-object v4

    .line 2625
    invoke-interface {v3, v2, v4}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 2627
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    nop

    .end local v2    # "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    monitor-exit v0

    .line 2635
    nop

    .line 2637
    const/4 v0, 0x1

    return v0

    .line 2628
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .end local p2    # "tagTechnologies":[Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2632
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .restart local p2    # "tagTechnologies":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2633
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NFC"

    const-string v3, "Unable to register LockscreenDispatch"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2634
    return v1

    .line 2629
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2631
    return v1

    .line 2602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .end local p2    # "tagTechnologies":[Ljava/lang/String;
    throw v1

    .line 2604
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .restart local p2    # "tagTechnologies":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public blacklist apcCommand(I[B)[B
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2992
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcAdapter;->apcCommand(I[B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2993
    :catch_0
    move-exception v0

    .line 2994
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2995
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Fail apcCommand"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 990
    const-string v0, "NFC"

    const-string v1, "NFC service dead - attempting to recover"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 992
    .local v1, "service":Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    .line 993
    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void

    .line 1000
    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 1002
    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1008
    nop

    .line 1011
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1014
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v2

    .line 1013
    .local v2, "ee":Landroid/os/RemoteException;
    const-string v3, "could not retrieve NFC card emulation service during service recovery"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .end local v2    # "ee":Landroid/os/RemoteException;
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1020
    goto :goto_1

    .line 1018
    :catch_1
    move-exception v2

    .line 1019
    .restart local v2    # "ee":Landroid/os/RemoteException;
    const-string v3, "could not retrieve NFC-F card emulation service during service recovery"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    .end local v2    # "ee":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 1003
    :catch_2
    move-exception v2

    .line 1004
    .restart local v2    # "ee":Landroid/os/RemoteException;
    const-string v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method

.method public blacklist changeRouting(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 2005
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v0, "NFC"

    const-string v1, "SPay : changeRouting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/nfc/NfcActivityManager;->changeRouting(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2007
    return-void
.end method

.method public whitelist disable()Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1194
    const-string v0, "NFC"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportFaver3()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1195
    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1196
    const-string v3, "EDM : nfc policy disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return v2

    .line 1201
    :cond_0
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3, v1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1202
    :catch_0
    move-exception v3

    .line 1203
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v3}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1205
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v5, "Failed to recover NFC Service."

    if-nez v4, :cond_1

    .line 1206
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    return v2

    .line 1210
    :cond_1
    :try_start_1
    invoke-interface {v4, v1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1211
    :catch_1
    move-exception v1

    .line 1212
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist disable(Z)Z
    .locals 5
    .param p1, "persist"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1226
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1230
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 1231
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return v2

    .line 1235
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1236
    :catch_1
    move-exception v1

    .line 1237
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1870
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1871
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 1874
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1875
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1877
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 1878
    return-void

    .line 1872
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1874
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "force"    # Z

    .line 1889
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 1890
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1891
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must disable foreground dispatching while your activity is still resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "force":Z
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "force":Z
    :cond_1
    :goto_0
    goto :goto_1

    .line 1894
    :catch_0
    move-exception v0

    .line 1895
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1897
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2168
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2169
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2

    .line 2172
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_0

    .line 2173
    monitor-exit v0

    return-void

    .line 2175
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    if-eqz p1, :cond_1

    .line 2179
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 2180
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 2181
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 2182
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 2183
    return-void

    .line 2177
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2170
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 2175
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist disableListenMode(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1966
    const-string v0, "NFC"

    const-string v1, "SPay : disableListenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->unsetDiscoveryTech(Landroid/app/Activity;)V

    .line 1968
    return-void
.end method

.method public whitelist disableNdefPush()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2308
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2309
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 2312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    :try_start_1
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 2315
    :catch_0
    move-exception v0

    .line 2316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2317
    const/4 v1, 0x0

    return v1

    .line 2310
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    throw v1

    .line 2312
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist disableReaderMode(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 2019
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2020
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_0

    .line 2023
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    .line 2025
    return-void

    .line 2021
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 2023
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o dispatch(Landroid/nfc/Tag;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 2451
    if-eqz p1, :cond_0

    .line 2455
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2458
    goto :goto_0

    .line 2456
    :catch_0
    move-exception v0

    .line 2457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2459
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2452
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enable()Z
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1137
    const-string v0, "NFC"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportFaver3()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1138
    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1139
    const-string v2, "EDM : nfc policy disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return v1

    .line 1145
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myUID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v2, "callHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1149
    .local v6, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    nop

    .end local v6    # "st":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1152
    .local v3, "callStrings":[Ljava/lang/String;
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v4, v3}, Landroid/nfc/INfcAdapter;->storeEnableHistory([Ljava/lang/String;)V

    .line 1154
    .end local v2    # "callHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "callStrings":[Ljava/lang/String;
    :cond_2
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1155
    :catch_0
    move-exception v2

    .line 1156
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v2}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1158
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v4, "Failed to recover NFC Service."

    if-nez v3, :cond_3

    .line 1159
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return v1

    .line 1163
    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1164
    :catch_1
    move-exception v3

    .line 1165
    .local v3, "ee":Landroid/os/RemoteException;
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v3    # "ee":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist enableDisableSeTestMode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "SE"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2949
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcAdapter;->enableDisableSeTestMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2953
    nop

    .line 2954
    return-void

    .line 2950
    :catch_0
    move-exception v0

    .line 2951
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Fail to enableDisableSeTestMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2952
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "filters"    # [Landroid/content/IntentFilter;
    .param p4, "techLists"    # [[Ljava/lang/String;

    .line 1820
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1821
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_4

    .line 1824
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->isNFCAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    const-string v0, "NFC"

    const-string v1, "enableForegroundDispatch is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    return-void

    .line 1834
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1837
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1842
    const/4 v0, 0x0

    .line 1843
    .local v0, "parcel":Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_1

    :try_start_1
    array-length v1, p4

    if-lez v1, :cond_1

    .line 1844
    new-instance v1, Landroid/nfc/TechListParcel;

    invoke-direct {v1, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    move-object v0, v1

    .line 1846
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1848
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p2, p3, v0}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1851
    .end local v0    # "parcel":Landroid/nfc/TechListParcel;
    goto :goto_0

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1852
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1838
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Foreground dispatch can only be enabled when your activity is resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1835
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1822
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "intent":Landroid/app/PendingIntent;
    .end local p3    # "filters":[Landroid/content/IntentFilter;
    .end local p4    # "techLists":[[Ljava/lang/String;
    throw v1

    .line 1824
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "intent":Landroid/app/PendingIntent;
    .restart local p3    # "filters":[Landroid/content/IntentFilter;
    .restart local p4    # "techLists":[[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2122
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2123
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_3

    .line 2126
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_0

    .line 2127
    monitor-exit v0

    return-void

    .line 2129
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxContainer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->isNFCAllowed(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2133
    const-string v0, "NFC"

    const-string v1, " enableForegroundNdefPush is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    return-void

    .line 2139
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2142
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 2143
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 2144
    return-void

    .line 2140
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2124
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "message":Landroid/nfc/NdefMessage;
    throw v1

    .line 2129
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "message":Landroid/nfc/NdefMessage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist enableListenMode(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "flags"    # I

    .line 1947
    const-string v0, "NFC"

    const-string v1, "SPay : enableListenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1950
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isNFCAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1951
    const-string v1, " enable reader mode is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    return-void

    .line 1957
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/nfc/NfcActivityManager;->setDiscoveryTech(Landroid/app/Activity;II)V

    .line 1958
    return-void
.end method

.method public whitelist enableNdefPush()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2281
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_1

    .line 2285
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2286
    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2287
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    return v0

    .line 2293
    :cond_0
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2294
    :catch_0
    move-exception v0

    .line 2295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2296
    return v1

    .line 2282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1923
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1924
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_1

    .line 1927
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->isNFCAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1931
    const-string v0, "NFC"

    const-string v1, " enable reader mode is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    return-void

    .line 1937
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 1938
    return-void

    .line 1925
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .end local p3    # "flags":I
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v1

    .line 1927
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .restart local p3    # "flags":I
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist enableSecureNfc(Z)Z
    .locals 5
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2194
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_1

    .line 2198
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setNfcSecure(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2199
    :catch_0
    move-exception v0

    .line 2200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2202
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 2203
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return v2

    .line 2207
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setNfcSecure(Z)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 2208
    :catch_1
    move-exception v1

    .line 2209
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 2195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o enforceResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 2791
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    return-void

    .line 2792
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAdapterRwP2pState()I
    .locals 2

    .line 2681
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getRwP2pState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2682
    :catch_0
    move-exception v0

    .line 2683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2684
    const/16 v1, 0xb

    return v1
.end method

.method public greylist getAdapterState()I
    .locals 5

    .line 1099
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1103
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x1

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 1104
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return v2

    .line 1108
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 1109
    :catch_1
    move-exception v1

    .line 1110
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public blacklist getBigDataNciLog()V
    .locals 1

    .line 3229
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getBigDataNciLog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3232
    goto :goto_0

    .line 3230
    :catch_0
    move-exception v0

    .line 3231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3233
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .line 944
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 945
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    return-object v0
.end method

.method public greylist getContext()Landroid/content/Context;
    .locals 1

    .line 917
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getDefaultRoutingDestination()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2977
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2978
    .local v0, "se":Ljava/lang/String;
    return-object v0

    .line 2979
    .end local v0    # "se":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2980
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Fail to get default routing destination"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2981
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getIdm()Ljava/lang/String;
    .locals 2

    .line 3153
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getIdm()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3154
    :catch_0
    move-exception v0

    .line 3155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3156
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-r getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 6

    .line 2768
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2773
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2774
    :catch_0
    move-exception v0

    .line 2775
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2777
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 2778
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    return-object v2

    .line 2782
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 2783
    :catch_1
    move-exception v1

    .line 2784
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    .end local v1    # "ee":Landroid/os/RemoteException;
    return-object v2

    .line 2769
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getNfcDtaInterface()Landroid/nfc/INfcDta;
    .locals 6

    .line 962
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 967
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/nfc/INfcAdapter;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 971
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 972
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-object v2

    .line 976
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/nfc/INfcAdapter;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 977
    :catch_1
    move-exception v1

    .line 978
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v1    # "ee":Landroid/os/RemoteException;
    return-object v2

    .line 963
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    .line 953
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 954
    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    return-object v0
.end method

.method public blacklist getPhoneNumber()Ljava/lang/String;
    .locals 2

    .line 3204
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3205
    :catch_0
    move-exception v0

    .line 3206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3207
    const-string v1, ""

    return-object v1
.end method

.method public blacklist getPreferredSimSlot()I
    .locals 2

    .line 3078
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getPreferredSimSlot()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3079
    :catch_0
    move-exception v0

    .line 3080
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3081
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o getSdkVersion()I
    .locals 1

    .line 2797
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2798
    const/16 v0, 0x9

    return v0

    .line 2800
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public blacklist getSeSupportedTech()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3138
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getSeSupportedTech()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3139
    :catch_0
    move-exception v0

    .line 3140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Failed to get Tech information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3142
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getService()Landroid/nfc/INfcAdapter;
    .locals 1

    .line 926
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 927
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public blacklist getSupportedOffHostSecureElements()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v0, "offHostSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 746
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const-string v2, "NFC"

    if-nez v1, :cond_0

    .line 747
    const-string v3, "Cannot get package manager, assuming no off-host CE feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-object v0

    .line 751
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc.uicc"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    const-string v3, "SIM"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_1
    const-string v3, "android.hardware.nfc.ese"

    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 755
    const-string v3, "eSE"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_2
    nop

    .line 762
    return-object v0

    .line 757
    :catch_0
    move-exception v3

    .line 758
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no off-host CE feature"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 760
    return-object v0
.end method

.method public greylist-max-o getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .line 935
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 936
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public whitelist ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "debounceMs"    # I
    .param p3, "tagRemovedListener"    # Landroid/nfc/NfcAdapter$OnTagRemovedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 2412
    const/4 v0, 0x0

    .line 2413
    .local v0, "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    if-eqz p3, :cond_0

    .line 2414
    new-instance v1, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v1, p0, p4, p3}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    move-object v0, v1

    .line 2433
    :cond_0
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2434
    :try_start_0
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    .line 2435
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2437
    :try_start_1
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2, p2, v0}, Landroid/nfc/INfcAdapter;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 2438
    :catch_0
    move-exception v1

    .line 2439
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2

    .line 2435
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist invokeBeam(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2056
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2057
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2

    .line 2060
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2061
    monitor-exit v0

    return v2

    .line 2063
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    if-eqz p1, :cond_1

    .line 2067
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 2069
    :try_start_1
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->invokeBeam()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2070
    const/4 v0, 0x1

    return v0

    .line 2071
    :catch_0
    move-exception v0

    .line 2072
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v3, "invokeBeam: NFC process has died."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2074
    return v2

    .line 2065
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 2063
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o invokeBeam(Landroid/nfc/BeamShareData;)Z
    .locals 3
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .line 2083
    const-string v0, "NFC"

    :try_start_0
    const-string v1, "invokeBeamInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    const/4 v0, 0x1

    return v0

    .line 2086
    :catch_0
    move-exception v1

    .line 2087
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "invokeBeam: NFC process has died."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2089
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllEnabled()Z
    .locals 3

    .line 3048
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 3049
    :catch_0
    move-exception v1

    .line 3050
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3051
    return v0
.end method

.method public whitelist isControllerAlwaysOn()Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2859
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2860
    :catch_0
    move-exception v0

    .line 2861
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2863
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 2864
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    return v2

    .line 2868
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOn()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 2869
    :catch_1
    move-exception v1

    .line 2870
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist isControllerAlwaysOnSupported()Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2886
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_1

    .line 2890
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2891
    :catch_0
    move-exception v0

    .line 2892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2894
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 2895
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    return v2

    .line 2899
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 2900
    :catch_1
    move-exception v1

    .line 2901
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 2887
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isEnabled()Z
    .locals 7

    .line 1041
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportFaver3()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1042
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1043
    return v2

    .line 1045
    :cond_0
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getRwP2pState()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 1049
    :cond_2
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    .line 1050
    :catch_0
    move-exception v3

    .line 1051
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v3}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1053
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v5, "Failed to recover NFC Service."

    const-string v6, "NFC"

    if-nez v4, :cond_4

    .line 1054
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return v2

    .line 1058
    :cond_4
    :try_start_1
    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0

    .line 1059
    :catch_1
    move-exception v0

    .line 1060
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    .end local v0    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist isNdefPushEnabled()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2350
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2351
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2

    .line 2354
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2355
    monitor-exit v0

    return v2

    .line 2357
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2359
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2360
    invoke-direct {p0, v2}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2361
    return v2

    .line 2367
    :cond_1
    :try_start_1
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 2368
    :catch_0
    move-exception v0

    .line 2369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2370
    return v2

    .line 2352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    throw v1

    .line 2357
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist isSecureNfcEnabled()Z
    .locals 5

    .line 2252
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_1

    .line 2256
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isNfcSecureEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2257
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2260
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 2261
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    return v2

    .line 2265
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNfcSecureEnabled()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 2266
    :catch_1
    move-exception v1

    .line 2267
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 2253
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isSecureNfcSupported()Z
    .locals 5

    .line 2222
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_1

    .line 2226
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->deviceSupportsNfcSecure()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2227
    :catch_0
    move-exception v0

    .line 2228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2230
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 2231
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    return v2

    .line 2235
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->deviceSupportsNfcSecure()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 2236
    :catch_1
    move-exception v1

    .line 2237
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 2223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isSimLocked()Z
    .locals 3

    .line 2740
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isSimLocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2741
    :catch_0
    move-exception v0

    .line 2742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2743
    const-string v1, "NFC"

    const-string v2, "Fail to isSimLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2744
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isUnlocked()Z
    .locals 3

    .line 1075
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1076
    :catch_0
    move-exception v1

    .line 1077
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1078
    return v0
.end method

.method public blacklist networkReset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3242
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->NetworkResetAtt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3247
    nop

    .line 3248
    return-void

    .line 3243
    :catch_0
    move-exception v0

    .line 3244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3245
    const-string v1, "NFC"

    const-string v2, "Fail to networkReset"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3246
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o pausePolling(I)V
    .locals 1
    .param p1, "timeoutInMs"    # I

    .line 1250
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->pausePolling(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1254
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist prepareSwitchedOffState()V
    .locals 1

    .line 2725
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->prepareSwitchedOffState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2728
    goto :goto_0

    .line 2726
    :catch_0
    move-exception v0

    .line 2727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2729
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist readEdc()I
    .locals 2

    .line 3166
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->readEdc()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3167
    :catch_0
    move-exception v0

    .line 3168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3169
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist readerDisable()Z
    .locals 3

    .line 3008
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportFaver3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3009
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3010
    const-string v1, "NFC"

    const-string v2, "EDM : nfc policy disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    return v0

    .line 3014
    :cond_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->readerDisable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3015
    :catch_0
    move-exception v1

    .line 3016
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3017
    return v0
.end method

.method public blacklist readerEnable()Z
    .locals 3

    .line 3028
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportFaver3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3029
    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3030
    const-string v1, "NFC"

    const-string v2, "EDM : nfc policy disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    return v0

    .line 3034
    :cond_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->readerEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3035
    :catch_0
    move-exception v1

    .line 3036
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3037
    return v0
.end method

.method public whitelist registerControllerAlwaysOnListener(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2921
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcControllerAlwaysOnListener;->register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 2922
    return-void
.end method

.method public whitelist removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z
    .locals 3
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2649
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2650
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_1

    .line 2653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2655
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2656
    :try_start_2
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2657
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 2660
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2661
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2662
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    :catch_0
    move-exception v0

    .line 2663
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2664
    const/4 v1, 0x0

    return v1

    .line 2651
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    throw v1

    .line 2653
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public greylist-max-o resumePolling()V
    .locals 1

    .line 1264
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->resumePolling()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    goto :goto_0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist semChangeRouting(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "tech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 3395
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v0, "NFC"

    const-string v1, "SPay : changeRouting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/nfc/NfcActivityManager;->changeRouting(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 3397
    return-void
.end method

.method public whitelist semDisable()Z
    .locals 1

    .line 3293
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public whitelist semDisableNdefPush()Z
    .locals 1

    .line 3533
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    return v0
.end method

.method public whitelist semDisableReaderMode()Z
    .locals 1

    .line 3559
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    move-result v0

    return v0
.end method

.method public whitelist semEnable()Z
    .locals 1

    .line 3272
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public whitelist semEnableNdefPush()Z
    .locals 1

    .line 3517
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    return v0
.end method

.method public whitelist semEnableReaderMode()Z
    .locals 1

    .line 3546
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    move-result v0

    return v0
.end method

.method public whitelist semGetAdapterState()I
    .locals 1

    .line 3308
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    return v0
.end method

.method public whitelist semGetSecureElementSupportedTechnology()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3425
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getSeSupportedTech()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3426
    :catch_0
    move-exception v0

    .line 3427
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Failed to get Tech information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3429
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist semSetDiscoveryTechnology(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .line 3347
    const-string v0, "NFC"

    const-string v1, "SPay : setDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3350
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isNFCAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3351
    const-string v1, "setDiscoveryTech is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    return-void

    .line 3357
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/nfc/NfcActivityManager;->setDiscoveryTech(Landroid/app/Activity;II)V

    .line 3358
    return-void
.end method

.method public whitelist semSetWirelessChargeEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 3498
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->SetWirelessChargeEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3499
    :catch_0
    move-exception v0

    .line 3500
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist semStartLedCoverMode()[B
    .locals 4

    .line 3444
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->StartLedCover()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3445
    :catch_0
    move-exception v0

    .line 3446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3447
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v1, v2

    .line 3448
    .local v1, "bytes":[B
    return-object v1
.end method

.method public whitelist semStopLedCoverMode()Z
    .locals 2

    .line 3479
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->StopLedCover()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3480
    :catch_0
    move-exception v0

    .line 3481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3482
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist semTransceiveDataWithLedCover([B)[B
    .locals 4
    .param p1, "data"    # [B

    .line 3462
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3463
    :catch_0
    move-exception v0

    .line 3464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3465
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v1, v2

    .line 3466
    .local v1, "bytes":[B
    return-object v1
.end method

.method public whitelist semUnsetDiscoveryTechnology(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 3369
    const-string v0, "NFC"

    const-string v1, "SPay : unsetDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->unsetDiscoveryTech(Landroid/app/Activity;)V

    .line 3371
    return-void
.end method

.method public whitelist setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1335
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1336
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_7

    .line 1339
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_0

    .line 1340
    monitor-exit v0

    return-void

    .line 1342
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1345
    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1346
    return-void

    .line 1351
    :cond_1
    if-eqz p2, :cond_6

    .line 1354
    if-eqz p1, :cond_5

    .line 1355
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 1356
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 1358
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1359
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "content"

    .line 1360
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1355
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1361
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "scheme":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI needs to have either scheme file or scheme content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 1367
    return-void

    .line 1352
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :cond_7
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "uris":[Landroid/net/Uri;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v1

    .line 1342
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "uris":[Landroid/net/Uri;
    .restart local p2    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1431
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1432
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_3

    .line 1435
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_0

    .line 1436
    monitor-exit v0

    return-void

    .line 1438
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1441
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    return-void

    .line 1447
    :cond_1
    if-eqz p2, :cond_2

    .line 1450
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    .line 1451
    return-void

    .line 1448
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v1

    .line 1438
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setControllerAlwaysOn(Z)Z
    .locals 5
    .param p1, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2827
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_1

    .line 2831
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setControllerAlwaysOn(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2832
    :catch_0
    move-exception v0

    .line 2833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2835
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_0

    .line 2836
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    return v2

    .line 2840
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setControllerAlwaysOn(Z)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 2841
    :catch_1
    move-exception v1

    .line 2842
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 2828
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setDefaultRoutingDestination(Ljava/lang/String;)V
    .locals 3
    .param p1, "SE"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2963
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2967
    nop

    .line 2968
    return-void

    .line 2964
    :catch_0
    move-exception v0

    .line 2965
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Fail to set default routing destination"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2966
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setDiscoveryTech(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .line 1976
    const-string v0, "NFC"

    const-string v1, "SPay : setDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1979
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isNFCAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1980
    const-string v1, "setDiscoveryTech is disabled due to Knox restriction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return-void

    .line 1986
    :cond_0
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/nfc/NfcActivityManager;->setDiscoveryTech(Landroid/app/Activity;II)V

    .line 1987
    return-void
.end method

.method public whitelist setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1575
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1576
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_1

    .line 1579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    if-eqz p2, :cond_0

    .line 1583
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1584
    return-void

    .line 1581
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "flags":I
    throw v1

    .line 1579
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public varargs whitelist setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1530
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1531
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_6

    .line 1534
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_0

    .line 1535
    monitor-exit v0

    return-void

    .line 1537
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1540
    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    return-void

    .line 1546
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v0

    .line 1548
    .local v0, "targetSdkVersion":I
    if-eqz p2, :cond_4

    .line 1551
    :try_start_1
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v2, p2, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1552
    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 1553
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2

    .line 1556
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v5, v4, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1552
    .end local v4    # "a":Landroid/app/Activity;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1554
    .restart local v4    # "a":Landroid/app/Activity;
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activities cannot contain null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1567
    .end local v4    # "a":Landroid/app/Activity;
    .restart local v0    # "targetSdkVersion":I
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :cond_3
    goto :goto_2

    .line 1558
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1549
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1559
    .restart local v0    # "targetSdkVersion":I
    .local v1, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_5

    .line 1561
    const-string v2, "NFC"

    const-string v3, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .line 1565
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    throw v1

    .line 1532
    .end local v0    # "targetSdkVersion":I
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1537
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .line 1703
    if-eqz p2, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1707
    return-void

    .line 1704
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs whitelist setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1657
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1658
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_6

    .line 1661
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_0

    .line 1662
    monitor-exit v0

    return-void

    .line 1664
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    invoke-direct {p0}, Landroid/nfc/NfcAdapter;->isSupportKnoxMdm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1667
    invoke-direct {p0, v1}, Landroid/nfc/NfcAdapter;->isAndroidBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1668
    return-void

    .line 1673
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v0

    .line 1675
    .local v0, "targetSdkVersion":I
    if-eqz p2, :cond_4

    .line 1678
    :try_start_1
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v2, p2, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1679
    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 1680
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2

    .line 1683
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v5, v4, p1, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1679
    .end local v4    # "a":Landroid/app/Activity;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1681
    .restart local v4    # "a":Landroid/app/Activity;
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activities cannot contain null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1694
    .end local v4    # "a":Landroid/app/Activity;
    .restart local v0    # "targetSdkVersion":I
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :cond_3
    goto :goto_2

    .line 1685
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1676
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1686
    .restart local v0    # "targetSdkVersion":I
    .local v1, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_5

    .line 1688
    const-string v2, "NFC"

    const-string v3, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .line 1692
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    throw v1

    .line 1659
    .end local v0    # "targetSdkVersion":I
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1664
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public varargs whitelist setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 5
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1752
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1753
    :try_start_0
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_5

    .line 1756
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_0

    .line 1757
    monitor-exit v0

    return-void

    .line 1759
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1760
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v0

    .line 1762
    .local v0, "targetSdkVersion":I
    if-eqz p2, :cond_3

    .line 1765
    :try_start_1
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v1, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1766
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 1767
    .local v3, "a":Landroid/app/Activity;
    if-eqz v3, :cond_1

    .line 1770
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v3, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1766
    .end local v3    # "a":Landroid/app/Activity;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1768
    .restart local v3    # "a":Landroid/app/Activity;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activities cannot contain null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1781
    .end local v3    # "a":Landroid/app/Activity;
    .restart local v0    # "targetSdkVersion":I
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :cond_2
    goto :goto_2

    .line 1772
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1763
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1773
    .restart local v0    # "targetSdkVersion":I
    .local v1, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_4

    .line 1775
    const-string v2, "NFC"

    const-string v3, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .line 1779
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    throw v1

    .line 1754
    .end local v0    # "targetSdkVersion":I
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1759
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o setP2pModes(II)V
    .locals 1
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I

    .line 2466
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2469
    goto :goto_0

    .line 2467
    :catch_0
    move-exception v0

    .line 2468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2470
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setPreferredSimSlot(I)Z
    .locals 2
    .param p1, "preferredSim"    # I

    .line 3064
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setPreferredSimSlot(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3065
    :catch_0
    move-exception v0

    .line 3066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3067
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setRwP2pMode(Z)Z
    .locals 2
    .param p1, "isEnable"    # Z

    .line 2707
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setRwP2pMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2708
    :catch_0
    move-exception v0

    .line 2709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2710
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSimLocked(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .line 2755
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setSimLocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2759
    goto :goto_0

    .line 2756
    :catch_0
    move-exception v0

    .line 2757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2758
    const-string v1, "NFC"

    const-string v2, "Fail to setSimLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2760
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist startApc()I
    .locals 2

    .line 3192
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->startApc()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3193
    :catch_0
    move-exception v0

    .line 3194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3195
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist startCoverAuth()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3093
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->startCoverAuth()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Failed to transmit authentication data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3097
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist stopCoverAuth()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3121
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->stopCoverAuth()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3122
    :catch_0
    move-exception v0

    .line 3123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Failed to stop authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3125
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist transceiveAuthData([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3107
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->transceiveAuthData([B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3108
    :catch_0
    move-exception v0

    .line 3109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "Failed to transmit authentication data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3111
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist unregisterControllerAlwaysOnListener(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2939
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener;->unregister(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 2940
    return-void
.end method

.method public blacklist unsetDiscoveryTech(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1995
    const-string v0, "NFC"

    const-string v1, "SPay : unsetDiscoveryTech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->unsetDiscoveryTech(Landroid/app/Activity;)V

    .line 1997
    return-void
.end method

.method public blacklist writeEdc(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 3179
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->writeEdc(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3180
    :catch_0
    move-exception v0

    .line 3181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3182
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist writeFelicaLockState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileDirectory"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 3216
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/nfc/INfcAdapter;->writeFelicaLockState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3217
    :catch_0
    move-exception v0

    .line 3218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 3219
    const/4 v1, 0x0

    return v1
.end method
