.class public final Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageVolume$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_OPEN_EXTERNAL_DIRECTORY:Ljava/lang/String; = "android.os.storage.action.OPEN_EXTERNAL_DIRECTORY"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_DIRECTORY_NAME:Ljava/lang/String; = "android.os.storage.extra.DIRECTORY_NAME"

.field public static final whitelist EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "android.os.storage.extra.STORAGE_VOLUME"

.field public static final greylist-max-o STORAGE_ID_INVALID:I = 0x0

.field public static final greylist-max-o STORAGE_ID_PRIMARY:I = 0x10001

.field public static final blacklist STORAGE_ID_PRIVATE:I = 0x10002


# instance fields
.field private final blacklist mActivitySecureContainer:Z

.field private final greylist-max-o mAllowMassStorage:Z

.field private final greylist mDescription:Ljava/lang/String;

.field private final greylist-max-o mEmulated:Z

.field private final blacklist mExternallyManaged:Z

.field private final greylist-max-o mFsUuid:Ljava/lang/String;

.field private final greylist mId:Ljava/lang/String;

.field private final greylist-max-o mInternalPath:Ljava/io/File;

.field private final greylist-max-o mMaxFileSize:J

.field private final greylist-max-o mOwner:Landroid/os/UserHandle;

.field private final greylist mPath:Ljava/io/File;

.field private final greylist mPrimary:Z

.field private final greylist mRemovable:Z

.field private final greylist-max-o mState:Ljava/lang/String;

.field private final blacklist mStorageId:I

.field private final blacklist mSubSystem:Ljava/lang/String;

