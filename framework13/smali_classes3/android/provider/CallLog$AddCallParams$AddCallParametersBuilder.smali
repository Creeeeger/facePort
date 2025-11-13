.class public final Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog$AddCallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddCallParametersBuilder"
.end annotation


# instance fields
.field private blacklist mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mAddForAllUsers:Z

.field private blacklist mCallBlockReason:I

.field private blacklist mCallScreeningAppName:Ljava/lang/CharSequence;

.field private blacklist mCallScreeningComponentName:Ljava/lang/String;

.field private blacklist mCallType:I

.field private blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field private blacklist mDataUsage:Ljava/lang/Long;

.field private blacklist mDuration:I

.field private blacklist mFeatures:I

.field private blacklist mIsPhoneAccountMigrationPending:I

.field private blacklist mIsRead:Z

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private blacklist mMissedReason:J

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mPictureUri:Landroid/net/Uri;

.field private blacklist mPostDialDigits:Ljava/lang/String;

.field private blacklist mPresentation:I

.field private blacklist mPriority:I

.field private blacklist mStart:J

.field private blacklist mSubject:Ljava/lang/String;

.field private blacklist mUserToBeInsertedTo:Landroid/os/UserHandle;

.field private blacklist mViaNumber:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x3

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    .line 412
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    .line 417
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    .line 421
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    .line 424
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    .line 425
    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    .line 427
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    .line 428
    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/provider/CallLog$AddCallParams;
    .locals 35

    .line 652
    move-object/from16 v0, p0

    new-instance v32, Landroid/provider/CallLog$AddCallParams;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v3, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    iget-object v4, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    iget-object v5, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    iget v6, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    iget v7, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    iget v8, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    iget-object v9, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-wide v10, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    iget v12, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    iget-object v13, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    .line 654
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-boolean v15, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    move-object/from16 v33, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    move/from16 v17, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    move/from16 v18, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v34, v2

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    move-wide/from16 v21, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    move/from16 v23, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    move-wide/from16 v25, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    move-wide/from16 v27, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    move-object/from16 v29, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    move/from16 v30, v1

    const/16 v31, 0x0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog$AddCallParams-IA;)V

    .line 652
    return-object v32
.end method

.method public blacklist setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 499
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 500
    return-object p0
.end method

.method public blacklist setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "addForAllUsers"    # Z

    .line 536
    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    .line 537
    return-object p0
.end method

.method public blacklist setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "callBlockReason"    # I

    .line 566
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    .line 567
    return-object p0
.end method

.method public blacklist setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "callScreeningAppName"    # Ljava/lang/CharSequence;

    .line 575
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    .line 576
    return-object p0
.end method

.method public blacklist setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "callScreeningComponentName"    # Ljava/lang/String;

    .line 585
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    .line 586
    return-object p0
.end method

.method public blacklist setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "callType"    # I

    .line 482
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    .line 483
    return-object p0
.end method

.method public blacklist setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "callerInfo"    # Landroid/telecom/CallerInfo;

    .line 437
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 438
    return-object p0
.end method

.method public blacklist setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 1
    .param p1, "dataUsage"    # J

    .line 525
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    .line 526
    return-object p0
.end method

.method public blacklist setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "duration"    # I

    .line 515
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    .line 516
    return-object p0
.end method

.method public blacklist setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "features"    # I

    .line 490
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    .line 491
    return-object p0
.end method

.method public blacklist setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "isPhoneAccountMigrationPending"    # I

    .line 644
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    .line 645
    return-object p0
.end method

.method public blacklist setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "isRead"    # Z

    .line 558
    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    .line 559
    return-object p0
.end method

.method public blacklist setLatitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "latitude"    # D

    .line 618
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    .line 619
    return-object p0
.end method

.method public blacklist setLongitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "longitude"    # D

    .line 626
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    .line 627
    return-object p0
.end method

.method public blacklist setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "missedReason"    # J

    .line 593
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    .line 594
    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 445
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    .line 446
    return-object p0
.end method

.method public blacklist setPictureUri(Landroid/net/Uri;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "pictureUri"    # Landroid/net/Uri;

    .line 635
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    .line 636
    return-object p0
.end method

.method public blacklist setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "postDialDigits"    # Ljava/lang/String;

    .line 455
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    .line 456
    return-object p0
.end method

.method public blacklist setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "presentation"    # I

    .line 474
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    .line 475
    return-object p0
.end method

.method public blacklist setPriority(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "priority"    # I

    .line 602
    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    .line 603
    return-object p0
.end method

.method public blacklist setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "start"    # J

    .line 507
    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    .line 508
    return-object p0
.end method

.method public blacklist setSubject(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .line 610
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    .line 611
    return-object p0
.end method

.method public blacklist setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "userToBeInsertedTo"    # Landroid/os/UserHandle;

    .line 549
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    .line 550
    return-object p0
.end method

.method public blacklist setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0
    .param p1, "viaNumber"    # Ljava/lang/String;

    .line 464
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    .line 465
    return-object p0
.end method
