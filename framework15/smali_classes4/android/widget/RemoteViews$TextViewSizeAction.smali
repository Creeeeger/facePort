.class Landroid/widget/RemoteViews$TextViewSizeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewSizeAction"
.end annotation


# instance fields
.field blacklist mMaxFontScale:F

.field blacklist mSize:F

.field blacklist mSizeResId:I

.field blacklist mUnits:I


# direct methods
.method constructor blacklist <init>(IIF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    iput p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    iput p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    return-void
.end method

.method constructor blacklist <init>(IIFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    iput p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    iput p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    iput p4, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    return-void
.end method

.method constructor blacklist <init>(IIIF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    iput p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    iput p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    iput p4, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 5

    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iget v4, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    mul-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    iget v4, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mUnits:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mSizeResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->mMaxFontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
