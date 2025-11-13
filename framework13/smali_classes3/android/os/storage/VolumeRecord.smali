.class public Landroid/os/storage/VolumeRecord;
.super Ljava/lang/Object;
.source "VolumeRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_FS_UUID:Ljava/lang/String; = "android.os.storage.extra.FS_UUID"

.field public static final greylist-max-o USER_FLAG_INITED:I = 0x1

.field public static final greylist-max-o USER_FLAG_SNOOZED:I = 0x2


# instance fields
.field public greylist-max-o createdMillis:J

.field public final greylist-max-o fsUuid:Ljava/lang/String;

.field public greylist-max-o lastBenchMillis:J

.field public blacklist lastSeenMillis:J

.field public greylist-max-o lastTrimMillis:J

.field public greylist-max-o nickname:Ljava/lang/String;

.field public greylist-max-o partGuid:Ljava/lang/String;

.field public final greylist-max-o type:I

.field public greylist-max-o userFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Landroid/os/storage/VolumeRecord$1;

    invoke-direct {v0}, Landroid/os/storage/VolumeRecord$1;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "fsUuid"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/os/storage/VolumeRecord;->type:I

    .line 61
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeRecord;->type:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 75
    return-void
.end method


# virtual methods
.method public blacklist buildStorageVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;
    .locals 29
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "id":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v2, "/dev/null"

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v4, "userPath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v5, "internalPath":Ljava/io/File;
    const/16 v18, 0x0

    .line 106
    .local v18, "primary":Z
    const/16 v19, 0x1

    .line 107
    .local v19, "removable":Z
    const/16 v20, 0x0

    .line 108
    .local v20, "emulated":Z
    const/16 v21, 0x0

    .line 109
    .local v21, "externallyManaged":Z
    const/16 v22, 0x0

    .line 110
    .local v22, "allowMassStorage":Z
    const-wide/16 v23, 0x0

    .line 111
    .local v23, "maxFileSize":J
    new-instance v14, Landroid/os/UserHandle;

    const/16 v2, -0x2710

    invoke-direct {v14, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 112
    .local v14, "user":Landroid/os/UserHandle;
    const-string/jumbo v25, "unknown"

    .line 114
    .local v25, "envState":Ljava/lang/String;
    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 115
    .local v2, "description":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 116
    const v3, 0x104000e

    move-object/from16 v15, p1

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_0

    .line 115
    :cond_0
    move-object/from16 v15, p1

    move-object/from16 v26, v2

    .line 119
    .end local v2    # "description":Ljava/lang/String;
    .local v26, "description":Ljava/lang/String;
    :goto_0
    new-instance v27, Landroid/os/storage/StorageVolume;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    iget-object v6, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string/jumbo v17, "unknown"

    move-object/from16 v2, v27

    move-object v3, v1

    move-object/from16 v28, v6

    move-object/from16 v6, v26

    move-object/from16 v15, v16

    move-object/from16 v16, v28

    invoke-direct/range {v2 .. v17}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    return-object v27
.end method

.method public blacklist clone()Landroid/os/storage/VolumeRecord;
    .locals 2

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    .local v0, "temp":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/VolumeRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    sget-object v1, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    return-object v1

    .line 151
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 125
    const-string v0, "VolumeRecord:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 127
    const-class v0, Landroid/os/storage/VolumeInfo;

    iget v1, p0, Landroid/os/storage/VolumeRecord;->type:I

    const-string v2, "TYPE_"

    invoke-static {v0, v2, v1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 128
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string v1, "fsUuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 129
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v1, "partGuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 131
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v1, "nickname"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 132
    const-class v0, Landroid/os/storage/VolumeRecord;

    iget v1, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    int-to-long v1, v1

    .line 133
    const-string v3, "USER_FLAG_"

    invoke-static {v0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "userFlags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 135
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createdMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 136
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lastSeenMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 137
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lastTrimMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 138
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lastBenchMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 141
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 157
    instance-of v0, p1, Landroid/os/storage/VolumeRecord;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    iget-object v1, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getFsUuid()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNickname()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNormalizedFsUuid()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

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

.method public greylist-max-o getType()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/os/storage/VolumeRecord;->type:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o isInited()Z
    .locals 2

    .line 94
    iget v0, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o isSnoozed()Z
    .locals 1

    .line 98
    iget v0, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 189
    iget v0, p0, Landroid/os/storage/VolumeRecord;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 196
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    return-void
.end method
