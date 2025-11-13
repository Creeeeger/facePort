.class Landroid/view/TwoFingerSwipeGestureDetector$Tuner;
.super Ljava/lang/Object;
.source "TwoFingerSwipeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/TwoFingerSwipeGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuner"
.end annotation


# static fields
.field public static final blacklist EASY_START_THRESHOLD_DIP:Ljava/lang/String;

.field public static final blacklist MINUS_DISTANCE_RATIO:Ljava/lang/String;

.field public static final blacklist PLUS_DISTANCE_RATIO:Ljava/lang/String;

.field public static final blacklist SIDE_THRESHOLD_DIP:Ljava/lang/String;

.field public static final blacklist TIME_THRESHOLD:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "time_threshold"

    invoke-static {v0}, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->getSystemPropertiesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->TIME_THRESHOLD:Ljava/lang/String;

    const-string/jumbo v0, "minus_distance_ratio"

    invoke-static {v0}, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->getSystemPropertiesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->MINUS_DISTANCE_RATIO:Ljava/lang/String;

    const-string/jumbo v0, "plus_distance_ratio"

    invoke-static {v0}, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->getSystemPropertiesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->PLUS_DISTANCE_RATIO:Ljava/lang/String;

    const-string v0, "easy_start_threshold_dip"

    invoke-static {v0}, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->getSystemPropertiesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->EASY_START_THRESHOLD_DIP:Ljava/lang/String;

    const-string/jumbo v0, "side_threshold_dip"

    invoke-static {v0}, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->getSystemPropertiesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/TwoFingerSwipeGestureDetector$Tuner;->SIDE_THRESHOLD_DIP:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getSystemPropertiesKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mw.split.gesture.tune."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
