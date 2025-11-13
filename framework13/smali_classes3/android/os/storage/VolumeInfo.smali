.class public Landroid/os/storage/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o ACTION_VOLUME_STATE_CHANGED:Ljava/lang/String; = "android.os.storage.action.VOLUME_STATE_CHANGED"

.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DOCUMENT_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final greylist-max-o DOCUMENT_ROOT_PRIMARY_EMULATED:Ljava/lang/String; = "primary"

.field public static final greylist-max-o EXTRA_VOLUME_ID:Ljava/lang/String; = "android.os.storage.extra.VOLUME_ID"

.field public static final greylist-max-o EXTRA_VOLUME_STATE:Ljava/lang/String; = "android.os.storage.extra.VOLUME_STATE"

.field public static final greylist-max-o ID_EMULATED_INTERNAL:Ljava/lang/String; = "emulated"

.field public static final greylist-max-o ID_PRIVATE_INTERNAL:Ljava/lang/String; = "private"

.field public static final greylist-max-o MOUNT_FLAG_PRIMARY:I = 0x1

.field public static final blacklist MOUNT_FLAG_VISIBLE_FOR_READ:I = 0x2

.field public static final blacklist MOUNT_FLAG_VISIBLE_FOR_WRITE:I = 0x4

.field public static final greylist-max-o STATE_BAD_REMOVAL:I = 0x8

.field public static final greylist-max-o STATE_CHECKING:I = 0x1

.field public static final greylist-max-o STATE_EJECTING:I = 0x5

.field public static final greylist-max-o STATE_FORMATTING:I = 0x4

.field public static final blacklist STATE_HIDDEN_MOUNT:I = 0x9

.field public static final greylist-max-o STATE_MOUNTED:I = 0x2

.field public static final greylist-max-o STATE_MOUNTED_READ_ONLY:I = 0x3

.field public static final blacklist STATE_MOVE_MOUNT:I = 0xa

.field public static final greylist-max-o STATE_REMOVED:I = 0x7

.field public static final greylist-max-o STATE_UNMOUNTABLE:I = 0x6

.field public static final greylist-max-o STATE_UNMOUNTED:I = 0x0

.field public static final greylist-max-o TYPE_ASEC:I = 0x3

.field public static final greylist TYPE_EMULATED:I = 0x2

.field public static final greylist-max-o TYPE_OBB:I = 0x4

.field public static final greylist-max-o TYPE_PRIVATE:I = 0x1

.field public static final greylist TYPE_PUBLIC:I = 0x0

.field public static final blacklist TYPE_STUB:I = 0x5

.field private static final greylist-max-o sDescriptionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sEnvironmentToBroadcast:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sStateToDescrip:Landroid/util/SparseIntArray;

.field private static greylist-max-o sStateToEnvironment:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist disk:Landroid/os/storage/DiskInfo;

.field public greylist fsLabel:Ljava/lang/String;

.field public greylist-max-o fsType:Ljava/lang/String;

.field public greylist fsUuid:Ljava/lang/String;

.field public final greylist-max-o id:Ljava/lang/String;

.field public greylist internalPath:Ljava/lang/String;

.field public greylist-max-o mountFlags:I

.field public greylist-max-o mountUserId:I

.field public final greylist-max-o partGuid:Ljava/lang/String;

.field public greylist path:Ljava/lang/String;

.field public greylist state:I

