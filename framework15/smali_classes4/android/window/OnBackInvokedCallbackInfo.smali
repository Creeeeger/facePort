.class public final Landroid/window/OnBackInvokedCallbackInfo;
.super Ljava/lang/Object;
.source "OnBackInvokedCallbackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/OnBackInvokedCallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mIsAnimationCallback:Z

.field private blacklist mPriority:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/OnBackInvokedCallbackInfo$1;

    invoke-direct {v0}, Landroid/window/OnBackInvokedCallbackInfo$1;-><init>()V

    sput-object v0, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/OnBackInvokedCallbackInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IOnBackInvokedCallback;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    iput p2, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    iput-boolean p3, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallback()Landroid/window/IOnBackInvokedCallback;
    .locals 1

    iget-object v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public blacklist getPriority()I
    .locals 1

    iget v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    return v0
.end method

.method public blacklist isAnimationCallback()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    return v0
.end method

.method public blacklist isSystemCallback()Z
    .locals 2

    iget v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnBackInvokedCallbackInfo{mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAnimationCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/OnBackInvokedCallbackInfo;->mIsAnimationCallback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
