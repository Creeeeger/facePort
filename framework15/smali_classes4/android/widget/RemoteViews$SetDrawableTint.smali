.class Landroid/widget/RemoteViews$SetDrawableTint;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetDrawableTint"
.end annotation


# instance fields
.field blacklist mColorFilter:I

.field blacklist mFilterMode:Landroid/graphics/PorterDuff$Mode;

.field blacklist mTargetBackground:Z


# direct methods
.method constructor blacklist <init>(IZILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    iput-boolean p2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    iput p3, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    iput-object p4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 5

    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    iget-object v4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
