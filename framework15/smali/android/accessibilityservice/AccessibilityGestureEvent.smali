.class public final Landroid/accessibilityservice/AccessibilityGestureEvent;
.super Ljava/lang/Object;
.source "AccessibilityGestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityGestureEvent$GestureId;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityGestureEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mGestureId:I

.field private blacklist mMotionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityGestureEvent$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    iput p1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    iput p2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/accessibilityservice/AccessibilityGestureEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist gestureIdToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_1
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_2
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_3
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_4
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_5
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_6
    const-string v0, "GESTURE_4_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_7
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_8
    const-string v0, "GESTURE_4_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_9
    const-string v0, "GESTURE_4_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_a
    const-string v0, "GESTURE_4_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_b
    const-string v0, "GESTURE_4_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_c
    const-string v0, "GESTURE_4_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_d
    const-string v0, "GESTURE_3_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_e
    const-string v0, "GESTURE_3_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_f
    const-string v0, "GESTURE_3_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_10
    const-string v0, "GESTURE_3_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_11
    const-string v0, "GESTURE_2_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_12
    const-string v0, "GESTURE_2_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_13
    const-string v0, "GESTURE_2_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_14
    const-string v0, "GESTURE_2_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_15
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_16
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_17
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_18
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_19
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_1a
    const-string v0, "GESTURE_2_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_1b
    const-string v0, "GESTURE_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_1c
    const-string v0, "GESTURE_DOUBLE_TAP"

    return-object v0

    :pswitch_1d
    const-string v0, "GESTURE_SWIPE_DOWN_AND_RIGHT"

    return-object v0

    :pswitch_1e
    const-string v0, "GESTURE_SWIPE_DOWN_AND_LEFT"

    return-object v0

    :pswitch_1f
    const-string v0, "GESTURE_SWIPE_UP_AND_RIGHT"

    return-object v0

    :pswitch_20
    const-string v0, "GESTURE_SWIPE_UP_AND_LEFT"

    return-object v0

    :pswitch_21
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_DOWN"

    return-object v0

    :pswitch_22
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_UP"

    return-object v0

    :pswitch_23
    const-string v0, "GESTURE_SWIPE_LEFT_AND_DOWN"

    return-object v0

    :pswitch_24
    const-string v0, "GESTURE_SWIPE_LEFT_AND_UP"

    return-object v0

    :pswitch_25
    const-string v0, "GESTURE_SWIPE_DOWN_AND_UP"

    return-object v0

    :pswitch_26
    const-string v0, "GESTURE_SWIPE_UP_AND_DOWN"

    return-object v0

    :pswitch_27
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_LEFT"

    return-object v0

    :pswitch_28
    const-string v0, "GESTURE_SWIPE_LEFT_AND_RIGHT"

    return-object v0

    :pswitch_29
    const-string v0, "GESTURE_SWIPE_RIGHT"

    return-object v0

    :pswitch_2a
    const-string v0, "GESTURE_SWIPE_LEFT"

    return-object v0

    :pswitch_2b
    const-string v0, "GESTURE_SWIPE_DOWN"

    return-object v0

    :pswitch_2c
    const-string v0, "GESTURE_SWIPE_UP"

    return-object v0

    :pswitch_2d
    const-string v0, "GESTURE_UNKNOWN"

    return-object v0

    :pswitch_2e
    const-string v0, "GESTURE_PASSTHROUGH"

    return-object v0

    :pswitch_2f
    const-string v0, "GESTURE_TOUCH_EXPLORATION"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist copyForAsync()Landroid/accessibilityservice/AccessibilityGestureEvent;
    .locals 5

    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    iget v2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getGestureId()I
    .locals 1

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    return v0
.end method

.method public whitelist getMotionEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist recycle()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityGestureEvent$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityGestureEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "gestureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "displayId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Motion Events: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
