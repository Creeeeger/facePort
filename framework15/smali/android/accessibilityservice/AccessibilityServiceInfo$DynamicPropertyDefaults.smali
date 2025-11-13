.class Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicPropertyDefaults"
.end annotation


# instance fields
.field private final blacklist mEventTypesDefault:I

.field private final blacklist mFeedbackTypeDefault:I

.field private final blacklist mFlagsDefault:I

.field private final blacklist mInteractiveUiTimeoutDefault:I

.field private final blacklist mMotionEventSourcesDefault:I

.field private final blacklist mNonInteractiveUiTimeoutDefault:I

.field private final blacklist mNotificationTimeoutDefault:J

.field private final blacklist mObservedMotionEventSourcesDefault:I

.field private final blacklist mPackageNamesDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventTypesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mEventTypesDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackTypeDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFeedbackTypeDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagsDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFlagsDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInteractiveUiTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mInteractiveUiTimeoutDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMotionEventSourcesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mMotionEventSourcesDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonInteractiveUiTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNonInteractiveUiTimeoutDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)J
    .locals 2

    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNotificationTimeoutDefault:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObservedMotionEventSourcesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mObservedMotionEventSourcesDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageNamesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mPackageNamesDefault:Ljava/util/List;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mEventTypesDefault:I

    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mPackageNamesDefault:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mPackageNamesDefault:Ljava/util/List;

    :goto_0
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFeedbackTypeDefault:I

    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNotificationTimeoutDefault:J

    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmNonInteractiveUiTimeout(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNonInteractiveUiTimeoutDefault:I

    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmInteractiveUiTimeout(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mInteractiveUiTimeoutDefault:I

    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFlagsDefault:I

    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmMotionEventSources(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mMotionEventSourcesDefault:I

    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmObservedMotionEventSources(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mObservedMotionEventSourcesDefault:I

    return-void
.end method
