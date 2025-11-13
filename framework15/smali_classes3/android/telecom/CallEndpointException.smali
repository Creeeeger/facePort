.class public final Landroid/telecom/CallEndpointException;
.super Ljava/lang/RuntimeException;
.source "CallEndpointException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallEndpointException$CallEndpointErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist CHANGE_ERROR:Ljava/lang/String; = "ChangeErrorKey"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallEndpointException;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_ANOTHER_REQUEST:I = 0x3

.field public static final whitelist ERROR_ENDPOINT_DOES_NOT_EXIST:I = 0x1

.field public static final whitelist ERROR_REQUEST_TIME_OUT:I = 0x2

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x4


# instance fields
.field private blacklist mCode:I

.field private final blacklist mMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/CallEndpointException$1;

    invoke-direct {v0}, Landroid/telecom/CallEndpointException$1;-><init>()V

    sput-object v0, Landroid/telecom/CallEndpointException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/telecom/CallEndpointException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Landroid/telecom/CallEndpointException;->mCode:I

    iput p2, p0, Landroid/telecom/CallEndpointException;->mCode:I

    iput-object p1, p0, Landroid/telecom/CallEndpointException;->mMessage:Ljava/lang/String;

    return-void
.end method

.method private static blacklist getMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCode()I
    .locals 1

    iget v0, p0, Landroid/telecom/CallEndpointException;->mCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallEndpointException;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/telecom/CallEndpointException;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
