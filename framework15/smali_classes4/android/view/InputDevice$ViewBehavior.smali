.class public final Landroid/view/InputDevice$ViewBehavior;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewBehavior"
.end annotation


# static fields
.field private static final blacklist DEFAULT_SHOULD_SMOOTH_SCROLL:Z


# instance fields
.field private final blacklist mInputDevice:Landroid/view/InputDevice;

.field private blacklist mShouldSmoothScroll:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldSmoothScroll(Landroid/view/InputDevice$ViewBehavior;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InputDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    iput-object p1, p0, Landroid/view/InputDevice$ViewBehavior;->mInputDevice:Landroid/view/InputDevice;

    return-void
.end method


# virtual methods
.method public whitelist shouldSmoothScroll(II)Z
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice$ViewBehavior;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/view/InputDevice$ViewBehavior;->mShouldSmoothScroll:Z

    return v0
.end method