.field private final blacklist mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 546
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mInternalPath:Ljava/io/File;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mExternallyManaged:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 177
    const-class v0, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/util/UUID;

    goto :goto_5

    .line 181
    :cond_5
    iput-object v3, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/util/UUID;

    .line 183
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 190
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "internalPath"    # Ljava/io/File;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "primary"    # Z
    .param p6, "removable"    # Z
    .param p7, "emulated"    # Z
    .param p8, "externallyManaged"    # Z
    .param p9, "allowMassStorage"    # Z
    .param p10, "maxFileSize"    # J
    .param p12, "owner"    # Landroid/os/UserHandle;
    .param p13, "uuid"    # Ljava/util/UUID;
    .param p14, "fsUuid"    # Ljava/lang/String;
    .param p15, "state"    # Ljava/lang/String;

    .line 144
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    .line 146
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 147
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mInternalPath:Ljava/io/File;

    .line 148
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 149
    move/from16 v1, p5

    iput-boolean v1, v0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 150
    move/from16 v2, p6

    iput-boolean v2, v0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 151
    move/from16 v3, p7

    iput-boolean v3, v0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 152
    move/from16 v4, p8

    iput-boolean v4, v0, Landroid/os/storage/StorageVolume;->mExternallyManaged:Z

    .line 153
    move/from16 v5, p9

    iput-boolean v5, v0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 154
    move-wide/from16 v6, p10

    iput-wide v6, v0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 155
    invoke-static/range {p12 .. p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    iput-object v8, v0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 156
    move-object/from16 v8, p13

    iput-object v8, v0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/util/UUID;

    .line 157
    move-object/from16 v9, p14

    iput-object v9, v0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 158
    invoke-static/range {p15 .. p15}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 160
    const/4 v10, 0x0

    iput v10, v0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 161
    const-string/jumbo v11, "undefined"

    iput-object v11, v0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 162
    iput-boolean v10, v0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "internalPath"    # Ljava/io/File;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "primary"    # Z
    .param p6, "removable"    # Z
    .param p7, "emulated"    # Z
    .param p8, "externallyManaged"    # Z
    .param p9, "allowMassStorage"    # Z
    .param p10, "maxFileSize"    # J
    .param p12, "owner"    # Landroid/os/UserHandle;
    .param p13, "uuid"    # Ljava/util/UUID;
    .param p14, "fsUuid"    # Ljava/lang/String;
    .param p15, "state"    # Ljava/lang/String;
    .param p16, "storageId"    # I
    .param p17, "subSystem"    # Ljava/lang/String;
    .param p18, "activitySecureContainer"    # Z

    .line 678
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    .line 680
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 681
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mInternalPath:Ljava/io/File;

    .line 682
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 683
    move/from16 v1, p5

    iput-boolean v1, v0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 684
    move/from16 v2, p6

    iput-boolean v2, v0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 685
    move/from16 v3, p7

    iput-boolean v3, v0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 686
    move/from16 v4, p8

    iput-boolean v4, v0, Landroid/os/storage/StorageVolume;->mExternallyManaged:Z

    .line 687
    move/from16 v5, p9

    iput-boolean v5, v0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 688
    move-wide/from16 v6, p10

    iput-wide v6, v0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 689
    invoke-static/range {p12 .. p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    iput-object v8, v0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 690
    move-object/from16 v8, p13

    iput-object v8, v0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/util/UUID;

    .line 691
    move-object/from16 v9, p14

    iput-object v9, v0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 692
    invoke-static/range {p15 .. p15}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 693
    move/from16 v10, p16

    iput v10, v0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 694
    move-object/from16 v11, p17

    iput-object v11, v0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 695
    move/from16 v12, p18

    iput-boolean v12, v0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 696
    return-void
.end method

.method public static blacklist normalizeUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fsUuid"    # Ljava/lang/String;

    .line 370
    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public greylist allowMassStorage()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public whitelist createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "directoryName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 455
    invoke-static {p1}, Landroid/os/Environment;->isStandardDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.OPEN_EXTERNAL_DIRECTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    const-string v1, "android.os.storage.extra.DIRECTORY_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    return-object v0
.end method

.method public whitelist createOpenDocumentTreeIntent()Landroid/content/Intent;
    .locals 5

    .line 479
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string/jumbo v0, "primary"

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    :goto_0
    nop

    .line 482
    .local v0, "rootId":Ljava/lang/String;
    const-string v1, "com.android.externalstorage.documents"

    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 484
    .local v1, "rootUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    const-string v3, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    .line 486
    const-string v4, "android.provider.extra.SHOW_ADVANCED"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 487
    .local v2, "intent":Landroid/content/Intent;
    return-object v2
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump()Ljava/lang/String;
    .locals 4

    .line 516
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 517
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 518
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 523
    const-string v0, "StorageVolume:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 525
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    const-string/jumbo v1, "mId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 526
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    const-string/jumbo v1, "mPath"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 527
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mInternalPath:Ljava/io/File;

    const-string/jumbo v1, "mInternalPath"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 528
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    const-string/jumbo v1, "mDescription"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 529
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mPrimary"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 530
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mRemovable"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 531
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mEmulated"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 532
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mExternallyManaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mExternallyManaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 533
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mAllowMassStorage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 534
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "mMaxFileSize"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 535
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    const-string/jumbo v1, "mOwner"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 536
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    const-string/jumbo v1, "mFsUuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 537
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    const-string/jumbo v1, "mState"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 539
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mStorageId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 540
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    const-string/jumbo v1, "mSubSystem"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 541
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mActivitySecureContainer"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 544
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 492
    instance-of v0, p1, Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 493
    move-object v1, p1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 494
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    iget-object v2, v1, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 496
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivitySecureContainer()Z
    .locals 1

    .line 700
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    return v0
.end method

.method public whitelist getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 259
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDirectory()Ljava/io/File;
    .locals 2

    .line 244
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 247
    :pswitch_0
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4a15a678 -> :sswitch_1
        0x4d789964 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-r getFatVolumeId()I
    .locals 4

    .line 385
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1

    .line 386
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getInternalPath()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mInternalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMaxFileSize()J
    .locals 2

    .line 317
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public whitelist getMediaStoreVolumeName()Ljava/lang/String;
    .locals 1

    .line 361
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "external_primary"

    return-object v0

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getNormalizedUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNormalizedUuid()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageVolume;->normalizeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOwner()Landroid/os/UserHandle;
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-object v0
.end method

.method public greylist-max-q getPath()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-q getPathFile()Ljava/io/File;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getState()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStorageId()I
    .locals 1

    .line 711
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public whitelist getStorageUuid()Ljava/util/UUID;
    .locals 1

    .line 340
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist getSubSystem()Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getUserLabel()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUuid()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 501
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isEmulated()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public whitelist isExternallyManaged()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 295
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mExternallyManaged:Z

    return v0
.end method

.method public whitelist isPrimary()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    return v0
.end method

.method public whitelist isRemovable()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public whitelist semGetPath()Ljava/lang/String;
    .locals 1

    .line 741
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetStorageId()I
    .locals 1

    .line 729
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public whitelist semGetSubSystem()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StorageVolume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 508
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 565
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mInternalPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 569
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mExternallyManaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 575
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 576
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/util/UUID;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    :goto_0
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 585
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 587
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    return-void
.end method
