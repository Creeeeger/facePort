.class public final Landroid/window/TransitionInfo$Change;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowEnterPip:Z

.field private blacklist mBackgroundColor:I

.field private blacklist mChangeTransitMode:I

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mContainer:Landroid/window/WindowContainerToken;

.field private final blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndFixedRotation:I

.field private final blacklist mEndRelOffset:Landroid/graphics/Point;

.field private blacklist mEndRotation:I

.field private blacklist mFlags:I

.field private final blacklist mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

.field private final blacklist mFreeformContainerPoint:Landroid/graphics/PointF;

.field private blacklist mHasDimAnimationLeash:Z

.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mMinimizeAnimState:I

.field private blacklist mMode:I

.field private blacklist mParent:Landroid/window/WindowContainerToken;

.field private blacklist mRotationAnimation:I

.field private final blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartRotation:I

.field private blacklist mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 719
    new-instance v0, Landroid/window/TransitionInfo$Change$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$Change$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 397
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 398
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 399
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 400
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 401
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 403
    const/4 v4, -0x1

    iput v4, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 404
    iput v4, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 409
    iput v4, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 410
    iput v4, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 414
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 415
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 419
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 420
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerPoint:Landroid/graphics/PointF;

    .line 421
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    .line 430
    sget-object v6, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/WindowContainerToken;

    iput-object v6, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 431
    sget-object v6, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/WindowContainerToken;

    iput-object v6, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 432
    new-instance v6, Landroid/view/SurfaceControl;

    invoke-direct {v6}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v6, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 433
    invoke-virtual {v6, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 436
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 437
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 438
    invoke-virtual {v3, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 439
    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 447
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 449
    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 451
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BASIC_ANIM_WITH_DIM:Z

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mHasDimAnimationLeash:Z

    .line 455
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 456
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->readFromParcel(Landroid/os/Parcel;)V

    .line 457
    invoke-virtual {v5, p1}, Landroid/graphics/PointF;->readFromParcel(Landroid/os/Parcel;)V

    .line 460
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo$Change-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 397
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 398
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 399
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 400
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 403
    const/4 v1, -0x1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 404
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 409
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 410
    iput v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 414
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 415
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 419
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 420
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerPoint:Landroid/graphics/PointF;

    .line 421
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    .line 425
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 426
    iput-object p2, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 427
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowEnterPip()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    return v0
.end method

.method public blacklist getBackgroundColor()I
    .locals 1

    .line 619
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getChangeTransitMode()I
    .locals 1

    .line 625
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 638
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getContainer()Landroid/window/WindowContainerToken;
    .locals 1

    .line 532
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .locals 1

    .line 569
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getEndFixedRotation()I
    .locals 1

    .line 608
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    return v0
.end method

.method public blacklist getEndRelOffset()Landroid/graphics/Point;
    .locals 1

    .line 577
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getEndRotation()I
    .locals 1

    .line 603
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 551
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    return v0
.end method

.method public blacklist getFreeformContainerDefaultPoint()Landroid/graphics/PointF;
    .locals 1

    .line 666
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public blacklist getFreeformContainerPoint()Landroid/graphics/PointF;
    .locals 1

    .line 657
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 583
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getMinimizeAnimState()I
    .locals 1

    .line 648
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    return v0
.end method

.method public blacklist getMode()I
    .locals 1

    .line 546
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    return v0
.end method

.method public blacklist getParent()Landroid/window/WindowContainerToken;
    .locals 1

    .line 541
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getRotationAnimation()I
    .locals 1

    .line 613
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    return v0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .locals 1

    .line 560
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getStartRotation()I
    .locals 1

    .line 598
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    return v0
.end method

.method public blacklist getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 589
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist hasDimAnimationLeash()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mHasDimAnimationLeash:Z

    return v0
.end method

.method public blacklist setAllowEnterPip(Z)V
    .locals 0
    .param p1, "allowEnterPip"    # Z

    .line 502
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 503
    return-void
.end method

.method public blacklist setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .line 526
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 527
    return-void
.end method

.method public blacklist setChangeTransitMode(I)V
    .locals 0
    .param p1, "changeTransitMode"    # I

    .line 629
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 630
    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 633
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 634
    return-void
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 484
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 485
    return-void
.end method

.method public blacklist setEndFixedRotation(I)V
    .locals 0
    .param p1, "endFixedRotation"    # I

    .line 513
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 514
    return-void
.end method

.method public blacklist setEndRelOffset(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 489
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 490
    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 474
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 475
    return-void
.end method

.method public blacklist setFreeformContainerDefaultPoint(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "freeformContainerDefaultPoint"    # Landroid/graphics/PointF;

    .line 661
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 662
    return-void
.end method

.method public blacklist setFreeformContainerPoint(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "freeformContainerPoint"    # Landroid/graphics/PointF;

    .line 652
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 653
    return-void
.end method

.method public blacklist setHasDimAnimationLeash(Z)V
    .locals 0
    .param p1, "hasDimAnimationLeash"    # Z

    .line 675
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mHasDimAnimationLeash:Z

    .line 676
    return-void
.end method

.method public blacklist setMinimizeAnimState(I)V
    .locals 0
    .param p1, "minimizeAnimState"    # I

    .line 644
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 645
    return-void
.end method

.method public blacklist setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 469
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 470
    return-void
.end method

.method public blacklist setParent(Landroid/window/WindowContainerToken;)V
    .locals 0
    .param p1, "parent"    # Landroid/window/WindowContainerToken;

    .line 464
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 465
    return-void
.end method

.method public blacklist setRotation(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 507
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 508
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 509
    return-void
.end method

.method public blacklist setRotationAnimation(I)V
    .locals 0
    .param p1, "anim"    # I

    .line 521
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 522
    return-void
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 479
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 480
    return-void
.end method

.method public blacklist setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 497
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 498
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 741
    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endFixedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 746
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 687
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 688
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 689
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 690
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 694
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 695
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 696
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 697
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    .line 704
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 707
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BASIC_ANIM_WITH_DIM:Z

    if-eqz v0, :cond_1

    .line 708
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mHasDimAnimationLeash:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 711
    :cond_1
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 713
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 716
    return-void
.end method
