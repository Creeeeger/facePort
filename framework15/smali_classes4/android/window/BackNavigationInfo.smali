.class public final Landroid/window/BackNavigationInfo;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackNavigationInfo$CustomAnimationInfo;,
        Landroid/window/BackNavigationInfo$Builder;,
        Landroid/window/BackNavigationInfo$BackTargetType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackNavigationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_GESTURE_FINISHED:Ljava/lang/String; = "GestureFinished"

.field public static final blacklist KEY_NAVIGATION_FINISHED:Ljava/lang/String; = "NavigationFinished"

.field public static final blacklist TYPE_CALLBACK:I = 0x4

.field public static final blacklist TYPE_CROSS_ACTIVITY:I = 0x2

.field public static final blacklist TYPE_CROSS_TASK:I = 0x3

.field public static final blacklist TYPE_DIALOG_CLOSE:I = 0x0

.field public static final blacklist TYPE_RETURN_TO_HOME:I = 0x1

.field public static final blacklist TYPE_UNDEFINED:I = -0x1


# instance fields
.field private final blacklist mAnimationCallback:Z

.field private final blacklist mAppProgressGenerationAllowed:Z

.field private final blacklist mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

.field private final blacklist mLetterboxColor:I

.field private final blacklist mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private final blacklist mPrepareRemoteAnimation:Z

.field private final blacklist mTouchableRegion:Landroid/graphics/Rect;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/BackNavigationInfo$1;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$1;-><init>()V

    sput-object v0, Landroid/window/BackNavigationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/BackNavigationInfo;->mType:I

    iput-object p2, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    iput-object p3, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    iput-boolean p4, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    iput-boolean p5, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    iput-object p6, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    iput p7, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    iput-boolean p9, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZLandroid/window/BackNavigationInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/window/BackNavigationInfo;-><init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    sget-object v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackNavigationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/BackNavigationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "TYPE_CALLBACK"

    return-object v0

    :pswitch_1
    const-string v0, "TYPE_CROSS_TASK"

    return-object v0

    :pswitch_2
    const-string v0, "TYPE_CROSS_ACTIVITY"

    return-object v0

    :pswitch_3
    const-string v0, "TYPE_RETURN_TO_HOME"

    return-object v0

    :pswitch_4
    const-string v0, "TYPE_DIALOG_CLOSE"

    return-object v0

    :pswitch_5
    const-string v0, "TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCustomAnimationInfo()Landroid/window/BackNavigationInfo$CustomAnimationInfo;
    .locals 1

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    return-object v0
.end method

.method public blacklist getLetterboxColor()I
    .locals 1

    iget v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    return v0
.end method

.method public blacklist getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;
    .locals 1

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public blacklist getTouchableRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    return v0
.end method

.method public blacklist isAnimationCallback()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    return v0
.end method

.method public blacklist isAppProgressGenerationAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    return v0
.end method

.method public blacklist isPrepareRemoteAnimation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    return v0
.end method

.method public blacklist onBackGestureFinished(Z)V
    .locals 2

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GestureFinished"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public blacklist onBackNavigationFinished(Z)V
    .locals 2

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NavigationFinished"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackNavigationInfo{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-static {v1}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mOnBackNavigationDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnBackInvokedCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrepareRemoteAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomizeAnimationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
