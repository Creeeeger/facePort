.class public final Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
.super Ljava/lang/Object;
.source "SemSdCardEncryptionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/security/SemSdCardEncryptionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/security/SemSdCardEncryptionPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mCurrentUUID:Ljava/lang/String;

.field private blacklist mEnc:I

.field public blacklist mEncryptState:I

.field public blacklist mIsPolicy:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "isPolicy"    # I
    .param p2, "status"    # I
    .param p3, "uuid"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 60
    iput p2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 61
    iput-object p3, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 187
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0, p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static blacklist unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4
    .param p0, "isPolicy"    # I
    .param p1, "str"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "uuid":Ljava/lang/String;
    const/4 v1, 0x3

    .line 120
    .local v1, "encrypt_state":I
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "values":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    move-object v0, v3

    .line 123
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 125
    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    .line 127
    :goto_0
    new-instance v3, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method public static blacklist writeToParcel(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "c"    # Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 178
    if-eqz p0, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 4

    .line 66
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget v1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget-object v3, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->clone()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v0

    return-object v0
.end method

.method public blacklist compareTo(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)I
    .locals 1
    .param p1, "that"    # Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 161
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->compareTo(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 136
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 137
    .local v1, "other":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    iget v2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v3, v1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget v3, v1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 140
    .end local v1    # "other":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 141
    :cond_1
    nop

    .line 142
    :goto_0
    return v0
.end method

.method public blacklist getCurrentUUID()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEncryptState()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    return v0
.end method

.method public blacklist getEncryptionState()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEnc:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public blacklist isAdminPolicyEnabled()Z
    .locals 2

    .line 89
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist setIsPolicy(I)V
    .locals 0
    .param p1, "policy"    # I

    .line 112
    iput p1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 113
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 171
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return-void
.end method
