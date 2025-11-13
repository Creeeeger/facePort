.class Lcom/android/internal/os/ZygoteArguments;
.super Ljava/lang/Object;
.source "ZygoteArguments.java"


# instance fields
.field blacklist mAbiListQuery:Z

.field blacklist mAllowlistedDataInfoList:[Ljava/lang/String;

.field blacklist mApiDenylistExemptions:[Ljava/lang/String;

.field blacklist mAppDataDir:Ljava/lang/String;

.field blacklist mBindMountAppDataDirs:Z

.field blacklist mBindMountAppStorageDirs:Z

.field blacklist mBootCompleted:Z

.field private blacklist mCapabilitiesSpecified:Z

.field blacklist mDisabledCompatChanges:[J

.field blacklist mEffectiveCapabilities:J

.field blacklist mGid:I

.field blacklist mGidSpecified:Z

.field blacklist mGids:[I

.field blacklist mHiddenApiAccessLogSampleRate:I

.field blacklist mHiddenApiAccessStatslogSampleRate:I

.field blacklist mInstructionSet:Ljava/lang/String;

.field blacklist mInvokeWith:Ljava/lang/String;

.field blacklist mIsTopApp:Z

.field blacklist mMountExternal:I

.field blacklist mNiceName:Ljava/lang/String;

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mPermittedCapabilities:J

.field blacklist mPidQuery:Z

.field blacklist mPkgDataInfoList:[Ljava/lang/String;

.field blacklist mPreloadApp:Ljava/lang/String;

.field blacklist mPreloadDefault:Z

.field blacklist mPreloadPackage:Ljava/lang/String;

.field blacklist mPreloadPackageCacheKey:Ljava/lang/String;

.field blacklist mPreloadPackageLibFileName:Ljava/lang/String;

.field blacklist mPreloadPackageLibs:Ljava/lang/String;

.field blacklist mRLimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mRemainingArgs:[Ljava/lang/String;

.field blacklist mRuntimeFlags:I

.field blacklist mSeInfo:Ljava/lang/String;

.field private blacklist mSeInfoSpecified:Z

.field blacklist mStartChildZygote:Z

.field blacklist mTargetSdkVersion:I

.field private blacklist mTargetSdkVersionSpecified:Z

.field blacklist mUid:I

.field blacklist mUidSpecified:Z

.field blacklist mUsapPoolEnabled:Z

.field blacklist mUsapPoolStatusSpecified:Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .locals 1
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 61
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 77
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    .line 210
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteArguments;->parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    .line 253
    return-void
.end method

.method private static blacklist getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 547
    invoke-static {p0}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;

    .line 543
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;
    .locals 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteCommandBuffer;->getCount()I

    move-result v0

    .line 263
    .local v0, "argCount":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/os/ZygoteArguments;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/ZygoteArguments;-><init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    :goto_0
    return-object v1
.end method

.method private blacklist parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .locals 12
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "unprocessedArg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 288
    .local v1, "curArg":I
    const/4 v2, 0x0

    .line 289
    .local v2, "seenRuntimeArgs":Z
    const/4 v3, 0x1

    .line 291
    .local v3, "expectRuntimeArgs":Z
    :goto_0
    const/4 v4, 0x0

    if-ge v1, p2, :cond_35

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    add-int/lit8 v1, v1, 0x1

    .line 296
    goto/16 :goto_7

    .line 297
    :cond_0
    const-string v6, "--setuid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Duplicate arg specified"

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 298
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v4, :cond_1

    .line 302
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 303
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    goto/16 :goto_6

    .line 299
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_2
    const-string v6, "--setgid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 305
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v4, :cond_3

    .line 309
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 310
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    goto/16 :goto_6

    .line 306
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :cond_4
    const-string v6, "--target-sdk-version="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 312
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    if-nez v4, :cond_5

    .line 316
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    .line 317
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    goto/16 :goto_6

    .line 313
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Duplicate target-sdk-version specified"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_6
    const-string v6, "--runtime-args"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 319
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 320
    :cond_7
    const-string v6, "--runtime-flags="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 321
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto/16 :goto_6

    .line 322
    :cond_8
    const-string v6, "--seinfo="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 323
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    if-nez v4, :cond_9

    .line 327
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    .line 328
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    goto/16 :goto_6

    .line 324
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_a
    const-string v6, "--capabilities="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x2

    if-eqz v6, :cond_d

    .line 330
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    if-nez v6, :cond_c

    .line 334
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    .line 335
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "capString":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, "capStrings":[Ljava/lang/String;
    array-length v9, v7

    if-ne v9, v8, :cond_b

    .line 340
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 341
    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    goto :goto_1

    .line 343
    :cond_b
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 344
    aget-object v4, v7, v8

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 346
    .end local v6    # "capString":Ljava/lang/String;
    .end local v7    # "capStrings":[Ljava/lang/String;
    :goto_1
    goto/16 :goto_6

    .line 331
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    :cond_d
    const-string v6, "--rlimit="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x3

    if-eqz v6, :cond_11

    .line 348
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "limitStrings":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v10, :cond_10

    .line 354
    array-length v6, v4

    new-array v6, v6, [I

    .line 356
    .local v6, "rlimitTuple":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v9, v4

    if-ge v7, v9, :cond_e

    .line 357
    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v7

    .line 356
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 360
    .end local v7    # "i":I
    :cond_e
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-nez v7, :cond_f

    .line 361
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    .line 364
    :cond_f
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v4    # "limitStrings":[Ljava/lang/String;
    .end local v6    # "rlimitTuple":[I
    goto/16 :goto_6

    .line 351
    .restart local v4    # "limitStrings":[Ljava/lang/String;
    :cond_10
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 365
    .end local v4    # "limitStrings":[Ljava/lang/String;
    :cond_11
    const-string v6, "--setgroups="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 366
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    if-nez v4, :cond_13

    .line 371
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    .line 375
    array-length v6, v4

    sub-int/2addr v6, v8

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_12

    .line 376
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v6

    .line 375
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 378
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_12
    goto/16 :goto_6

    .line 367
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 378
    :cond_14
    const-string v6, "--invoke-with"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 379
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v4, :cond_15

    .line 384
    add-int/lit8 v1, v1, 0x1

    .line 385
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto/16 :goto_6

    .line 386
    :catch_0
    move-exception v4

    .line 387
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--invoke-with requires argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_15
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 390
    :cond_16
    const-string v6, "--nice-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 391
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-nez v4, :cond_17

    .line 395
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    goto/16 :goto_6

    .line 392
    :cond_17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    :cond_18
    const-string v6, "--mount-external-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 397
    iput v8, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 398
    :cond_19
    const-string v6, "--mount-external-installer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 399
    iput v9, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 400
    :cond_1a
    const-string v6, "--mount-external-pass-through"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 401
    iput v10, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 402
    :cond_1b
    const-string v6, "--mount-external-android-writable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 403
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 404
    :cond_1c
    const-string v6, "--query-abi-list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 405
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    goto/16 :goto_6

    .line 406
    :cond_1d
    const-string v6, "--get-pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 407
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    goto/16 :goto_6

    .line 408
    :cond_1e
    const-string v6, "--boot-completed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 409
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    goto/16 :goto_6

    .line 410
    :cond_1f
    const-string v6, "--instruction-set="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 411
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    goto/16 :goto_6

    .line 412
    :cond_20
    const-string v6, "--app-data-dir="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 413
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    goto/16 :goto_6

    .line 414
    :cond_21
    const-string v6, "--preload-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 415
    add-int/lit8 v1, v1, 0x1

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    goto/16 :goto_6

    .line 417
    :cond_22
    const-string v6, "--preload-package"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 418
    add-int/lit8 v1, v1, 0x4

    .line 419
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibs:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibFileName:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageCacheKey:Ljava/lang/String;

    goto/16 :goto_6

    .line 423
    :cond_23
    const-string v6, "--preload-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 424
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    .line 425
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 426
    :cond_24
    const-string v6, "--start-child-zygote"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 427
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    goto/16 :goto_6

    .line 428
    :cond_25
    const-string v6, "--set-api-denylist-exemptions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 431
    sub-int v4, p2, v1

    sub-int/2addr v4, v8

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    .line 432
    add-int/lit8 v1, v1, 0x1

    .line 433
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v1, p2, :cond_26

    .line 434
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 433
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 436
    .end local v4    # "i":I
    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 437
    :cond_27
    const-string v6, "--hidden-api-log-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 438
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "rateStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    nop

    .line 445
    const/4 v3, 0x0

    .line 446
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_6

    .line 441
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 442
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid log sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 446
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_28
    const-string v6, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 447
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    .restart local v4    # "rateStr":Ljava/lang/String;
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 453
    nop

    .line 454
    const/4 v3, 0x0

    .line 455
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_6

    .line 450
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 451
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid statslog sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 455
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_29
    const-string v6, "--package-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 456
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_2a

    .line 459
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    goto/16 :goto_6

    .line 457
    :cond_2a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 460
    :cond_2b
    const-string v6, "--usap-pool-enabled="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 461
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 462
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    .line 463
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 464
    :cond_2c
    const-string v6, "--is-top-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 465
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    goto :goto_6

    .line 466
    :cond_2d
    const-string v6, "--disabled-compat-changes="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 467
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    if-nez v4, :cond_2f

    .line 470
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    .line 472
    .local v6, "length":I
    new-array v7, v6, [J

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 473
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v6, :cond_2e

    .line 474
    iget-object v9, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    aget-object v10, v4, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v9, v7

    .line 473
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 476
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "length":I
    .end local v7    # "i":I
    :cond_2e
    goto :goto_6

    .line 468
    :cond_2f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_30
    const-string v6, "--pkg-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 477
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    goto :goto_6

    .line 478
    :cond_31
    const-string v6, "--allowlisted-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 479
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    goto :goto_6

    .line 480
    :cond_32
    const-string v6, "--bind-mount-storage-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 481
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    goto :goto_6

    .line 482
    :cond_33
    const-string v6, "--bind-mount-data-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 483
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    .line 291
    .end local v5    # "arg":Ljava/lang/String;
    :goto_6
    add-int/2addr v1, v8

    goto/16 :goto_0

    .line 485
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_34
    move-object v0, v5

    .line 492
    .end local v5    # "arg":Ljava/lang/String;
    :cond_35
    :goto_7
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v5, :cond_37

    .line 493
    if-gt p2, v1, :cond_36

    goto/16 :goto_b

    .line 494
    :cond_36
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --boot-completed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    :cond_37
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v5, :cond_40

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v5, :cond_38

    goto :goto_a

    .line 500
    :cond_38
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-eqz v5, :cond_3a

    .line 501
    if-gt p2, v1, :cond_39

    goto :goto_b

    .line 502
    :cond_39
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-package."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 505
    :cond_3a
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v5, :cond_3c

    .line 506
    if-gt p2, v1, :cond_3b

    goto :goto_b

    .line 507
    :cond_3b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-app."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 510
    :cond_3c
    if-eqz v3, :cond_41

    .line 511
    if-nez v2, :cond_3e

    .line 512
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected argument : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 513
    if-nez v0, :cond_3d

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_3d
    move-object v6, v0

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 516
    :cond_3e
    sub-int v5, p2, v1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 517
    const/4 v6, 0x0

    .line 518
    .local v6, "i":I
    if-eqz v0, :cond_3f

    .line 519
    aput-object v0, v5, v4

    .line 520
    add-int/lit8 v6, v6, 0x1

    .line 522
    :cond_3f
    :goto_9
    sub-int v5, p2, v1

    if-ge v6, v5, :cond_41

    .line 523
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 522
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 497
    .end local v6    # "i":I
    :cond_40
    :goto_a
    if-gt p2, v1, :cond_46

    .line 527
    :cond_41
    :goto_b
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-eqz v5, :cond_45

    .line 528
    const/4 v5, 0x0

    .line 529
    .local v5, "seenChildSocketArg":Z
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length v7, v6

    :goto_c
    if-ge v4, v7, :cond_43

    aget-object v8, v6, v4

    .line 530
    .local v8, "arg":Ljava/lang/String;
    const-string v9, "--zygote-socket="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 531
    const/4 v5, 0x1

    .line 532
    goto :goto_d

    .line 529
    .end local v8    # "arg":Ljava/lang/String;
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 535
    :cond_43
    :goto_d
    if-eqz v5, :cond_44

    goto :goto_e

    .line 536
    :cond_44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    .end local v5    # "seenChildSocketArg":Z
    :cond_45
    :goto_e
    return-void

    .line 498
    :cond_46
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --query-abi-list."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
