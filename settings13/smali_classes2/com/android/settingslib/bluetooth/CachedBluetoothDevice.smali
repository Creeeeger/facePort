.class public Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;,
        Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static mVersion:I


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAppearance:S

.field private mBluetoothCastMsg:Ljava/lang/String;

.field private mBondState:I

.field private mBondTimeStamp:J

.field private mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceMode:I

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceSide:I

.field mDrawableCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMsg:Ljava/lang/String;

.field private mGroupId:I

.field private mHiSyncId:J

.field private mIsActiveDeviceA2dp:Z

.field private mIsActiveDeviceHeadset:Z

.field private mIsActiveDeviceHearingAid:Z

.field private mIsActiveDeviceLeAudio:Z

.field private mIsAddrSwitched:Z

.field private mIsAutoConnectAfterBonding:Z

.field mIsCoordinatedSetMember:Z

.field private mIsHearingAidDeviceByUUID:Z

.field private mIsRestored:Z

.field private mIsSynced:Z

.field private mIsTablet:Z

.field mJustDiscovered:Z

.field private mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private final mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

.field private mMemberDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mOnlyPANUDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixName:Ljava/lang/String;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileLock:Ljava/lang/Object;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

.field mRssi:S

.field private mRssiGroup:I

.field private final mSemCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSequence:I

.field private mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mType:I

.field private mUnpairing:Z

.field private mVisible:Z


# direct methods
.method public static synthetic $r8$lambda$-0-xnN0IkijBrHYwoB9nz3zjHpk(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->lambda$refresh$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$4IYXIWE9azg2QshMjGh5evIGUmg(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->lambda$refresh$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 193
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 199
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    .line 203
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    .line 212
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsCoordinatedSetMember:Z

    .line 214
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 225
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 251
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAutoConnectAfterBonding:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAddrSwitched:Z

    .line 308
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 309
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 311
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 313
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 314
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 315
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    const-wide/16 p1, 0x0

    .line 317
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    .line 318
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->initDrawableCache()V

    .line 319
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;Landroid/content/Intent;)V
    .locals 2

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 193
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 199
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    .line 203
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    .line 212
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsCoordinatedSetMember:Z

    .line 214
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 225
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 251
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAutoConnectAfterBonding:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAddrSwitched:Z

    .line 324
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 325
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 326
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 327
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 328
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 329
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 330
    invoke-virtual {p0, p4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillUnBondedData(Landroid/content/Intent;)V

    const-wide/16 p1, 0x0

    .line 331
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    .line 332
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->initDrawableCache()V

    .line 333
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;)V
    .locals 2

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 193
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 199
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    .line 203
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    .line 212
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsCoordinatedSetMember:Z

    .line 214
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 225
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 251
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAutoConnectAfterBonding:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAddrSwitched:Z

    .line 352
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 353
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 354
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 355
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    .line 356
    invoke-virtual {p3}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 360
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 361
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillRestoredData()V

    const-wide/16 p1, 0x0

    .line 362
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    .line 363
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->initDrawableCache()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;Z)V
    .locals 2

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 193
    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    .line 199
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    .line 203
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    .line 212
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsCoordinatedSetMember:Z

    .line 214
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 225
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 251
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAutoConnectAfterBonding:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    .line 258
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAddrSwitched:Z

    .line 370
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 371
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 372
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 373
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    .line 374
    invoke-virtual {p3}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 378
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz p4, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillSyncedData()V

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillRestoredData()V

    :goto_0
    const-wide/16 p1, 0x0

    .line 384
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    .line 385
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->initDrawableCache()V

    return-void
.end method

