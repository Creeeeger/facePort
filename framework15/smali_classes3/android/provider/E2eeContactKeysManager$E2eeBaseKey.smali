.class abstract Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "E2eeBaseKey"
.end annotation


# instance fields
.field protected final blacklist mAccountId:Ljava/lang/String;

.field protected final blacklist mDeviceId:Ljava/lang/String;

.field protected final blacklist mKeyValue:[B

.field protected final blacklist mOwnerPackageName:Ljava/lang/String;

.field protected final blacklist mRemoteVerificationState:I

.field protected final blacklist mTimeUpdated:J


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mDeviceId:Ljava/lang/String;

    iput-object p2, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mAccountId:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mOwnerPackageName:Ljava/lang/String;

    iput-wide p4, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mTimeUpdated:J

    if-nez p6, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p6

    invoke-static {p6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    iput p7, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mRemoteVerificationState:I

    return-void
.end method


# virtual methods
.method public blacklist getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeyValue()[B
    .locals 2

    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getOwnerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemoteVerificationState()I
    .locals 1

    iget v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mRemoteVerificationState:I

    return v0
.end method

.method public blacklist getTimeUpdated()J
    .locals 2

    iget-wide v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mTimeUpdated:J

    return-wide v0
.end method
