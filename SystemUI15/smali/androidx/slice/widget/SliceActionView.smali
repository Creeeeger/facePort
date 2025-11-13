.class public final Landroidx/slice/widget/SliceActionView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final CHECKED_STATE_SET:[I


# instance fields
.field public mActionView:Landroid/view/View;

.field public mEventInfo:Landroidx/slice/widget/EventInfo;

.field public final mIconSize:I

.field public final mImageSize:I

.field public mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

.field public mProgressView:Landroid/widget/ProgressBar;

.field public mSliceAction:Landroidx/slice/core/SliceActionImpl;

.field public final mTextActionPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070019

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    const p2, 0x7f070028

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/slice/widget/SliceActionView;->mTextActionPadding:I

    if-eqz p3, :cond_0

    iget p1, p3, Landroidx/slice/widget/RowStyle;->mIconSize:I

    iput p1, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    iget p1, p3, Landroidx/slice/widget/RowStyle;->mImageSize:I

    iput p1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iget p1, p3, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    iput p1, p0, Landroidx/slice/widget/SliceActionView;->mTextActionPadding:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendActionInternal()V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v2, :cond_2

    iput v0, v2, Landroidx/slice/widget/EventInfo;->state:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v2, v2, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;->onSliceAction(Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    instance-of v1, p0, Landroid/widget/Checkable;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    const-string p0, "SliceActionView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public final setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;ILandroidx/slice/widget/SliceAdapter;)V
    .locals 3

    iget-object p5, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    :cond_0
    iget-object p5, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz p5, :cond_1

    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    :cond_1
    iput-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    iput-object p3, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iput-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result p2

    iget-boolean p3, p1, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    const/4 p5, 0x0

    const/4 v0, -0x1

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0019

    invoke-virtual {p2, v1, p0, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget p3, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setMinimumHeight(I)V

    iget p3, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setMinimumWidth(I)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eq p4, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p5, 0x1010030

    invoke-static {p5, p3}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(ILandroid/content/Context;)I

    move-result p3

    new-instance p5, Landroid/content/res/ColorStateList;

    sget-object v0, Landroidx/slice/widget/SliceActionView;->CHECKED_STATE_SET:[I

    sget-object v1, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    filled-new-array {v0, v1}, [[I

    move-result-object v2

    filled-new-array {p4, p3}, [I

    move-result-object p3

    invoke-direct {p5, v2, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p5, 0x7f040170

    invoke-static {p5, p3}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(ILandroid/content/Context;)I

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p5, 0x7f060a69

    invoke-virtual {p3, p5}, Landroid/content/Context;->getColor(I)I

    move-result p3

    :cond_2
    new-instance p5, Landroid/content/res/ColorStateList;

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    filled-new-array {p4, p3}, [I

    move-result-object p3

    invoke-direct {p5, v0, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    goto/16 :goto_3

    :cond_4
    iget p2, p1, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    new-instance p2, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    iget-object p3, p1, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p2, p0, Landroidx/slice/widget/SliceActionView;->mTextActionPadding:I

    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_5
    iget-object v1, p1, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroidx/slice/widget/SliceActionView$ImageToggle;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/widget/SliceActionView$ImageToggle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroidx/slice/widget/SliceActionView$ImageToggle;->setChecked(Z)V

    iput-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    goto :goto_0

    :cond_6
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    :goto_0
    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    iget-object p3, p3, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eq p4, v0, :cond_7

    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    iget v1, v1, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    if-nez v1, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_7
    iget-object p3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p4, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_9

    iget p2, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    if-ne p2, v0, :cond_8

    iget p2, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    :goto_1
    div-int/lit8 p2, p2, 0x2

    move p5, p2

    goto :goto_2

    :cond_8
    iget p3, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    sub-int/2addr p2, p3

    goto :goto_1

    :cond_9
    :goto_2
    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, p5, p5, p5, p5}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x101045c

    invoke-static {p4, p3}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_3
    iget-object p0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz p0, :cond_c

    iget-object p2, p1, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    iget-object p2, p1, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method
