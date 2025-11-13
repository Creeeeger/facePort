.class public abstract Landroid/widget/SemRemoteViewsAnimation;
.super Ljava/lang/Object;
.source "SemRemoteViewsAnimation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected final blacklist MAX_DURATION:J

.field protected blacklist mIsExpired:Z

.field protected blacklist mViewId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$gNodNI8ffMjkoD1fTKLnsZ8uhIU(Landroid/widget/SemRemoteViewsAnimation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->lambda$play$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsAnimation;->MAX_DURATION:J

    iput p1, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsAnimation;->MAX_DURATION:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mIsExpired:Z

    return-void
.end method

.method private synthetic blacklist lambda$play$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->endAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract blacklist endAnimation(Landroid/view/View;)V
.end method

.method public blacklist play(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->startAnimation(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/widget/SemRemoteViewsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/widget/SemRemoteViewsAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SemRemoteViewsAnimation;Landroid/view/View;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract blacklist startAnimation(Landroid/view/View;)V
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mIsExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
