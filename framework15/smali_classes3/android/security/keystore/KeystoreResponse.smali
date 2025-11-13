.class public Landroid/security/keystore/KeystoreResponse;
.super Ljava/lang/Object;
.source "KeystoreResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/KeystoreResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist error_code_:I

.field public final blacklist error_msg_:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/keystore/KeystoreResponse$1;

    invoke-direct {v0}, Landroid/security/keystore/KeystoreResponse$1;-><init>()V

    sput-object v0, Landroid/security/keystore/KeystoreResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keystore/KeystoreResponse;->error_code_:I

    iput-object p2, p0, Landroid/security/keystore/KeystoreResponse;->error_msg_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeystoreResponse;->error_code_:I

    return v0
.end method

.method public final blacklist getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeystoreResponse;->error_msg_:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeystoreResponse;->error_code_:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/KeystoreResponse;->error_msg_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
