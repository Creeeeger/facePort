.class public Landroid/window/WindowContainerTransaction$Change;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation


# static fields
.field public static final blacklist CHANGE_BOUNDS_TRANSACTION:I = 0x2

.field public static final blacklist CHANGE_BOUNDS_TRANSACTION_RECT:I = 0x10

.field public static final blacklist CHANGE_DRAG_RESIZING:I = 0x100

.field public static final blacklist CHANGE_FOCUSABLE:I = 0x1

.field public static final blacklist CHANGE_FORCE_NO_PIP:I = 0x40

.field public static final blacklist CHANGE_FORCE_TRANSLUCENT:I = 0x80

.field public static final blacklist CHANGE_HIDDEN:I = 0x8

.field public static final blacklist CHANGE_IGNORE_ORIENTATION_REQUEST:I = 0x20

.field public static final blacklist CHANGE_PIP_CALLBACK:I = 0x4

.field public static final blacklist CHANGE_RELATIVE_BOUNDS:I = 0x200

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityWindowingMode:I

.field private blacklist mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

.field private blacklist mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mChangeFreeformStashMode:I

.field private blacklist mChangeFreeformStashScale:F

.field private blacklist mChangeMask:I

.field private blacklist mChangeTransitFlags:I

.field private blacklist mChangeTransitMode:I

.field private blacklist mChangeTransitReason:Ljava/lang/String;

.field private blacklist mChangeTransitStartBounds:Landroid/graphics/Rect;

.field private blacklist mConfigAtTransitionEnd:Z

.field private blacklist mConfigSetMask:I

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mDragResizing:Z

.field private blacklist mFocusable:Z

.field private blacklist mForceTaskInfoChangeRequested:Z

.field private blacklist mForceTranslucent:Z

.field private blacklist mHidden:Z

.field private blacklist mIgnoreOrientationRequest:Z

.field private blacklist mPinnedBounds:Landroid/graphics/Rect;

.field private blacklist mRelativeBounds:Landroid/graphics/Rect;

.field private blacklist mTaskViewTaskOrganizerTaskId:I

.field private blacklist mWindowSetMask:I

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangeTransitFlags(Landroid/window/WindowContainerTransaction$Change;)I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I
    .locals 0

    iget p0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeFreeformStashMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeFreeformStashScale(Landroid/window/WindowContainerTransaction$Change;F)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashScale:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeTransitFlags(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeTransitReason(Landroid/window/WindowContainerTransaction$Change;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitReason:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigAtTransitionEnd(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDragResizing(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForceTaskInfoChangeRequested(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTaskInfoChangeRequested:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForceTranslucent(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTaskViewTaskOrganizerTaskId(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/WindowContainerTransaction$Change$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$Change$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    :cond_0
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    :cond_2
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitReason:Ljava/lang/String;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTaskInfoChangeRequested:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityWindowingMode()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return v0
.end method

.method public blacklist getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public blacklist getChangeFreeformStashMode()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    return v0
.end method

.method public blacklist getChangeFreeformStashScale()F
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashScale:F

    return v0
.end method

.method public blacklist getChangeMask()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return v0
.end method

.method public blacklist getChangeTransitFlags()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    return v0
.end method

.method public blacklist getChangeTransitMode()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    return v0
.end method

.method public blacklist getChangeTransitReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChangeTransitStartBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getConfigAtTransitionEnd()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    return v0
.end method

.method public blacklist getConfigSetMask()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getDragResizing()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Drag resizing not set. Check CHANGE_DRAG_RESIZING first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getEnterPipBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFocusable()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Focusable not set. check CHANGE_FOCUSABLE first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getForceTranslucent()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Force translucent not set. Check CHANGE_FORCE_TRANSLUCENT first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHidden()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Hidden not set. check CHANGE_HIDDEN first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIgnoreOrientationRequest()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IgnoreOrientationRequest not set. Check CHANGE_IGNORE_ORIENTATION_REQUEST first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRelativeBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getTaskViewTaskOrganizerTaskId()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    return v0
.end method

.method public blacklist getWindowSetMask()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return v0
.end method

.method public blacklist hasChangeFreeformStashMode()Z
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasChangeFreeformStashScale()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasChangeTransitMode()Z
    .locals 1

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isForceTaskInfoChangeRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTaskInfoChangeRequested:Z

    return v0
.end method

.method public blacklist isOrganizedTaskViewTask()Z
    .locals 2

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 4

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v3, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    :cond_3
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    :cond_4
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    :cond_5
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    :cond_6
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    :cond_7
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    if-ltz v0, :cond_8

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    :cond_8
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    if-ltz v0, :cond_9

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    :cond_9
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_a

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    if-eqz p2, :cond_c

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    goto :goto_2

    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_2
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    :cond_d
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    :goto_3
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitReason:Ljava/lang/String;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitReason:Ljava/lang/String;

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    :cond_10
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_12

    if-eqz p2, :cond_11

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    goto :goto_5

    :cond_11
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_5
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    :cond_12
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->getChangeFreeformStashMode()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    :cond_13
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashScale()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->getChangeFreeformStashScale()F

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashScale:F

    :cond_14
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->isForceTaskInfoChangeRequested()Z

    move-result v0

    if-eqz v0, :cond_15

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTaskInfoChangeRequested:Z

    :cond_15
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->isOrganizedTaskViewTask()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    :cond_16
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget v5, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iget v6, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ","

    if-eqz v0, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bounds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v1, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appbounds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v5, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ssw:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v4, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sw/h:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focusable:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forceTranslucent:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hidden:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dragResizing:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v3, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v3, :cond_d

    const-string v3, "hasBoundsTransaction,"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignoreOrientationRequest:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_f

    const-string/jumbo v3, "relativeBounds:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-boolean v3, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    if-eqz v3, :cond_10

    const-string v3, "configAtTransitionEnd"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-eqz v2, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stagePosition"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getStagePositionToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeTransit:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeStartBounds:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget v3, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    if-eqz v3, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeTransitFlags:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashMode()Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeFreeformStashMode:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashScale()Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeFreeformStashScale:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashScale:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string/jumbo v3, "}"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mDragResizing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_3
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigAtTransitionEnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_4
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeFreeformStashScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mForceTaskInfoChangeRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mTaskViewTaskOrganizerTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
