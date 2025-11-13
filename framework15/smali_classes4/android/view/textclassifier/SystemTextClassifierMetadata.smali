.class public final Landroid/view/textclassifier/SystemTextClassifierMetadata;
.super Ljava/lang/Object;
.source "SystemTextClassifierMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/SystemTextClassifierMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingPackageName:Ljava/lang/String;

.field private final blacklist mUseDefaultTextClassifier:Z

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/SystemTextClassifierMetadata$1;

    invoke-direct {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    iput-boolean p3, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    new-instance v3, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-direct {v3, v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallingPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SystemTextClassifierMetadata {callingPackageName=%s, userId=%d, useDefaultTextClassifier=%b}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist useDefaultTextClassifier()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;->mUseDefaultTextClassifier:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
