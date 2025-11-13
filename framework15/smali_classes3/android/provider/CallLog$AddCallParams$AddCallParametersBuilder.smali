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


# static fields
.field public static final blacklist MAX_NUMBER_OF_CHARACTERS:I = 0x100


# instance fields
.field private blacklist mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mAddForAllUsers:Z

.field private blacklist mAssertedDisplayName:Ljava/lang/String;

.field private blacklist mCallBlockReason:I

.field private blacklist mCallScreeningAppName:Ljava/lang/CharSequence;

.field private blacklist mCallScreeningComponentName:Ljava/lang/String;

.field private blacklist mCallType:I

.field private blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field private blacklist mDataUsage:Ljava/lang/Long;

.field private blacklist mDuration:I

.field private blacklist mFeatures:I

.field private blacklist mIsBusinessCall:Z

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    iput v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    iput-wide v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/provider/CallLog$AddCallParams;
    .locals 68

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->businessCallComposer()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/provider/CallLog$AddCallParams;

    move-object v2, v1

    iget-object v3, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    iget-object v4, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    iget-object v5, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    iget-object v6, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    iget v7, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    iget v8, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    iget v9, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    iget-object v10, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-wide v11, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    iget v13, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    iget-object v14, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v35, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    move/from16 v16, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    move/from16 v18, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    move/from16 v19, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v36, v2

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    move-wide/from16 v22, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    move/from16 v24, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    move-wide/from16 v26, v1

    iget-wide v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    move-wide/from16 v28, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    move-object/from16 v30, v1

    iget v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    move/from16 v31, v1

    iget-boolean v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsBusinessCall:Z

    move/from16 v32, v1

    iget-object v1, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAssertedDisplayName:Ljava/lang/String;

    move-object/from16 v33, v1

    const/16 v34, 0x0

    move-object/from16 v2, v36

    invoke-direct/range {v2 .. v34}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;Landroid/provider/CallLog$AddCallParams-IA;)V

    return-object v35

    :cond_0
    new-instance v1, Landroid/provider/CallLog$AddCallParams;

    move-object/from16 v37, v1

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    move-object/from16 v38, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    move-object/from16 v39, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    move-object/from16 v40, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    move-object/from16 v41, v2

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    move/from16 v42, v2

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    move/from16 v43, v2

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    move/from16 v44, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v45, v2

    iget-wide v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    move-wide/from16 v46, v2

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    move/from16 v48, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v49

    iget-boolean v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    move/from16 v51, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move-object/from16 v52, v2

    iget-boolean v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    move/from16 v53, v2

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    move/from16 v54, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 v55, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    move-object/from16 v56, v2

    iget-wide v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    move-wide/from16 v57, v2

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    move/from16 v59, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    move-object/from16 v60, v2

    iget-wide v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    move-wide/from16 v61, v2

    iget-wide v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    move-wide/from16 v63, v2

    iget-object v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    move-object/from16 v65, v2

    iget v2, v0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    move/from16 v66, v2

    const/16 v67, 0x0

    invoke-direct/range {v37 .. v67}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog$AddCallParams-IA;)V

    return-object v1
.end method

.method public blacklist setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public blacklist setAddForAllUsers(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAddForAllUsers:Z

    return-object p0
.end method

.method public blacklist setAssertedDisplayName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "assertedDisplayName exceeds the character limit of 256."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mAssertedDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCallBlockReason(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallBlockReason:I

    return-object p0
.end method

.method public blacklist setCallScreeningAppName(Ljava/lang/CharSequence;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningAppName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setCallScreeningComponentName(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallScreeningComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCallType(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallType:I

    return-object p0
.end method

.method public blacklist setCallerInfo(Landroid/telecom/CallerInfo;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method public blacklist setDataUsage(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDataUsage:Ljava/lang/Long;

    return-object p0
.end method

.method public blacklist setDuration(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mDuration:I

    return-object p0
.end method

.method public blacklist setFeatures(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mFeatures:I

    return-object p0
.end method

.method public blacklist setIsBusinessCall(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsBusinessCall:Z

    return-object p0
.end method

.method public blacklist setIsPhoneAccountMigrationPending(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsPhoneAccountMigrationPending:I

    return-object p0
.end method

.method public blacklist setIsRead(Z)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mIsRead:Z

    return-object p0
.end method

.method public blacklist setLatitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLatitude:D

    return-object p0
.end method

.method public blacklist setLongitude(D)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mLongitude:D

    return-object p0
.end method

.method public blacklist setMissedReason(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mMissedReason:J

    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPictureUri(Landroid/net/Uri;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPictureUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist setPostDialDigits(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPostDialDigits:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPresentation(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPresentation:I

    return-object p0
.end method

.method public blacklist setPriority(I)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mPriority:I

    return-object p0
.end method

.method public blacklist setStart(J)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mStart:J

    return-object p0
.end method

.method public blacklist setSubject(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setUserToBeInsertedTo(Landroid/os/UserHandle;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    return-object p0
.end method

.method public blacklist setViaNumber(Ljava/lang/String;)Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;->mViaNumber:Ljava/lang/String;

    return-object p0
.end method
