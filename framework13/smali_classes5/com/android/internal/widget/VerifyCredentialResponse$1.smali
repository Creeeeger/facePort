.class Lcom/android/internal/widget/VerifyCredentialResponse$1;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/VerifyCredentialResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 70
    .local v8, "responseCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 71
    .local v9, "timeout":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 72
    .local v10, "gatekeeperHAT":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 74
    .local v11, "gatekeeperPasswordHandle":J
    if-nez v8, :cond_1

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 76
    .local v13, "size":I
    if-lez v13, :cond_0

    .line 77
    new-array v14, v13, [B

    .line 78
    .local v14, "secret":[B
    move-object/from16 v15, p1

    invoke-virtual {v15, v14}, Landroid/os/Parcel;->readByteArray([B)V

    .line 79
    new-instance v16, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-wide v4, v11

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ[BLcom/android/internal/widget/VerifyCredentialResponse-IA;)V

    return-object v16

    .line 76
    .end local v14    # "secret":[B
    :cond_0
    move-object/from16 v15, p1

    goto :goto_0

    .line 74
    .end local v13    # "size":I
    :cond_1
    move-object/from16 v15, p1

    .line 85
    :goto_0
    new-instance v7, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-wide v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V

    return-object v7
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .param p1, "size"    # I

    .line 91
    new-array v0, p1, [Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method