.method private connectAllEnabledProfiles()V
    .locals 5

    .line 824
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 827
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "CachedBluetoothDevice"

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No profiles. Maybe we will connect later for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 841
    iput-wide v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->connect()I

    .line 847
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 849
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect the member("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->connect()I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 855
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAutoConnectAfterBonding:Z

    return-void
.end method

.method private describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    sget-boolean v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, " Profile:"

    .line 402
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private deviceTypeToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "WEARABLE"

    goto :goto_0

    :cond_1
    const-string p0, "WEARABLE_CONNECT"

    goto :goto_0

    :cond_2
    const-string p0, "GEAR"

    goto :goto_0

    :cond_3
    const-string p0, "GEAR1"

    goto :goto_0

    :cond_4
    const-string p0, "GENERIC"

    :goto_0
    return-object p0
.end method

.method private disconnectLegacy()V
    .locals 6

    .line 666
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 668
    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isFilterProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CachedBluetoothDevice"

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectLegacy :: skip disconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "CachedBluetoothDevice"

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectLegacy :: profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 675
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnectPbapLegacy()V

    return-void

    :catchall_0
    move-exception p0

    .line 675
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private disconnectPbapLegacy()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    :cond_0
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .line 907
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 908
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private fetchActiveDevices()V
    .locals 2

    .line 1845
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_3

    .line 1846
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1848
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1852
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 1854
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1856
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 1858
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1860
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    :cond_3
    return-void
.end method

.method private fetchAppearance()V
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAppearance()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    return-void
.end method

.method private fetchBtClass()V
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1730
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    :cond_0
    return-void
.end method

.method private fetchIsTablet()V
    .locals 2

    .line 1754
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .line 1756
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceCategory()B

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1759
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1764
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    return-void
.end method

.method private fetchName()V
    .locals 2

    .line 1374
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CachedBluetoothDevice"

    if-nez v0, :cond_0

    .line 1379
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 1381
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    .line 1382
    sget-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 1383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device has no Device name (yet), use address: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1388
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_1

    .line 1390
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1391
    sget-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 1392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Device has no name (yet), use address: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private fetchType()V
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    return-void
.end method

.method private fillRestoredData()V
    .locals 5

    .line 1125
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1129
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    .line 1133
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillRestoredData() :: Device - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Class - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getCod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getCod()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 1137
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getCod()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setBluetoothClass(I)Z

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getAppearance()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    .line 1141
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getManufacturerData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    .line 1142
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimeStamp:J

    .line 1144
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getLinkType()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    const/4 v0, 0x1

    .line 1147
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 1148
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getBondState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1149
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAddrSwitched:Z

    :cond_2
    const/16 v0, 0xa

    .line 1151
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 1154
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1155
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    goto :goto_1

    .line 1156
    :cond_3
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    :goto_1
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    return-void
.end method

.method private fillSyncedData()V
    .locals 7

    .line 1162
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1163
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    goto :goto_0

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    .line 1169
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillSyncedData() :: Device - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Class - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getCod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getCod()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 1172
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getCod()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->setBluetoothClass(I)Z

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getAppearance()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    .line 1176
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getManufacturerData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    .line 1177
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getTimeStamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimeStamp:J

    .line 1179
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getLinkType()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    .line 1183
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getManufacturerData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getManufacturerData()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getManufacturerData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->semSetManufacturerData([B)Z

    .line 1188
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    const-string v2, "f8620674-a1ed-41ab-a8b9-de9ad655729d"

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1189
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 1190
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    const-string/jumbo v5, "mcf_permission_denied"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 1191
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    const-string v0, "fillSyncedData :: call semSetAutoSwitchMode to enabled"

    .line 1192
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    const-string v0, "fillSyncedData :: mcf permission denied"

    .line 1195
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CachedBluetoothDevice -- fillSyncedData :: mcf permission denied"

    .line 1196
    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1202
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    .line 1203
    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    const/16 v0, 0xa

    .line 1204
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 1207
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-static {v0, v1, v4, v5, v6}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1208
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    goto :goto_2

    .line 1209
    :cond_5
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    :goto_2
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    .line 1211
    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method private getHeadsetDrawableByDeviceName(Ljava/lang/String;)I
    .locals 1

    const-string v0, "SAMSUNG LEVEL"

    .line 2835
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "BOX"

    .line 2836
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2837
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    .line 2839
    :cond_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return p0

    :cond_1
    const-string v0, "GEAR CIRCLE"

    .line 2840
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGearIconX()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2841
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_gear_circle:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private initDrawableCache()V
    .locals 4

    .line 337
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 338
    div-int/lit8 v0, v0, 0x8

    .line 340
    new-instance v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$1;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    return-void
.end method

.method private isFilterProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 0

    .line 681
    instance-of p0, p1, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/settingslib/bluetooth/HidProfile;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isStubExists(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "CachedBluetoothDevice"

    .line 2472
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 2473
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 2475
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 2476
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2477
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_1

    const-string p0, "isStubExists :: Stub is disabled"

    .line 2478
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2481
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    .line 2482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSTALLER_STUB is exist. Package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.android.app.watchmanagerstub"

    .line 2483
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 2484
    sget p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    const/16 p1, 0x64

    if-le p0, p1, :cond_2

    return v4

    :cond_2
    return v1

    :cond_3
    const-string v3, "com.sec.android.app.applinker"

    .line 2489
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2490
    sget p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_4

    return v4

    :cond_4
    return v1

    :catch_0
    move-exception p0

    .line 2499
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2501
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTALLER_STUB is not exist. package : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic lambda$refresh$0()V
    .locals 1

    const/4 v0, 0x1

    .line 1431
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method private synthetic lambda$refresh$1()V
    .locals 3

    .line 1418
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getUriMetaData(Landroid/bluetooth/BluetoothDevice;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1422
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 1423
    invoke-static {v2, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1422
    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    :cond_0
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 3

    .line 2364
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2366
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2370
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-nez v1, :cond_2

    .line 2371
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2372
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2374
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2376
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 2380
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2381
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 3

    .line 2340
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_phonebook_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2342
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2346
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    if-nez v1, :cond_2

    .line 2347
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2348
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2350
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2352
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 2356
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2357
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateProfiles()Z
    .locals 11

    .line 1779
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v2, "CachedBluetoothDevice"

    const-string/jumbo v3, "updateProfiles :: uuids is null"

    .line 1782
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 1787
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkHearingAidByUuid()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidDeviceByUUID:Z

    if-nez v0, :cond_1

    return v1

    .line 1793
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getUuidsList()Ljava/util/List;

    move-result-object v2

    .line 1794
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [Landroid/os/ParcelUuid;

    .line 1795
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1805
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1806
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v3, :cond_2

    .line 1807
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    iget-boolean v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v4, v0

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1810
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    iget-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v2, :cond_4

    .line 1817
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1818
    instance-of v4, v3, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v4, :cond_3

    const-string v2, "CachedBluetoothDevice"

    const-string v4, "PAN connection exists. Restore PAN profile."

    .line 1819
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 1821
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1827
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkHearingAidByUuid()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidDeviceByUUID:Z

    .line 1831
    sget-boolean v2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "CachedBluetoothDevice"

    .line 1832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updating profiles for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v2, "CachedBluetoothDevice"

    .line 1835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string p0, "CachedBluetoothDevice"

    const-string v2, "UUID:"

    .line 1836
    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    array-length p0, v0

    :goto_0
    if-ge v1, p0, :cond_6

    aget-object v2, v0, v1

    const-string v3, "CachedBluetoothDevice"

    .line 1838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1810
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addDetectorCount()V
    .locals 0

    .line 3485
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p0, :cond_0

    .line 3486
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->addCount()V

    :cond_0
    return-void
.end method

.method public addMemberDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 3617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedBtDev -- addMemberDevice: main = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", member = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 3618
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3619
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeadDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public checkHearingAidByUuid()Z
    .locals 3

    .line 3759
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 3760
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3764
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getLeService16BitsUuidData()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 3765
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3769
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getLeComplete128BitsUuidData()[Landroid/os/ParcelUuid;

    move-result-object p0

    const-string v0, "7d74f4bd-c74a-4431-862c-cce884371592"

    .line 3770
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 3771
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public checkLEConnectionGuide(ZZ)V
    .locals 2

    .line 3700
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3702
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    const-string p0, "CachedBluetoothDevice"

    const-string/jumbo p1, "notForeground - skip checking LE"

    .line 3703
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3706
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    return-void

    .line 3710
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 3714
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3715
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {p2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p2

    .line 3716
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 3719
    :cond_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_7

    .line 3725
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    .line 3726
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 3729
    :cond_6
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3731
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_HOGP:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    return-void

    .line 3736
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getLeService16BitsUuidData()[Landroid/os/ParcelUuid;

    move-result-object p1

    .line 3737
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 3740
    :cond_8
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getLeComplete16BitsUuidData()[Landroid/os/ParcelUuid;

    move-result-object p1

    .line 3741
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 3744
    :cond_9
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getLeComplete128BitsUuidData()[Landroid/os/ParcelUuid;

    move-result-object p1

    const-string p2, "7d74f4bd-c74a-4431-862c-cce884371592"

    .line 3745
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    .line 3746
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 3751
    :cond_a
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object p2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_LE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    .line 3753
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$string;->bluetooth_le_connection_guide:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public clearProfileConnectionState()V
    .locals 4

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Clearing all connection state for dev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 1039
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1040
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1042
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBluetoothCastMsg:Ljava/lang/String;

    return-void
.end method

.method public compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 9

    .line 2184
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    .line 2185
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    .line 2189
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2190
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    sub-int/2addr v2, v5

    if-eqz v2, :cond_2

    return v2

    .line 2194
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v5

    sub-int/2addr v2, v5

    if-eqz v2, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    if-ne v1, v2, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    sub-int/2addr v5, v2

    if-eqz v5, :cond_6

    return v5

    .line 2205
    :cond_6
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_7

    move v2, v4

    goto :goto_4

    :cond_7
    move v2, v3

    .line 2206
    :goto_4
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v6

    if-ne v6, v5, :cond_8

    move v6, v4

    goto :goto_5

    :cond_8
    move v6, v3

    :goto_5
    sub-int/2addr v2, v6

    if-eqz v2, :cond_9

    return v2

    .line 2210
    :cond_9
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    if-ne v2, v5, :cond_11

    const/4 v2, 0x3

    if-eq v0, v4, :cond_b

    if-ne v0, v2, :cond_a

    goto :goto_6

    :cond_a
    move v0, v3

    goto :goto_7

    :cond_b
    :goto_6
    move v0, v4

    :goto_7
    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_d

    :cond_c
    move v3, v4

    :cond_d
    sub-int/2addr v0, v3

    if-eqz v0, :cond_e

    return v0

    .line 2217
    :cond_e
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidByUuid()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidByUuid()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_f

    return v0

    .line 2222
    :cond_f
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getConnectionTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getConnectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-lez v0, :cond_10

    return v4

    :cond_10
    if-gez v0, :cond_16

    return v6

    .line 2230
    :cond_11
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidByUuid()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidByUuid()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_12

    return v0

    .line 2235
    :cond_12
    iget v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_13

    return v0

    .line 2240
    :cond_13
    iget-wide v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimeStamp:J

    iget-wide v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondTimeStamp:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-lez v0, :cond_14

    return v4

    :cond_14
    if-gez v0, :cond_15

    return v6

    .line 2248
    :cond_15
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSequence:I

    iget v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSequence:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_16

    return v0

    .line 2254
    :cond_16
    iget-boolean v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    sub-int/2addr v0, v1

    if-eqz v0, :cond_17

    return v0

    .line 2258
    :cond_17
    iget-short v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_18

    return v0

    .line 2262
    :cond_18
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public connect()V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithLaunchGM(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public connect(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 721
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    return-void
.end method

.method declared-synchronized connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    monitor-enter p0

    .line 874
    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 875
    monitor-exit p0

    return-void

    .line 878
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAutoConnectAfterBonding:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    .line 879
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isNeedConnectionBlock(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "CachedBluetoothDevice"

    const-string v0, "connectInt :: skip A2dp connect after bonding"

    .line 880
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CachedBtDev -- skip A2dp connect after bonding"

    .line 882
    invoke-static {p1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 885
    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    monitor-exit p0

    return-void

    .line 891
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 892
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CachedBluetoothDevice"

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 895
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string v0, "CachedBluetoothDevice"

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    const-string v0, "CachedBluetoothDevice"

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 904
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .line 865
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method public connectWithLaunchGM(Ljava/lang/String;ZZ)V
    .locals 0

    .line 705
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 709
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->secConnect(Z)V

    return-void
.end method

.method public describeDetail()Ljava/lang/String;
    .locals 9

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "["

    const-string v4, "]"

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 417
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIdentityAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_1

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, ", [null]"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerData()Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v3, :cond_2

    aget-byte v7, v1, v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 435
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v8, v5

    const-string v7, "%02X "

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 437
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public disconnect()V
    .locals 8

    .line 602
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 606
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.mcfds.autoswitch.BUDS_DISCONNECTED_BY_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    .line 607
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    move v5, v4

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 613
    invoke-virtual {p0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 614
    instance-of v6, v6, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v6, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v5, v2

    goto :goto_1

    .line 621
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    if-nez v5, :cond_6

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "disconnect :: Connected SPP only. It will launch GM"

    .line 624
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_5

    .line 626
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getSppProfile()Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0, v3}, Lcom/samsung/android/settingslib/bluetooth/SppProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    :cond_5
    return-void

    .line 632
    :cond_6
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 633
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u200e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_disconnect_message:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnectWithoutLaunchGM()V

    return-void

    :catchall_0
    move-exception p0

    .line 621
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command sent successfully:DISCONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CachedBluetoothDevice"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public disconnectWithoutLaunchGM()V
    .locals 6

    .line 691
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v3, "CachedBluetoothDevice"

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect the member("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    goto :goto_0

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    .line 699
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnectPbapLegacy()V

    return-void

    :catchall_0
    move-exception p0

    .line 699
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method dispatchAttributesChanged(Z)V
    .locals 2

    .line 2143
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 2144
    invoke-interface {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 2148
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;

    .line 2149
    invoke-interface {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;->semOnDeviceAttributesChanged(Z)V

    goto :goto_1

    .line 2151
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 2167
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2170
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method fetchBondState()V
    .locals 1

    .line 1768
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    return-void
.end method

.method public fetchBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1742
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    :cond_0
    return-void
.end method

.method fetchManufacturerData([B)V
    .locals 1

    .line 1747
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    .line 1748
    sget-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 1749
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fetchManufacturerData : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CachedBluetoothDevice"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public fillData()V
    .locals 6

    .line 1050
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 1051
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 1053
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 1054
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    .line 1055
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 1056
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 1059
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchAppearance()V

    .line 1060
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchManufacturerData([B)V

    .line 1061
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchIsTablet()V

    .line 1062
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBondState()V

    .line 1064
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchType()V

    const/4 v0, 0x1

    .line 1066
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 1068
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1069
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    goto :goto_1

    .line 1071
    :cond_0
    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    .line 1072
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    goto :goto_0

    .line 1073
    :cond_1
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    :goto_0
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    .line 1077
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillData :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method public fillUnBondedData(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "android.bluetooth.device.extra.NAME"

    .line 1085
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CachedBluetoothDevice"

    if-eqz v1, :cond_1

    .line 1087
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device has no name (yet), use address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1089
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 1091
    :cond_1
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1092
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    :goto_0
    const-string v0, "android.bluetooth.device.extra.CLASS"

    .line 1095
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 1096
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 1097
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    const-string v0, "com.samsung.bluetooth.device.extra.APPEARANCE"

    const/4 v1, 0x0

    .line 1099
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v0

    iput-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    const-string v0, "com.samsung.bluetooth.device.extra.MANUFACTURER_DATA"

    .line 1101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchManufacturerData([B)V

    .line 1103
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchIsTablet()V

    const/16 p1, 0xa

    .line 1104
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 1106
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchType()V

    const/4 p1, 0x1

    .line 1108
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 1110
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    goto :goto_1

    .line 1113
    :cond_2
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    .line 1117
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillUnBondedData :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method public fireTips(Landroid/content/Context;)V
    .locals 0

    .line 3491
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p0, :cond_0

    .line 3492
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->fireTips(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 1226
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppearanceDrawable(I)I
    .locals 1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_5

    const/16 v0, 0x80

    if-eq p1, v0, :cond_4

    const/16 v0, 0x200

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 2819
    :pswitch_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return p0

    .line 2815
    :pswitch_1
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    return p0

    .line 2812
    :pswitch_2
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    return p0

    .line 2802
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GEAR FIT"

    .line 2803
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "GALAXY FIT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2806
    :cond_1
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 2804
    :cond_2
    :goto_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return p0

    .line 2821
    :cond_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dongle:I

    return p0

    .line 2798
    :cond_4
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 2792
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GALAXY Gear ("

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2793
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 2795
    :cond_6
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3c0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 1413
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getBondState()I
    .locals 0

    .line 1448
    iget p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    return p0
.end method

.method public getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 0

    .line 2039
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    return-object p0
.end method

.method public getBtClassDrawable()I
    .locals 6

    .line 2669
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2674
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBtClassDrawable :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Appearance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-eqz v1, :cond_1

    .line 2677
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 2683
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    .line 2684
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_13

    const/16 v2, 0x200

    if-eq v1, v2, :cond_11

    const/16 v2, 0x400

    if-eq v1, v2, :cond_9

    const/16 v2, 0x500

    if-eq v1, v2, :cond_8

    const/16 v2, 0x600

    if-eq v1, v2, :cond_5

    const/16 v2, 0x700

    if-eq v1, v2, :cond_2

    goto/16 :goto_2

    .line 2700
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x704

    if-ne v1, v2, :cond_e

    if-eqz v0, :cond_4

    const-string p0, "GEAR FIT"

    .line 2701
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "GALAXY FIT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2702
    :cond_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return p0

    .line 2704
    :cond_4
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 2712
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x680

    if-eq v0, v1, :cond_7

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 2713
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x640

    if-ne p0, v0, :cond_6

    goto :goto_1

    .line 2716
    :cond_6
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return p0

    .line 2714
    :cond_7
    :goto_1
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return p0

    .line 2709
    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result p0

    return p0

    :cond_9
    if-eqz v0, :cond_a

    .line 2720
    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHeadsetDrawableByDeviceName(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 2726
    :cond_a
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGearIconX()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2727
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_true_wireless_earbuds:I

    return p0

    .line 2730
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x43c

    if-ne v0, v1, :cond_c

    .line 2731
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    .line 2732
    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x434

    if-ne v0, v1, :cond_d

    .line 2733
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return p0

    .line 2738
    :cond_d
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 2739
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2740
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    .line 2747
    :cond_e
    :goto_2
    iget-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearanceDrawable(I)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 2752
    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2753
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    .line 2755
    :cond_10
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2756
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return p0

    .line 2693
    :cond_11
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 2694
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 2696
    :cond_12
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return p0

    .line 2686
    :cond_13
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x11c

    if-ne p0, v0, :cond_14

    .line 2687
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 2689
    :cond_14
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 2758
    :cond_15
    iget-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    if-eqz v0, :cond_16

    .line 2759
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearanceDrawable(I)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    :cond_16
    const-string v0, "mBtClass is null"

    .line 2764
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_17
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 2768
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2769
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 2770
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    .line 2773
    :cond_18
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 2774
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move v4, v3

    .line 2775
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1b

    .line 2776
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v5, :cond_1a

    .line 2777
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    const/16 v1, 0x418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 2778
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2781
    :cond_1b
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-interface {v2, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    if-eqz v2, :cond_19

    return v2

    .line 2786
    :cond_1c
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_general_device:I

    return p0
.end method

.method public getCarConnectionSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3200
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getCarConnectionSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCarConnectionSummary(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3207
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getCarConnectionSummary(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCarConnectionSummary(ZZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 3223
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3224
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 3225
    invoke-virtual {v0, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v13

    if-eqz v13, :cond_4

    if-eq v13, v12, :cond_3

    if-eq v13, v11, :cond_1

    if-eq v13, v10, :cond_3

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 3235
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result v2

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_2
    move v6, v12

    goto :goto_0

    .line 3230
    :cond_3
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 3231
    invoke-static {v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result v2

    .line 3230
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3242
    :cond_4
    invoke-interface {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3243
    instance-of v10, v9, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v10, :cond_9

    instance-of v10, v9, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-eqz v10, :cond_5

    goto :goto_2

    .line 3246
    :cond_5
    instance-of v10, v9, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-nez v10, :cond_8

    instance-of v10, v9, Lcom/android/settingslib/bluetooth/HfpClientProfile;

    if-eqz v10, :cond_6

    goto :goto_1

    .line 3249
    :cond_6
    instance-of v10, v9, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v10, :cond_7

    move v4, v12

    goto :goto_0

    .line 3251
    :cond_7
    instance-of v9, v9, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v9, :cond_0

    move v5, v12

    goto :goto_0

    :cond_8
    :goto_1
    move v8, v12

    goto :goto_0

    :cond_9
    :goto_2
    move v7, v12

    goto :goto_0

    .line 3258
    :cond_a
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v1

    const/4 v2, -0x1

    const/4 v9, 0x0

    if-le v1, v2, :cond_b

    .line 3269
    invoke-static {v1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    move-object v1, v9

    .line 3273
    :goto_3
    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v13, Lcom/android/settingslib/R$array;->bluetooth_audio_active_device_summaries:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3275
    aget-object v13, v2, v3

    .line 3276
    iget-boolean v14, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    if-eqz v14, :cond_c

    iget-boolean v15, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eqz v15, :cond_c

    .line 3277
    aget-object v10, v2, v12

    goto :goto_4

    :cond_c
    if-eqz v14, :cond_d

    .line 3280
    aget-object v13, v2, v11

    .line 3282
    :cond_d
    iget-boolean v14, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eqz v14, :cond_e

    .line 3283
    aget-object v10, v2, v10

    goto :goto_4

    :cond_e
    move-object v10, v13

    :goto_4
    if-nez v4, :cond_f

    .line 3286
    iget-boolean v4, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    if-eqz v4, :cond_f

    .line 3287
    aget-object v1, v2, v12

    .line 3288
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    if-nez v5, :cond_10

    .line 3291
    iget-boolean v4, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    if-eqz v4, :cond_10

    .line 3292
    aget-object v1, v2, v12

    .line 3293
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    if-eqz v6, :cond_18

    if-eqz v7, :cond_12

    if-eqz v8, :cond_12

    if-eqz v1, :cond_11

    .line 3299
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_connected_no_headset_no_a2dp_battery_level:I

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v10, v4, v12

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3303
    :cond_11
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_connected_no_headset_no_a2dp:I

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v10, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    if-eqz v7, :cond_14

    if-eqz v1, :cond_13

    .line 3309
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_connected_no_a2dp_battery_level:I

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v10, v4, v12

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3312
    :cond_13
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_connected_no_a2dp:I

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v10, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    if-eqz v8, :cond_16

    if-eqz v1, :cond_15

    .line 3318
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_connected_no_headset_battery_level:I

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v10, v4, v12

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3321
    :cond_15
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_connected_no_headset:I

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v10, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    if-eqz v1, :cond_17

    .line 3326
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_connected_battery_level:I

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v10, v4, v12

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3329
    :cond_17
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v10, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3334
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_19

    .line 3335
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pairing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    if-eqz p2, :cond_1a

    .line 3337
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1a
    return-object v9

    :catchall_0
    move-exception v0

    .line 3258
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 2080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2083
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 2084
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->accessProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2085
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2088
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConnectionSummary()Ljava/lang/String;
    .locals 1

    .line 2858
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBluetoothCastMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2862
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionSummary(Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 2874
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "CachedBluetoothDevice"

    const-string v1, "getConnectionSummary :: mDevice is null"

    .line 2875
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 2880
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v1

    const/16 v3, 0xb

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    .line 2882
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 2889
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isAddrSwitchedDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2890
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_summary_addr_switched_device:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    .line 2894
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_summary_restored_device_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2896
    :cond_3
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_summary_restored_device:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2929
    :cond_4
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2930
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-nez v14, :cond_5

    const-string v14, "CachedBluetoothDevice"

    const-string v15, "getConnectionSummary :: profile is null"

    .line 2933
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2937
    :cond_5
    instance-of v3, v14, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    if-eqz v3, :cond_6

    const-string v3, "CachedBluetoothDevice"

    const-string v14, "getConnectionSummary :: csip profile is excluded from the summary"

    .line 2938
    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2942
    :cond_6
    invoke-virtual {v0, v14}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v3

    const-string v2, "CachedBluetoothDevice"

    .line 2943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getConnectionSummary :: profile ::"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "  connectionStatus::"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_11

    const/4 v2, 0x1

    if-eq v3, v2, :cond_f

    const/4 v2, 0x2

    if-eq v3, v2, :cond_8

    const/4 v2, 0x3

    if-eq v3, v2, :cond_7

    goto :goto_1

    .line 2955
    :cond_7
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 2956
    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result v2

    .line 2955
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2960
    :cond_8
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v2, :cond_9

    const/4 v7, 0x1

    .line 2963
    :cond_9
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v2, :cond_a

    const/4 v8, 0x1

    .line 2966
    :cond_a
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/HidProfile;

    if-eqz v2, :cond_b

    const/4 v10, 0x1

    .line 2969
    :cond_b
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v2, :cond_c

    move-object v2, v14

    check-cast v2, Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v11, 0x1

    .line 2972
    :cond_c
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v2, :cond_d

    const/4 v12, 0x1

    .line 2975
    :cond_d
    instance-of v2, v14, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v2, :cond_e

    const/4 v13, 0x1

    .line 2978
    :cond_e
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    const/4 v6, 0x1

    if-eqz v2, :cond_10

    const/4 v9, 0x1

    goto :goto_1

    .line 2948
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusyForList()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2949
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 2950
    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result v2

    .line 2949
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_10
    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0xb

    goto/16 :goto_0

    .line 2986
    :cond_11
    invoke-interface {v14}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2988
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v2, :cond_12

    goto :goto_1

    .line 2990
    :cond_12
    instance-of v2, v14, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v2, :cond_10

    const/4 v9, 0x0

    goto :goto_1

    .line 2998
    :cond_13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3007
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v1

    if-eqz v6, :cond_27

    if-eqz p1, :cond_14

    .line 3021
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->sec_bluetooth_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v2, -0x1

    if-eqz v7, :cond_1a

    if-eqz v8, :cond_1a

    .line 3024
    iget-object v3, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v3, :cond_15

    const/16 v16, 0x0

    goto :goto_2

    :cond_15
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_2
    if-eqz v16, :cond_16

    .line 3026
    invoke-virtual/range {v16 .. v16}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v3

    goto :goto_3

    :cond_16
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_17

    if-eq v1, v2, :cond_17

    .line 3029
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset_battery:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset_dual_audio:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    if-eq v1, v2, :cond_18

    .line 3031
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset_battery:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    if-eqz v3, :cond_19

    .line 3033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset_dual_audio:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3035
    :cond_19
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    if-eqz v9, :cond_1b

    .line 3038
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    if-eqz v7, :cond_1f

    .line 3040
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v1, :cond_1c

    const/4 v2, 0x0

    goto :goto_4

    :cond_1c
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_1d

    .line 3042
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v5

    goto :goto_5

    :cond_1d
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_1e

    .line 3044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset_dual_audio:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3046
    :cond_1e
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    if-eqz v8, :cond_21

    if-eq v1, v2, :cond_20

    .line 3050
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_headset_profile_summary_connected_battery:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3052
    :cond_20
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_headset_profile_summary_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    if-eqz v10, :cond_22

    .line 3055
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->sec_bluetooth_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    if-eqz v11, :cond_23

    .line 3057
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->sec_bluetooth_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    if-eqz v12, :cond_24

    .line 3059
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->sec_bluetooth_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    if-eqz v13, :cond_25

    .line 3061
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->sec_bluetooth_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    if-eq v1, v2, :cond_26

    .line 3064
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_connected_battery:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3066
    :cond_26
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->sec_bluetooth_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    if-eqz p1, :cond_28

    const/4 v1, 0x0

    return-object v1

    .line 3131
    :cond_28
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 3133
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->bluetooth_tethering_error_with_wifi_tablet_summary:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->bluetooth_tethering_error_with_wifi_phone_summary:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3134
    :cond_29
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    .line 3135
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3136
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x0

    .line 3137
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    .line 3142
    :cond_2a
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    return-object v0

    .line 3145
    :cond_2b
    iget-boolean v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidDeviceByUUID:Z

    if-eqz v1, :cond_2c

    .line 3146
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_hearingaid_subtext:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3149
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2f

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2e

    :cond_2d
    const/4 v0, 0x0

    goto :goto_6

    .line 3152
    :cond_2e
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pairing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3156
    :cond_2f
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3157
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3158
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_getting_remote_device_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3160
    :cond_30
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_display_remote_device_name_after_pair:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :catchall_0
    move-exception v0

    .line 2998
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1217
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getDeviceMode()I
    .locals 0

    .line 755
    iget p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceMode:I

    return p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    .line 1274
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceSide()I
    .locals 0

    .line 747
    iget p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceSide:I

    return p0
.end method

.method public getDeviceType()I
    .locals 8

    .line 2425
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "CachedBluetoothDevice"

    const-string v0, "getDeviceType :: EmergencyMode enabled"

    .line 2426
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2430
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGear1()Z

    move-result v0

    const-string v2, "com.samsung.android.app.watchmanagerstub"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isStubExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 2432
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2433
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    return v1

    .line 2437
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v0

    .line 2439
    aget-byte v6, v0, v1

    if-nez v6, :cond_5

    .line 2440
    aget-byte v0, v0, v3

    const/16 v6, 0xff

    and-int/2addr v0, v6

    const/16 v7, 0x90

    if-lt v0, v7, :cond_4

    if-gt v0, v6, :cond_4

    const-string v0, "com.sec.android.app.applinker"

    .line 2444
    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isStubExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2445
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getBluetoothType()B

    move-result p0

    if-ne p0, v3, :cond_3

    return v4

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    if-lt v0, v3, :cond_7

    .line 2452
    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isStubExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    :cond_5
    if-eq v6, v3, :cond_6

    if-eq v6, v5, :cond_6

    if-ne v6, v4, :cond_7

    .line 2457
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isStubExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    :cond_7
    return v1
.end method

.method public getFailCase()Ljava/lang/String;
    .locals 2

    .line 3497
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RESTORED_"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3499
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v1, :cond_1

    .line 3500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->getFailCase()Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3502
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGroupId()I
    .locals 0

    .line 801
    iget p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    return p0
.end method

.method public getHiSyncId()J
    .locals 2

    .line 763
    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    return-wide v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2663
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2664
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIdentityAddress()Ljava/lang/String;
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v0

    .line 1238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIdentityAddressForLog()Ljava/lang/String;
    .locals 3

    .line 1243
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object p0

    .line 1245
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, ":"

    const-string v1, ""

    .line 1248
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "null"

    :cond_1
    return-object p0
.end method

.method public getLeadDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 3566
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method public getManufacturerData()Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
    .locals 0

    .line 1592
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    return-object p0
.end method

.method public getManufacturerRawData()[B
    .locals 0

    .line 1596
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1598
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object p0

    return-object p0
.end method

.method public getMaxConnectionState()I
    .locals 4

    .line 2407
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 2408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v2, :cond_0

    .line 2410
    instance-of v3, v2, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    if-nez v3, :cond_0

    .line 2412
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMemberDevice()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 3610
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    return-object p0
.end method

.method public getMessagePermissionChoice()I
    .locals 1

    .line 2297
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object p0

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 1283
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getNameForLog()Ljava/lang/String;
    .locals 3

    .line 3440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3442
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(A) "

    .line 3443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3444
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "(N) "

    .line 3445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3449
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-nez p0, :cond_2

    .line 3450
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/16 v2, 0xe

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":XX"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3452
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameForSAlogging()Ljava/lang/String;
    .locals 3

    .line 3458
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3459
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-nez p0, :cond_0

    .line 3460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":XX"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getPhonebookPermissionChoice()I
    .locals 1

    .line 2277
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 0

    .line 1287
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "CachedBluetoothDevice"

    const-string p1, "getProfileConnectionState :: profile is null"

    .line 1006
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1011
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 1014
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "CachedBluetoothDevice"

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileConnectionState :: not support profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    monitor-exit v1

    return v0

    .line 1019
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1024
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const-string v1, "CachedBluetoothDevice"

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileConnectionState :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 1030
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1019
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 2070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2071
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2072
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2073
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2073
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 2094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2095
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getRssiGroup(I)I
    .locals 0

    const/16 p0, -0x38

    if-lt p1, p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/16 p0, -0x44

    if-lt p1, p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getSimPermissionChoice()I
    .locals 1

    .line 2317
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSubDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 3570
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 2015
    iget p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    return p0
.end method

.method getUnpairing()Z
    .locals 0

    .line 3696
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    return p0
.end method

.method public getVisible()Z
    .locals 0

    .line 3788
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return p0
.end method

.method public hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "CachedBluetoothDevice"

    const-string p1, "hasProfile :: target profile is null, return false."

    .line 2051
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2056
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p0

    move v1, v0

    .line 2058
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2059
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v2, :cond_1

    .line 2060
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 2175
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isActiveDevice(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 1516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActiveDevice: unknown profile "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CachedBluetoothDevice"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1514
    :cond_0
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    return p0

    .line 1512
    :cond_1
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    return p0

    .line 1508
    :cond_2
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    return p0

    .line 1510
    :cond_3
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    return p0
.end method

.method public isAddrSwitchedDevice()Z
    .locals 0

    .line 3363
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAddrSwitched:Z

    return p0
.end method

.method public isBondingCountExceed()Z
    .locals 0

    .line 3468
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3469
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->isCountMax()Z

    move-result p0

    return p0
.end method

.method public isBusy()Z
    .locals 4

    .line 1645
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 1646
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v1, :cond_0

    .line 1648
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    :cond_1
    return v2

    .line 1656
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isBusyForList()Z
    .locals 7

    .line 1664
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    .line 1667
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v4, :cond_0

    .line 1669
    invoke-virtual {p0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v4

    if-eq v4, v5, :cond_1

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    :cond_1
    move v2, v5

    :cond_2
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_5

    .line 1676
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_6

    :cond_5
    move v1, v5

    :cond_6
    return v1
.end method

.method public isConnected()Z
    .locals 4

    .line 1608
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1609
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1610
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    .line 1612
    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 1616
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1617
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnectedA2dpDevice()Z
    .locals 2

    .line 3511
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3514
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3515
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConnectedForGroup()Z
    .locals 1

    .line 1621
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedMembers()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isConnectedHearingAidDevice()Z
    .locals 2

    .line 3535
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3538
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3539
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConnectedHfpDevice()Z
    .locals 2

    .line 3523
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3526
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3527
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConnectedLeAudioDevice()Z
    .locals 1

    .line 3547
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3548
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnectedMembers()Z
    .locals 1

    .line 1629
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1630
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCoordinatedSetMemberDevice()Z
    .locals 0

    .line 792
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsCoordinatedSetMember:Z

    return p0
.end method

.method isGear1()Z
    .locals 2

    .line 2506
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result v0

    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "GALAXY Gear ("

    .line 2507
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGearIconX()Z
    .locals 4

    .line 1682
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1683
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_2

    .line 1684
    array-length v0, v0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return v1

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v0

    .line 1687
    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    aget-byte v0, v0, v3

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 1688
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x404

    if-ne p0, v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public isHearableUsingWearableManager()Z
    .locals 5

    .line 1697
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1698
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_3

    .line 1699
    array-length v0, v0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return v1

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v0

    const/4 v2, 0x1

    .line 1702
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 1704
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v4, 0x404

    if-ne p0, v4, :cond_3

    .line 1705
    aget-byte p0, v0, v1

    if-nez p0, :cond_1

    if-lt v3, v2, :cond_1

    const/16 v0, 0x90

    if-ge v3, v0, :cond_1

    return v2

    :cond_1
    if-eq p0, v2, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public isHearingAidByUuid()Z
    .locals 0

    .line 3779
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidDeviceByUUID:Z

    return p0
.end method

.method public isHearingAidDevice()Z
    .locals 4

    .line 774
    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRestoredDevice()Z
    .locals 0

    .line 3352
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    return p0
.end method

.method public isSppOnlyDevice()Z
    .locals 2

    .line 3342
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3343
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getSppProfile()Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CachedBluetoothDevice"

    const-string v0, "isSppOnlyDevice :: true"

    .line 3344
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSyncableDevice()Z
    .locals 3

    .line 3369
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3371
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3372
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "CachedBluetoothDevice"

    const-string v2, "isSyncableDevice():: uuids is null"

    .line 3374
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSyncDevice([BLjava/lang/String;[Landroid/os/ParcelUuid;)Z

    move-result p0

    return p0
.end method

.method public isSyncedDevice()Z
    .locals 0

    .line 3357
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    return p0
.end method

.method public isTablet()Z
    .locals 0

    .line 1720
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    return p0
.end method

.method public onActiveDeviceChanged(ZI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    const/16 v2, 0x15

    if-eq p2, v2, :cond_2

    const/16 v2, 0x16

    if-eq p2, v2, :cond_0

    .line 1478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActiveDeviceChanged: unknown profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isActive "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CachedBluetoothDevice"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1474
    :cond_0
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    if-eq p2, p1, :cond_1

    move v0, v1

    .line 1475
    :cond_1
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    goto :goto_0

    .line 1470
    :cond_2
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    if-eq p2, p1, :cond_3

    move v0, v1

    .line 1471
    :cond_3
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    goto :goto_0

    .line 1462
    :cond_4
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    if-eq p2, p1, :cond_5

    move v0, v1

    .line 1463
    :cond_5
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    goto :goto_0

    .line 1466
    :cond_6
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eq p2, p1, :cond_7

    move v0, v1

    .line 1467
    :cond_7
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    :goto_0
    if-eqz v0, :cond_8

    .line 1484
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_8
    return-void
.end method

.method onAudioModeChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 1494
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method onBondingStateChanged(II)V
    .locals 8

    const-string v0, "CachedBluetoothDevice"

    .line 1917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBondingStateChanged :: Device ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], bond state change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 1921
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne p1, v4, :cond_3

    .line 1928
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->addCount()V

    .line 1932
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v0, :cond_2

    .line 1933
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1935
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getRestoredRetryDetector()Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->addCount(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_2

    .line 1939
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    .line 1940
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v7

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1941
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v4, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    goto :goto_0

    .line 1943
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v4, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    .line 1948
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 1949
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 1950
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    goto/16 :goto_1

    :cond_3
    if-ne p1, v2, :cond_a

    .line 1954
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    .line 1955
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1956
    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    .line 1958
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 1959
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    const/16 v4, 0x1f00

    if-eq v3, v4, :cond_6

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v3, v0, :cond_6

    :cond_5
    const-string v0, "CachedBluetoothDevice"

    .line 1961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBondingStateChanged :: COD - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRestoredDevice:Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->getCod()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setBluetoothClass(I)Z

    .line 1965
    :cond_6
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1966
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1967
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->semSetManufacturerData([B)Z

    .line 1970
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1971
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)I

    .line 1975
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    .line 1976
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1977
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    goto :goto_1

    .line 1979
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    .line 1984
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 1985
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 1986
    invoke-interface {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_2

    .line 1988
    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1990
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 1991
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;

    .line 1992
    invoke-interface {v4, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;->semOnDeviceBondStateChanged(II)V

    goto :goto_3

    .line 1994
    :cond_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1997
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    if-ne p1, v2, :cond_d

    .line 1999
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2001
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2002
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 2004
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsAutoConnectAfterBonding:Z

    .line 2005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 2006
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectAllEnabledProfiles()V

    :cond_d
    return-void

    :catchall_0
    move-exception p0

    .line 1994
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1988
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public onCastProfileStateChanged(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 588
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_cast_shared_with:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBluetoothCastMsg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBluetoothCastMsg:Ljava/lang/String;

    .line 592
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 9

    .line 450
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "CachedBluetoothDevice"

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProfileStateChanged: profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", newProfileState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_1

    const-string p0, "CachedBluetoothDevice"

    const-string p1, " BT Turninig Off...Profile conn state change ignored..."

    .line 456
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    if-eq p2, v1, :cond_3

    if-nez p2, :cond_5

    :cond_3
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 466
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "CachedBluetoothDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bluetooth profile "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", on bluetooth device "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 468
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", has "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v1, :cond_4

    const-string v7, "connected."

    goto :goto_0

    :cond_4
    const-string v7, "disconnected."

    .line 470
    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 465
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileLock:Ljava/lang/Object;

    monitor-enter v0

    if-ne p2, v1, :cond_7

    .line 519
    :try_start_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 520
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 521
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 522
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 523
    invoke-virtual {p2, v1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    .line 525
    iput-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 527
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_6
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p2, :cond_8

    .line 533
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    if-nez v1, :cond_8

    instance-of p1, p1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    if-nez p1, :cond_8

    .line 534
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    goto :goto_1

    .line 544
    :cond_7
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v1, :cond_8

    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 545
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p2, :cond_8

    const-string p2, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    .line 547
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 549
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 552
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mOnlyPANUDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 556
    :cond_8
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    return-void

    :catchall_0
    move-exception p0

    .line 556
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method onUuidChanged()V
    .locals 8

    .line 1880
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 1881
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 1884
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x7530

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1886
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x3a98

    goto :goto_0

    .line 1888
    :cond_1
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->LE_AUDIO:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1388

    .line 1892
    :goto_0
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUuidChanged: Time since last connect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    .line 1893
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    add-long/2addr v0, v2

    .line 1905
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 1906
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectAllEnabledProfiles()V

    :cond_4
    const/4 v0, 0x0

    .line 1910
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method processActionFoundEvent(SLandroid/bluetooth/BluetoothClass;SLjava/lang/String;Z[BI)V
    .locals 1

    .line 3386
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 3388
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3389
    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3393
    :goto_0
    iget-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    if-eq v0, p3, :cond_1

    .line 3394
    iput-short p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    move p2, p1

    .line 3398
    :cond_1
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3399
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3400
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_1

    .line 3403
    :cond_2
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    :goto_1
    move p2, p1

    goto :goto_2

    .line 3407
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 3408
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_1

    .line 3413
    :cond_4
    :goto_2
    iget-boolean p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq p3, p5, :cond_5

    .line 3414
    iput-boolean p5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    :cond_5
    if-nez p6, :cond_6

    goto :goto_3

    .line 3420
    :cond_6
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object p3

    invoke-static {p6, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_8

    .line 3421
    :cond_7
    invoke-virtual {p0, p6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    move p2, p1

    .line 3425
    :cond_8
    :goto_3
    iget p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-eq p3, p7, :cond_9

    .line 3426
    iput p7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    move p2, p1

    :cond_9
    const-string p3, "CachedBluetoothDevice"

    if-eqz p2, :cond_a

    const-string p2, "calling dispatchAttributesChanged"

    .line 3431
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    .line 3435
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "processActionFoundEvent :: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 1417
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method refreshBtClass()V
    .locals 1

    .line 1871
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    const/4 v0, 0x0

    .line 1872
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method refreshName()V
    .locals 2

    .line 1362
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 1364
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1368
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .line 2101
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 2103
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2107
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerSemCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;)V
    .locals 2

    .line 2124
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 2125
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2128
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method releaseLruCache()V
    .locals 0

    .line 3692
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDrawableCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public removeAllMemberDevice()V
    .locals 2

    .line 3632
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3633
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3634
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    .line 3635
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeadDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 3636
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeMemberDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 3626
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 3627
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeadDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public resetRetryDetector()V
    .locals 0

    .line 3479
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p0, :cond_0

    .line 3480
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    :cond_0
    return-void
.end method

.method public secConnect(Z)V
    .locals 2

    .line 734
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 739
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkLEConnectionGuide(ZZ)V

    .line 742
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 743
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectAllEnabledProfiles()V

    return-void
.end method

.method public semGetBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 0

    .line 2044
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object p0
.end method

.method public setActive()Z
    .locals 5

    .line 1326
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1329
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "CachedBluetoothDevice"

    if-eqz v0, :cond_1

    .line 1330
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1331
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPreferenceClickListener: A2DP active device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1337
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1338
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPreferenceClickListener: Headset active device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1344
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1345
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPreferenceClickListener: Hearing Aid active device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1350
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1351
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1352
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPreferenceClickListener: LeAudio active device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    return v2
.end method

.method public setBondingCount(I)V
    .locals 0

    .line 3473
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p0, :cond_0

    .line 3474
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setCount(I)V

    :cond_0
    return-void
.end method

.method public setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 2020
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_3

    .line 2021
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const-string v1, "CachedBluetoothDevice"

    if-eqz v0, :cond_0

    .line 2022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBtClass :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x1f00

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_1

    .line 2027
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBtClass :: btClass is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", not set uncategorized"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 2032
    :cond_2
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    const/4 p1, 0x0

    .line 2033
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_3
    return-void
.end method

.method public setDeviceMode(I)V
    .locals 0

    .line 759
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceMode:I

    return-void
.end method

.method public setDeviceSide(I)V
    .locals 0

    .line 751
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceSide:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 2847
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(I)V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedBtDev -- setGroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 813
    :cond_0
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    return-void
.end method

.method public setHiSyncId(J)V
    .locals 2

    .line 767
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHiSyncId: mDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    return-void
.end method

.method public setIsCoordinatedSetMember(Z)V
    .locals 0

    .line 783
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsCoordinatedSetMember:Z

    return-void
.end method

.method public setJustDiscovered(Z)V
    .locals 1

    .line 1438
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    if-eq v0, p1, :cond_0

    .line 1439
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    const/4 p1, 0x0

    .line 1441
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_0
    return-void
.end method

.method public setLeadDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 3562
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public setManufacturerData([B)V
    .locals 3

    .line 1575
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const-string v1, "CachedBluetoothDevice"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setManufacturerData to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "MF is NULL"

    .line 1578
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1580
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1581
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .line 1582
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getPrefixName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    .line 1583
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    goto :goto_0

    .line 1584
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1585
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    .line 1586
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getPrefixName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    .line 1587
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMessagePermissionChoice(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2313
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1297
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1299
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_CHANGE_DEVICE_NAME:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    if-eqz v0, :cond_1

    .line 1301
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1304
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_CHANGE_DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "FEATURE_CHANGE_DEVICE_NAME = null"

    .line 1302
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_2

    .line 1307
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    aget-byte v0, v0, v2

    if-lez v0, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1308
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->CMD_PERSONALIZED_NAME_VALUE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object p1

    .line 1309
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    goto :goto_2

    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)I

    :goto_2
    const/4 p1, 0x1

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_3
    return-void
.end method

.method public setPhonebookPermissionChoice(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2293
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    return-void
.end method

.method setRssi(S)V
    .locals 2

    .line 1524
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRssiGroup(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    const/16 v0, -0x38

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    .line 1526
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x44

    if-lt p1, v0, :cond_1

    const/4 v0, 0x2

    .line 1528
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    .line 1530
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    .line 1533
    :cond_2
    :goto_0
    iput-short p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    :cond_3
    return-void
.end method

.method public setRssiGroup(I)V
    .locals 1

    .line 1544
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    if-eq v0, p1, :cond_0

    .line 1545
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    const/4 p1, 0x1

    .line 1546
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_0
    return-void
.end method

.method setSequence(I)V
    .locals 0

    .line 1540
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSequence:I

    return-void
.end method

.method public setSimPermissionChoice(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2333
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    return-void
.end method

.method public setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 3574
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 3784
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return-void
.end method

.method public shouldLaunchGM(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2511
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public shouldLaunchGM(Ljava/lang/String;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2516
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2517
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceType()I

    move-result v3

    const-string/jumbo v4, "shouldLaunchGM :: Send Bradcast to WatchManagerStub, type : "

    const-string v5, "com.samsung.android.app.watchmanagerstub"

    const-string v6, "WM_MANAGER"

    const-string v7, "com.samsung.android.sconnect.action.CONNECT_WEARABLE"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "CachedBluetoothDevice"

    if-eq v3, v9, :cond_a

    const/4 v11, 0x2

    const-string v12, "com.samsung.android.action.BLUETOOTH_DEVICE"

    const/16 v13, 0xc8

    const-string v14, "DATA"

    const/4 v15, 0x0

    if-eq v3, v11, :cond_4

    const/4 v4, 0x3

    const-string/jumbo v5, "shouldLaunchGM :: Send Bradcast to AppLinker, type : "

    const-string v6, "com.sec.android.app.applinker"

    const-string/jumbo v7, "shouldLaunchGM :: AppLinker version is not satisfy"

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    return v8

    .line 2579
    :cond_0
    sget v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    if-lt v4, v13, :cond_1

    .line 2580
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2581
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v4

    invoke-virtual {v15, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2582
    invoke-virtual {v15, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2585
    :cond_1
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2566
    :cond_2
    sget v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    if-lt v4, v13, :cond_3

    .line 2567
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2568
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v4

    invoke-virtual {v15, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2569
    invoke-virtual {v15, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2572
    :cond_3
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2533
    :cond_4
    sget v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    if-ge v11, v13, :cond_6

    .line 2534
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v11

    if-eqz v11, :cond_8

    .line 2535
    array-length v12, v11

    const/16 v13, 0xa

    if-le v12, v13, :cond_8

    .line 2536
    new-instance v12, Ljava/lang/StringBuilder;

    aget-byte v14, v11, v13

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2537
    :goto_0
    aget-byte v14, v11, v13

    if-ge v8, v14, :cond_5

    add-int/lit8 v14, v8, 0xb

    .line 2538
    aget-byte v14, v11, v14

    int-to-char v14, v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2541
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2542
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {v15, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    const/16 v6, 0x12c

    if-ge v11, v6, :cond_7

    .line 2547
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.wmanger.action.CONNECT_WEARABLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v7

    invoke-virtual {v6, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_1

    .line 2551
    :cond_7
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2552
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v7

    invoke-virtual {v6, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_1
    move-object v15, v6

    :cond_8
    :goto_2
    if-eqz v15, :cond_9

    .line 2555
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearableUsingWearableManager()Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    goto :goto_4

    .line 2524
    :cond_a
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "watchmanager"

    .line 2525
    invoke-virtual {v15, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2526
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v8, v9

    :goto_4
    if-eqz v15, :cond_c

    if-eqz v1, :cond_b

    const-string/jumbo v3, "request_app_package_name"

    .line 2597
    invoke-virtual {v15, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    const-string v1, "MAC"

    .line 2600
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2601
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    const-string v2, "DEVICE_NAME"

    invoke-virtual {v15, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IS_START_ACTIVITY"

    move/from16 v2, p2

    .line 2602
    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2603
    invoke-virtual {v15, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 2604
    invoke-virtual {v15, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 2605
    invoke-virtual {v15, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2606
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE"

    invoke-virtual {v1, v15, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2609
    :cond_c
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_d

    .line 2611
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_d
    return v8
.end method

.method public startPairing()Z
    .locals 3

    .line 917
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0, v0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkLEConnectionGuide(ZZ)V

    .line 926
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 932
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public switchSubDeviceContent()V
    .locals 8

    .line 3579
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3580
    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 3581
    iget-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 3582
    iget v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceSide:I

    .line 3586
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 3587
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 3590
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3591
    iget-short v7, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iput-short v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 3592
    iget-boolean v7, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iput-boolean v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 3593
    iget v7, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceSide:I

    iput v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceSide:I

    .line 3594
    iget-object v7, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    iput-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 3595
    iget-object v7, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 3597
    iput-object v0, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3598
    iput-short v1, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 3599
    iput-boolean v2, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 3600
    iput v3, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceSide:I

    .line 3601
    iput-object v4, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 3602
    iput-object v5, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 3603
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2158
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-nez v0, :cond_0

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":XX"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2162
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unpair()V
    .locals 5

    .line 982
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 985
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeRestoredDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpairLegacy()V

    .line 991
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v0, :cond_3

    .line 992
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    .line 993
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isGalaxyWatchDevice(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    goto :goto_1

    .line 996
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public unpairLegacy()V
    .locals 6

    .line 942
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnectLegacy()V

    .line 943
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    .line 950
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 952
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CachedBluetoothDevice -- unpairLegacy: decribe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 959
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " : "

    .line 960
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 964
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CachedBluetoothDevice -- unpairLegacy: member = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 967
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 969
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->releaseLruCache()V

    .line 970
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CachedBluetoothDevice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .line 2112
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 2114
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2115
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2118
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterSemCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;)V
    .locals 2

    .line 2133
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 2134
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2135
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2137
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
