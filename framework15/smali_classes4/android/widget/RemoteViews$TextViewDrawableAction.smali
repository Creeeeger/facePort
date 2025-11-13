.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field blacklist mD1:I

.field blacklist mD2:I

.field blacklist mD3:I

.field blacklist mD4:I

.field blacklist mDrawablesLoaded:Z

.field blacklist mI1:Landroid/graphics/drawable/Icon;

.field blacklist mI2:Landroid/graphics/drawable/Icon;

.field blacklist mI3:Landroid/graphics/drawable/Icon;

.field blacklist mI4:Landroid/graphics/drawable/Icon;

.field blacklist mId1:Landroid/graphics/drawable/Drawable;

.field blacklist mId2:Landroid/graphics/drawable/Drawable;

.field blacklist mId3:Landroid/graphics/drawable/Drawable;

.field blacklist mId4:Landroid/graphics/drawable/Drawable;

.field blacklist mIsRelative:Z

.field blacklist mUseIcons:Z


# direct methods
.method public constructor blacklist <init>(IZIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 7

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_2
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5

    move-object v5, v3

    goto :goto_2

    :cond_5
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v6, :cond_7

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_4
    goto :goto_5

    :cond_8
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_5

    :cond_9
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_5
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v3

    return-object v3

    :cond_0
    iget-boolean v3, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v3, :cond_1

    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v6, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget-object v7, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    iget-object v8, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    iget-object v9, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    iget-object v10, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v12, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v13, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget v14, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v15, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v4, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    move-object v11, v3

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    :goto_0
    nop

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_2

    :cond_3
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_3

    :cond_4
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_3
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_4
    iput-object v6, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    :cond_6
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-nez v5, :cond_7

    move-object v5, v6

    goto :goto_5

    :cond_7
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_5
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-nez v5, :cond_8

    move-object v5, v6

    goto :goto_6

    :cond_8
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_6
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-nez v5, :cond_9

    move-object v5, v6

    goto :goto_7

    :cond_9
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_7
    iput-object v5, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    iget v5, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_8
    iput-object v6, v3, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    :goto_9
    return-object v3
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    return v0
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
