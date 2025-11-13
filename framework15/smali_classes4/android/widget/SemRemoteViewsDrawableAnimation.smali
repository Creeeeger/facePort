.class public Landroid/widget/SemRemoteViewsDrawableAnimation;
.super Landroid/widget/SemRemoteViewsAnimation;
.source "SemRemoteViewsDrawableAnimation.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/SemRemoteViewsDrawableAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemRemoteViewsDrawableAnimation"


# instance fields
.field private blacklist mAnimatableDrawable:Landroid/graphics/drawable/Animatable2;

.field private final blacklist mNeedToStart:Z

.field private final blacklist mResId:I

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/SemRemoteViewsDrawableAnimation$1;

    invoke-direct {v0}, Landroid/widget/SemRemoteViewsDrawableAnimation$1;-><init>()V

    sput-object v0, Landroid/widget/SemRemoteViewsDrawableAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    iput-boolean p2, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mNeedToStart:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>(IZI)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    iput-boolean p2, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mNeedToStart:Z

    iput p3, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor greylist <init>(IZLandroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(I)V

    iput-boolean p2, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mNeedToStart:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mResId:I

    iput-object p3, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mNeedToStart:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mResId:I

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public static blacklist writeToParcel(Landroid/widget/SemRemoteViewsDrawableAnimation;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemRemoteViewsDrawableAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist endAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected blacklist startAnimation(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mIsExpired:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mResId:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v2, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-nez v3, :cond_4

    instance-of v3, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "SemRemoteViewsDrawableAnimation"

    const-string v4, "ImageView drawable is not animatable"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Animatable2;

    iput-object v3, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mAnimatableDrawable:Landroid/graphics/drawable/Animatable2;

    iget-boolean v3, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mNeedToStart:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mAnimatableDrawable:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable2;->start()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mIsExpired:Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mAnimatableDrawable:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable2;->stop()V

    :cond_6
    :goto_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/SemRemoteViewsAnimation;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mNeedToStart:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/SemRemoteViewsDrawableAnimation;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    return-void
.end method
