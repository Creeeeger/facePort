.class public final Landroid/app/admin/UnsafeStateException;
.super Ljava/lang/IllegalStateException;
.source "UnsafeStateException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/UnsafeStateException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOperation:I

.field private final blacklist mReason:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/UnsafeStateException$1;

    invoke-direct {v0}, Landroid/app/admin/UnsafeStateException$1;-><init>()V

    sput-object v0, Landroid/app/admin/UnsafeStateException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->isValidOperationSafetyReason(I)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid reason %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/app/admin/UnsafeStateException;->mOperation:I

    iput p2, p0, Landroid/app/admin/UnsafeStateException;->mReason:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/app/admin/UnsafeStateException;->mReason:I

    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOperation()I
    .locals 1

    iget v0, p0, Landroid/app/admin/UnsafeStateException;->mOperation:I

    return v0
.end method

.method public whitelist getReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/app/admin/UnsafeStateException;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/admin/UnsafeStateException;->mOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/UnsafeStateException;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
