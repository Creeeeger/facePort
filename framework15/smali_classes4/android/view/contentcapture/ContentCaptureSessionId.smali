.class public final Landroid/view/contentcapture/ContentCaptureSessionId;
.super Ljava/lang/Object;
.source "ContentCaptureSessionId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureSessionId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureSessionId$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    iget v4, v2, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    add-int/2addr v2, v3

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureSessionId;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
