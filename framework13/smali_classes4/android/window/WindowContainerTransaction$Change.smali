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

.field public static final blacklist CHANGE_FOCUSABLE:I = 0x1

.field public static final blacklist CHANGE_FORCE_NO_PIP:I = 0x40

.field public static final blacklist CHANGE_HIDDEN:I = 0x8

.field public static final blacklist CHANGE_IGNORE_ORIENTATION_REQUEST:I = 0x20

.field public static final blacklist CHANGE_PIP_CALLBACK:I = 0x4

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

.field private blacklist mChangeMask:I

.field private blacklist mChangeTransitMode:I

.field private blacklist mConfigSetMask:I

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mFocusable:Z

.field private blacklist mHidden:Z

.field private blacklist mIgnoreOrientationRequest:Z

.field private blacklist mPinnedBounds:Landroid/graphics/Rect;

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

.method static bridge synthetic blacklist -$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V
    .locals 0

    iput p1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

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

    .line 1302
    new-instance v0, Landroid/window/WindowContainerTransaction$Change$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$Change$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1042
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1043
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1045
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1046
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1047
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1049
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1050
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1051
    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 1053
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1054
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1057
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    .line 1061
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 1041
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1042
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1043
    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1045
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1046
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1047
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1049
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1050
    iput-object v2, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1051
    iput-object v2, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 1053
    const/4 v2, -0x1

    iput v2, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1054
    iput v2, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1057
    iput v1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    .line 1064
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1065
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1066
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1068
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1069
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1070
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1071
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1073
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1075
    :cond_0
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1076
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1077
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1079
    :cond_1
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 1080
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 1081
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 1084
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    .line 1091
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityWindowingMode()I
    .locals 1

    .line 1141
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    return v0
.end method

.method public blacklist getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1200
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 1196
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public blacklist getChangeMask()I
    .locals 1

    .line 1174
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    return v0
.end method

.method public blacklist getChangeTransitMode()I
    .locals 1

    .line 1210
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    return v0
.end method

.method public blacklist getConfigSetMask()I
    .locals 1

    .line 1179
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 1145
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getEnterPipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1192
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFocusable()Z
    .locals 2

    .line 1150
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1153
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    return v0

    .line 1151
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Focusable not set. check CHANGE_FOCUSABLE first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHidden()Z
    .locals 2

    .line 1158
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 1161
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    return v0

    .line 1159
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Hidden not set. check CHANGE_HIDDEN first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIgnoreOrientationRequest()Z
    .locals 2

    .line 1166
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 1170
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    return v0

    .line 1167
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IgnoreOrientationRequest not set. Check CHANGE_IGNORE_ORIENTATION_REQUEST first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getWindowSetMask()I
    .locals 1

    .line 1184
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    .line 1137
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    return v0
.end method

.method public blacklist hasChangeTransitMode()Z
    .locals 1

    .line 1205
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist merge(Landroid/window/WindowContainerTransaction$Change;Z)V
    .locals 4
    .param p1, "other"    # Landroid/window/WindowContainerTransaction$Change;
    .param p2, "transfer"    # Z

    .line 1099
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v3, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 1100
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    .line 1101
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    iget v1, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    .line 1102
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1103
    iget-boolean v1, p1, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    .line 1105
    :cond_0
    if-eqz p2, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1106
    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1107
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1109
    :cond_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1110
    if-eqz p2, :cond_2

    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    .line 1112
    :cond_3
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    .line 1113
    iget-boolean v1, p1, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    .line 1115
    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    .line 1116
    iget-boolean v1, p1, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    iput-boolean v1, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    .line 1118
    :cond_5
    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    .line 1119
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    if-ltz v0, :cond_6

    .line 1120
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    .line 1122
    :cond_6
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    if-ltz v0, :cond_7

    .line 1123
    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    .line 1125
    :cond_7
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    .line 1126
    if-eqz p2, :cond_8

    goto :goto_1

    .line 1127
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    .line 1130
    :cond_9
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1131
    iget v0, p1, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    .line 1134
    :cond_a
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    .line 1216
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    const/high16 v1, 0x20000000

    and-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1220
    .local v2, "changesBounds":Z
    :goto_0
    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    .line 1224
    .local v1, "changesAppBounds":Z
    :goto_1
    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    .line 1225
    .local v5, "changesSs":Z
    :goto_2
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v3

    .line 1228
    .local v0, "changesSss":Z
    :goto_3
    iget v6, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v3, v4

    .line 1231
    .local v3, "changesStagePosition":Z
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1232
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1233
    const-string v7, ","

    if-eqz v2, :cond_5

    .line 1234
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

    .line 1236
    :cond_5
    if-eqz v1, :cond_6

    .line 1237
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

    .line 1239
    :cond_6
    if-eqz v0, :cond_7

    .line 1240
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

    .line 1242
    :cond_7
    if-eqz v5, :cond_8

    .line 1243
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

    .line 1246
    :cond_8
    iget v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_9

    .line 1247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focusable:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_9
    iget-object v4, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v4, :cond_a

    .line 1250
    const-string v4, "hasBoundsTransaction,"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    :cond_a
    iget v4, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_b

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignoreOrientationRequest:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    :cond_b
    if-eqz v3, :cond_c

    .line 1257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stagePosition"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1258
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getStagePositionToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1257
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    :cond_c
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeTransit:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :cond_d
    const-string/jumbo v4, "}"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1270
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1271
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mFocusable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1272
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1273
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$Change;->mIgnoreOrientationRequest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1274
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1275
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mConfigSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowSetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mPinnedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1281
    :cond_0
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_1

    .line 1282
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1284
    :cond_1
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$Change;->mBoundsChangeSurfaceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 1285
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1288
    :cond_2
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mActivityWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    iget v0, p0, Landroid/window/WindowContainerTransaction$Change;->mChangeTransitMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    return-void
.end method