.field public final greylist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    .line 118
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    .line 121
    new-instance v0, Landroid/os/storage/VolumeInfo$1;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    .line 137
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string/jumbo v2, "unmounted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v3, 0x1

    const-string v4, "checking"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v5, 0x2

    const-string/jumbo v6, "mounted"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v7, 0x3

    const-string/jumbo v8, "mounted_ro"

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v10, 0x5

    const-string v11, "ejecting"

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v12, 0x6

    const-string/jumbo v13, "unmountable"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v14, 0x7

    const-string/jumbo v15, "removed"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v14, 0x8

    const-string v12, "bad_removal"

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v14, 0x9

    const-string v10, "HiddenMount"

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v10, 0xa

    const-string v9, "MoveMount"

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v13, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v15, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v2, 0x10404cd

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v4, 0x10404d1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x10404c9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x10404ce

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x10404cb

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x10404ca

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x10404d0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x10404cf

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x10404c8

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    new-instance v0, Landroid/os/storage/VolumeInfo$2;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$2;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 181
    const/16 v1, -0x2710

    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 182
    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    goto :goto_0

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 210
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 2
    .param p1, "volumeInfo"    # Landroid/os/storage/VolumeInfo;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 181
    const/16 v1, -0x2710

    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 182
    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 222
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 223
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 224
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 225
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 226
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 227
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 228
    iget v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 229
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 232
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "disk"    # Landroid/os/storage/DiskInfo;
    .param p4, "partGuid"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 181
    const/16 v1, -0x2710

    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 182
    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 195
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 196
    iput p2, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 197
    iput-object p3, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 198
    iput-object p4, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public static greylist buildStableMtpStorageId(Ljava/lang/String;)I
    .locals 4
    .param p0, "fsUuid"    # Ljava/lang/String;

    .line 512
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x0

    return v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    .line 516
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 517
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_1
    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    const/high16 v2, -0x10000

    and-int v0, v1, v2

    .line 522
    if-nez v0, :cond_2

    const/high16 v0, 0x20000

    .line 523
    :cond_2
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x20000

    .line 524
    :cond_3
    if-ne v0, v2, :cond_4

    const/high16 v0, -0x20000

    .line 525
    :cond_4
    or-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static greylist-max-o getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "envState"    # Ljava/lang/String;

    .line 247
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static greylist-max-o getBroadcastForState(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 251
    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDescriptionComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 255
    sget-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static greylist getEnvironmentForState(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 238
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, "envState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 240
    return-object v0

    .line 242
    :cond_0
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private blacklist isVisibleForRead()Z
    .locals 1

    .line 333
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVisibleForWrite()Z
    .locals 1

    .line 337
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVolumeSupportedForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 346
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 347
    return v1

    .line 349
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public greylist buildBrowseIntent()Landroid/content/Intent;
    .locals 1

    .line 539
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntentForUser(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o buildBrowseIntentForUser(I)Landroid/content/Intent;
    .locals 4
    .param p1, "userId"    # I

    .line 544
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const-string v1, "com.android.externalstorage.documents"

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v2, p1, :cond_1

    .line 546
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 547
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    const-string/jumbo v0, "primary"

    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 554
    .restart local v0    # "uri":Landroid/net/Uri;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string/jumbo v2, "vnd.android.document/root"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    const-string v3, "android.provider.extra.SHOW_ADVANCED"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 561
    return-object v1

    .line 551
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "reportUnmounted"    # Z

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 422
    .local v3, "storage":Landroid/os/storage/StorageManager;
    iget v4, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v14, v4

    .line 423
    .local v14, "externallyManaged":Z
    const/4 v4, 0x0

    .line 424
    .local v4, "allowMassStorage":Z
    if-eqz p3, :cond_1

    .line 425
    const-string/jumbo v6, "unmounted"

    goto :goto_1

    :cond_1
    iget v6, v0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v6}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object/from16 v21, v6

    .line 427
    .local v21, "envState":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v6

    .line 428
    .local v6, "userPath":Ljava/io/File;
    const-string v7, "/dev/null"

    if-nez v6, :cond_2

    .line 429
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    move-object/from16 v25, v6

    goto :goto_2

    .line 428
    :cond_2
    move-object/from16 v25, v6

    .line 431
    .end local v6    # "userPath":Ljava/io/File;
    .local v25, "userPath":Ljava/io/File;
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/storage/VolumeInfo;->getInternalPathForUser(I)Ljava/io/File;

    move-result-object v6

    .line 432
    .local v6, "internalPath":Ljava/io/File;
    if-nez v6, :cond_3

    .line 433
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    move-object/from16 v26, v6

    goto :goto_3

    .line 432
    :cond_3
    move-object/from16 v26, v6

    .line 436
    .end local v6    # "internalPath":Ljava/io/File;
    .local v26, "internalPath":Ljava/io/File;
    :goto_3
    const/4 v6, 0x0

    .line 437
    .local v6, "description":Ljava/lang/String;
    const/4 v7, 0x0

    .line 438
    .local v7, "uuid":Ljava/util/UUID;
    iget-object v8, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 439
    .local v8, "derivedFsUuid":Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 441
    .local v9, "maxFileSize":J
    const/4 v11, 0x0

    .line 443
    .local v11, "mtpStorageId":I
    iget v12, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 444
    const/4 v5, 0x1

    .line 446
    .local v5, "emulated":Z
    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v12

    .line 447
    .local v12, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v12, :cond_4

    .line 448
    invoke-virtual {v3, v12}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 449
    iget-object v13, v12, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v13}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    .line 450
    iget-object v8, v12, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto :goto_4

    .line 452
    :cond_4
    sget-object v7, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 455
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 456
    const v11, 0x10001

    .line 459
    :cond_5
    invoke-virtual {v0, v2}, Landroid/os/storage/VolumeInfo;->isPrimaryEmulatedForUser(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 460
    const/4 v13, 0x0

    .local v13, "removable":Z
    goto :goto_5

    .line 462
    .end local v13    # "removable":Z
    :cond_6
    const/4 v13, 0x1

    .line 465
    .end local v12    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v13    # "removable":Z
    :goto_5
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    move/from16 v31, v11

    move/from16 v32, v13

    goto :goto_8

    .end local v5    # "emulated":Z
    .end local v13    # "removable":Z
    :cond_7
    if-eqz v12, :cond_9

    if-ne v12, v5, :cond_8

    goto :goto_6

    .line 485
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected volume type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 466
    :cond_9
    :goto_6
    const/4 v5, 0x0

    .line 467
    .restart local v5    # "emulated":Z
    const/4 v13, 0x1

    .line 469
    .restart local v13    # "removable":Z
    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 472
    const v11, 0x10001

    goto :goto_7

    .line 477
    :cond_a
    iget-object v12, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v12}, Landroid/os/storage/VolumeInfo;->buildStableMtpStorageId(Ljava/lang/String;)I

    move-result v11

    .line 480
    :goto_7
    iget-object v12, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string/jumbo v15, "vfat"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 481
    const-wide v9, 0xffffffffL

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    move/from16 v31, v11

    move/from16 v32, v13

    goto :goto_8

    .line 480
    :cond_b
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    move/from16 v31, v11

    move/from16 v32, v13

    .line 488
    .end local v7    # "uuid":Ljava/util/UUID;
    .end local v8    # "derivedFsUuid":Ljava/lang/String;
    .end local v9    # "maxFileSize":J
    .end local v11    # "mtpStorageId":I
    .end local v13    # "removable":Z
    .local v27, "uuid":Ljava/util/UUID;
    .local v28, "derivedFsUuid":Ljava/lang/String;
    .local v29, "maxFileSize":J
    .local v31, "mtpStorageId":I
    .local v32, "removable":Z
    :goto_8
    if-nez v6, :cond_c

    .line 489
    const v7, 0x104000e

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v33, v6

    goto :goto_9

    .line 488
    :cond_c
    move-object/from16 v33, v6

    .line 492
    .end local v6    # "description":Ljava/lang/String;
    .local v33, "description":Ljava/lang/String;
    :goto_9
    const-string/jumbo v6, "undefined"

    .line 493
    .local v6, "diskType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 494
    .local v7, "bAsec":Z
    iget-object v8, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v8, :cond_f

    .line 495
    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 496
    const-string/jumbo v6, "sd"

    .line 497
    const/4 v7, 0x1

    move-object/from16 v34, v6

    move/from16 v35, v7

    goto :goto_a

    .line 498
    :cond_d
    iget-object v8, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 499
    const-string/jumbo v6, "usb"

    move-object/from16 v34, v6

    move/from16 v35, v7

    goto :goto_a

    .line 498
    :cond_e
    move-object/from16 v34, v6

    move/from16 v35, v7

    goto :goto_a

    .line 502
    :cond_f
    const-string v6, "fuse"

    move-object/from16 v34, v6

    move/from16 v35, v7

    .line 505
    .end local v6    # "diskType":Ljava/lang/String;
    .end local v7    # "bAsec":Z
    .local v34, "diskType":Ljava/lang/String;
    .local v35, "bAsec":Z
    :goto_a
    new-instance v36, Landroid/os/storage/StorageVolume;

    move-object/from16 v6, v36

    iget-object v7, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v11

    const/4 v15, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move-object/from16 v18, v8

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v33

    move/from16 v12, v32

    move v13, v5

    move-wide/from16 v16, v29

    move-object/from16 v19, v27

    move-object/from16 v20, v28

    move/from16 v22, v31

    move-object/from16 v23, v34

    move/from16 v24, v35

    invoke-direct/range {v6 .. v24}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v36
.end method

.method public blacklist clone()Landroid/os/storage/VolumeInfo;
    .locals 2

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 595
    .local v0, "temp":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/VolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 596
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 597
    sget-object v1, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    return-object v1

    .line 599
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 574
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    const-string v2, "TYPE_"

    invoke-static {v0, v2, v1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 575
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diskId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 576
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    const-string/jumbo v1, "partGuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 577
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    int-to-long v1, v1

    const-string v3, "MOUNT_FLAG_"

    invoke-static {v0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mountFlags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 578
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mountUserId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 579
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    const-string v2, "STATE_"

    invoke-static {v0, v2, v1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 580
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 581
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string v1, "fsType"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 582
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    const-string v1, "fsUuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 583
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    const-string v1, "fsLabel"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 584
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 585
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 586
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    const-string/jumbo v1, "internalPath"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 587
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 588
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 589
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 605
    instance-of v0, p1, Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    iget-object v1, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getDescription()Ljava/lang/String;
    .locals 2

    .line 303
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string/jumbo v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v1, "emulated;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    return-object v0

    .line 308
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_2
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040dda

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDisk()Landroid/os/storage/DiskInfo;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    return-object v0
.end method

.method public greylist getDiskId()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist getFsUuid()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getId()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getInternalPath()Ljava/io/File;
    .locals 2

    .line 384
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist getInternalPathForUser(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 406
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    return-object v0

    .line 408
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 410
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const-string v2, "/storage/"

    const-string v3, "/mnt/media_rw/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getMountUserId()I
    .locals 1

    .line 298
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return v0
.end method

.method public blacklist getNormalizedFsUuid()Ljava/lang/String;
    .locals 2

    .line 293
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist getPath()Ljava/io/File;
    .locals 2

    .line 379
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist getPathForUser(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 389
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 390
    return-object v1

    .line 391
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 394
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 396
    :cond_2
    return-object v1

    .line 392
    :cond_3
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getState()I
    .locals 1

    .line 280
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    return v0
.end method

.method public greylist-max-o getStateDescription()I
    .locals 3

    .line 284
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public greylist getType()I
    .locals 1

    .line 275
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 614
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isMountedReadable()Z
    .locals 2

    .line 314
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist isMountedWritable()Z
    .locals 2

    .line 319
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isPrimary()Z
    .locals 2

    .line 324
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-r isPrimaryEmulatedForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 365
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emulated;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist isPrimaryPhysical()Z
    .locals 1

    .line 329
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isVisible()Z
    .locals 1

    .line 342
    invoke-direct {p0}, Landroid/os/storage/VolumeInfo;->isVisibleForRead()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o isVisibleForRead(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 369
    invoke-direct {p0, p1}, Landroid/os/storage/VolumeInfo;->isVolumeSupportedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/storage/VolumeInfo;->isVisibleForRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isVisibleForUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 356
    invoke-direct {p0, p1}, Landroid/os/storage/VolumeInfo;->isVolumeSupportedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-r isVisibleForWrite(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 374
    invoke-direct {p0, p1}, Landroid/os/storage/VolumeInfo;->isVolumeSupportedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 566
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 567
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 568
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 637
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 638
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 640
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/DiskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 643
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    :goto_0
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 646
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 654
    return-void
.end method
