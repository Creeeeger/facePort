.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;
    }
.end annotation


# static fields
.field public static final greylist-max-o MICRO:I = 0x1

.field private static blacklist sHasPaddingBottomInCustom:Z


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mAlertDialogLayout:I

.field private final greylist-max-o mButtonHandler:Landroid/view/View$OnClickListener;

.field private greylist-max-o mButtonNegative:Landroid/widget/Button;

.field private greylist-max-o mButtonNegativeMessage:Landroid/os/Message;

.field private greylist-max-o mButtonNegativeText:Ljava/lang/CharSequence;

.field private greylist-max-o mButtonNeutral:Landroid/widget/Button;

.field private greylist-max-o mButtonNeutralMessage:Landroid/os/Message;

.field private greylist-max-o mButtonNeutralText:Ljava/lang/CharSequence;

.field private greylist-max-o mButtonPanelLayoutHint:I

.field private greylist-max-o mButtonPanelSideLayout:I

.field private greylist-max-o mButtonPositive:Landroid/widget/Button;

.field private greylist-max-o mButtonPositiveMessage:Landroid/os/Message;

.field private greylist-max-o mButtonPositiveText:Ljava/lang/CharSequence;

.field private greylist-max-o mCheckedItem:I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist mCustomTitleView:Landroid/view/View;

.field private final greylist-max-o mDialogInterface:Landroid/content/DialogInterface;

.field private greylist mForceInverseBackground:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIconId:I

.field private greylist-max-o mIconView:Landroid/widget/ImageView;

.field private blacklist mIsItemChoiceLayout:Z

.field private blacklist mLastOrientation:I

.field private greylist-max-o mListItemLayout:I

.field private greylist-max-o mListLayout:I

.field protected greylist-max-o mListView:Landroid/widget/ListView;

.field protected greylist-max-o mMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mMessageHyphenationFrequency:Ljava/lang/Integer;

.field private greylist-max-o mMessageMovementMethod:Landroid/text/method/MovementMethod;

.field protected greylist-max-o mMessageView:Landroid/widget/TextView;

.field private greylist-max-o mMultiChoiceItemLayout:I

.field protected greylist-max-o mScrollView:Landroid/widget/ScrollView;

.field private greylist-max-o mShowTitle:Z

.field private greylist-max-o mSingleChoiceItemLayout:I

.field private final blacklist mThemeIsDeviceDefault:Z

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleView:Landroid/widget/TextView;

.field private greylist mView:Landroid/view/View;

.field private greylist-max-o mViewLayoutResId:I

.field private greylist-max-o mViewSpacingBottom:I

.field private greylist-max-o mViewSpacingLeft:I

.field private greylist-max-o mViewSpacingRight:I

.field private greylist-max-o mViewSpacingSpecified:Z

.field private greylist-max-o mViewSpacingTop:I

.field protected final greylist-max-o mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic blacklist $r8$lambda$GPBH0ei2ZGwypV5CAvi0FCCRUic(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/internal/app/AlertController;->lambda$setupView$1(Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LBOk9AshTZ9ZPrkFpQ5sAMKAxZQ(Lcom/android/internal/app/AlertController;ILandroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AlertController;->lambda$semSetupButtonsPadding$2(ILandroid/widget/Button;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oRUqy2vS3T4oFo_EPjG-31oMHls(Lcom/android/internal/app/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegative(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutral(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositive(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogInterface(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThemeIsDeviceDefault(Lcom/android/internal/app/AlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsItemChoiceLayout(Lcom/android/internal/app/AlertController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsHasPaddingBottomInCustom()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    return-void
.end method

.method protected constructor greylist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200ef

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0xa

    const v5, 0x1090032

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    const/16 v0, 0xf

    const v3, 0x109013a

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    const/16 v0, 0x10

    const v3, 0x1090013

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    const/16 v0, 0x15

    const v3, 0x1090012

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    const/16 v0, 0xe

    const v3, 0x1090011

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    const/16 v0, 0x14

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p3, v4}, Landroid/view/Window;->requestFeature(I)Z

    return-void
.end method

.method static greylist-max-o canTextInput(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private greylist-max-o centerButton(Landroid/widget/Button;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x10203b5

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020501

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static final greylist-max-o create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 4

    sget-object v0, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v1, 0x101005d

    const v2, 0x1030223

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    packed-switch v1, :pswitch_data_0

    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    :pswitch_0
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic blacklist lambda$semSetupButtonsPadding$2(ILandroid/widget/Button;)V
    .locals 2

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$setupView$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->semSetupPaddings()V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    return-void
.end method

.method private synthetic blacklist lambda$setupView$1(Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 1

    new-instance v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static greylist-max-o manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private blacklist requestFocusForContent(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    return v0

    :cond_1
    return v2
.end method

.method private blacklist requestFocusForDefaultButton()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p1, :cond_1

    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private greylist-max-o selectContentView()I
    .locals 2

    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private blacklist semAdjustContentPanelPadding(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105051a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private blacklist semAdjustParentPanelPadding(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private blacklist semAdjustTopPanelPadding(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x102065a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private blacklist semCheckMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5

    const v0, 0x3fa66666    # 1.3f

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v2, :cond_0

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    int-to-float v3, p2

    div-float/2addr v3, v1

    const/4 v4, 0x0

    mul-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private blacklist semSetupButtonsPadding()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050439

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/Button;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AlertController;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist semSetupPaddings()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102048a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x102065a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020519

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020545

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020278

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10202a5

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x1020667

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_0

    move v12, v9

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_1

    move v13, v9

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_2

    move v14, v9

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v15, :cond_3

    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v10, :cond_3

    goto :goto_3

    :cond_3
    move v9, v11

    :goto_3
    if-eqz v12, :cond_4

    if-nez v13, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    if-eqz v9, :cond_6

    :cond_5
    invoke-virtual {v1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_6
    nop

    const v10, 0x1050443

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v1, v11, v10, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    if-eqz v2, :cond_8

    const v10, 0x1050440

    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    if-nez v14, :cond_7

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v15, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    :cond_7
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x1050442

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v0, 0x0

    invoke-virtual {v2, v15, v0, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    const v0, 0x1050432

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v10, 0x1050431

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x105042d

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v15, 0x0

    invoke-virtual {v3, v0, v15, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    if-eqz v4, :cond_a

    const v0, 0x1050436

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v11, 0x1050435

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v0, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    return-void
.end method

.method private greylist-max-o setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x11

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_0

    const v2, 0x10808c7

    const v3, 0x10808d6

    const v4, 0x10808c4

    const v5, 0x10808c1

    const v6, 0x10808c6

    const v7, 0x10808d5

    const v8, 0x10808c3

    const v9, 0x10808c0

    const v10, 0x10808c2

    :cond_0
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v13, 0x6

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v13, 0x4

    new-array v14, v13, [Landroid/view/View;

    new-array v15, v13, [Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    if-eqz p6, :cond_1

    aput-object p2, v14, v18

    aput-boolean v13, v15, v18

    add-int/lit8 v18, v18, 0x1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v12, 0x8

    if-ne v13, v12, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v13, p3

    :goto_0
    aput-object v13, v14, v18

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    aput-boolean v13, v15, v18

    const/4 v13, 0x1

    add-int/lit8 v18, v18, 0x1

    if-eqz p7, :cond_4

    aput-object p4, v14, v18

    iget-boolean v13, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v13, v15, v18

    add-int/lit8 v18, v18, 0x1

    :cond_4
    if-eqz p8, :cond_5

    aput-object p5, v14, v18

    const/4 v13, 0x1

    aput-boolean v13, v15, v18

    :cond_5
    const/4 v13, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, v16

    move/from16 v21, v18

    move/from16 v18, v3

    move/from16 v3, v21

    :goto_2
    move/from16 v19, v4

    array-length v4, v14

    if-ge v3, v4, :cond_b

    aget-object v4, v14, v3

    if-nez v4, :cond_6

    move/from16 v20, v7

    goto :goto_7

    :cond_6
    if-eqz v12, :cond_a

    if-nez v13, :cond_8

    move/from16 v20, v7

    if-eqz v17, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v7, v18

    :goto_3
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_8
    move/from16 v20, v7

    if-eqz v17, :cond_9

    move v7, v8

    goto :goto_4

    :cond_9
    move/from16 v7, v19

    :goto_4
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    move/from16 v20, v7

    :goto_6
    move-object v7, v4

    aget-boolean v12, v15, v3

    move/from16 v17, v12

    move-object v12, v7

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    move/from16 v7, v20

    goto :goto_2

    :cond_b
    move/from16 v20, v7

    if-eqz v12, :cond_10

    if-eqz v13, :cond_e

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    if-eqz v17, :cond_d

    if-eqz p8, :cond_c

    move v4, v10

    goto :goto_8

    :cond_c
    move v4, v9

    goto :goto_8

    :cond_d
    move v4, v5

    :goto_8
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    :cond_e
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v17, :cond_f

    move v4, v6

    goto :goto_9

    :cond_f
    move v4, v2

    :goto_9
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_10
    :goto_a
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_13

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_13

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-boolean v7, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->semSetBottomColor(I)V

    :cond_11
    iget v7, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    const/4 v0, -0x1

    if-le v7, v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    nop

    const/16 v0, 0x13

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_b

    :cond_12
    move/from16 v16, v2

    goto :goto_b

    :cond_13
    move/from16 v16, v2

    :goto_b
    return-void
.end method

.method private greylist-max-o setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_6
    goto :goto_1

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private greylist-max-o setupView()V
    .locals 28

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102048a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;

    invoke-direct {v0, v9, v10}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const v0, 0x1020667

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v1, 0x1020278

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v2, 0x102023c

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v3, 0x10202a5

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    invoke-direct {v9, v14}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v9, v15, v11}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-direct {v9, v8, v12}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {v9, v7, v13}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v9, v5}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v4}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v0, 0x8

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move/from16 v16, v3

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    move/from16 v19, v2

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move/from16 v20, v2

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    move/from16 v21, v0

    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_b

    if-eqz v16, :cond_7

    if-nez v19, :cond_7

    if-eqz v20, :cond_8

    :cond_7
    if-eqz v21, :cond_9

    :cond_8
    invoke-direct {v9, v10}, Lcom/android/internal/app/AlertController;->semAdjustParentPanelPadding(Landroid/view/View;)V

    :cond_9
    if-eqz v16, :cond_a

    if-eqz v19, :cond_a

    if-nez v20, :cond_a

    invoke-direct {v9, v10}, Lcom/android/internal/app/AlertController;->semAdjustTopPanelPadding(Landroid/view/View;)V

    :cond_a
    if-nez v16, :cond_b

    if-eqz v3, :cond_b

    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    if-eqz v0, :cond_b

    invoke-direct {v9, v5}, Lcom/android/internal/app/AlertController;->semAdjustContentPanelPadding(Landroid/view/View;)V

    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v16, :cond_c

    move-object v0, v14

    goto :goto_6

    :cond_c
    move-object v0, v5

    :goto_6
    invoke-direct {v9, v0}, Lcom/android/internal/app/AlertController;->requestFocusForContent(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->requestFocusForDefaultButton()V

    :cond_d
    if-eqz v16, :cond_e

    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    sput-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    if-nez v1, :cond_10

    if-eqz v5, :cond_f

    const v0, 0x102063f

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    :cond_10
    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->semSetupButtonsPadding()V

    :cond_11
    if-eqz v3, :cond_18

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_12

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    goto :goto_8

    :cond_12
    const/4 v2, 0x1

    :goto_8
    const/4 v0, 0x0

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_14

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_14

    if-eqz v16, :cond_13

    goto :goto_9

    :cond_13
    const v2, 0x1020657

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_14
    :goto_9
    if-nez v16, :cond_15

    const v2, 0x1020656

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_15
    if-nez v0, :cond_16

    const v2, 0x1020655

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_16
    :goto_a
    if-eqz v0, :cond_17

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    goto :goto_b

    :cond_18
    if-eqz v5, :cond_19

    const v0, 0x1020640

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_b
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/android/internal/app/AlertController$RecycleListView;

    if-eqz v0, :cond_1a

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_1a
    if-nez v16, :cond_21

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1b

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    goto :goto_c

    :cond_1b
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    :goto_c
    if-eqz v0, :cond_20

    if-eqz v3, :cond_1c

    const/16 v17, 0x1

    goto :goto_d

    :cond_1c
    const/16 v17, 0x0

    :goto_d
    if-eqz v1, :cond_1d

    const/16 v22, 0x2

    goto :goto_e

    :cond_1d
    const/16 v22, 0x0

    :goto_e
    or-int v2, v17, v22

    move/from16 v17, v1

    iget-boolean v1, v9, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    if-eqz v1, :cond_1f

    iget-object v1, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v22, v4

    const v4, 0x1020596

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1e

    if-eqz v3, :cond_1e

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setScrollIndicators(II)V

    goto :goto_f

    :cond_1f
    move-object/from16 v22, v4

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setScrollIndicators(II)V

    goto :goto_f

    :cond_20
    move/from16 v17, v1

    move-object/from16 v22, v4

    goto :goto_f

    :cond_21
    move/from16 v17, v1

    move-object/from16 v22, v4

    :goto_f
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    const/4 v4, 0x0

    move/from16 v23, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v6

    move-object v3, v5

    move-object v4, v14

    move-object/from16 v24, v5

    move-object/from16 v5, v22

    move-object/from16 v25, v6

    move/from16 v6, v23

    move-object/from16 v26, v7

    move/from16 v7, v16

    move-object/from16 v27, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static greylist-max-o shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x112000f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public greylist getButton(I)Landroid/widget/Button;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o getIconAttributeResId(I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public greylist getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public greylist installContent()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    return-void
.end method

.method public greylist-max-o installContent(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    return-void
.end method

.method public greylist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setButtonPanelLayoutHint(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public greylist setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public greylist setIcon(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public greylist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o setInverseBackgroundForced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public greylist setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setMessageHyphenationFrequency(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public greylist setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public greylist-max-o setView(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public greylist setView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public greylist-max-o setView(Landroid/view/View;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method

.method protected greylist-max-o setupButtons(Landroid/view/ViewGroup;)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const v7, 0x1020019

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v3, v0

    :goto_1
    const v7, 0x102001a

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v3, v1

    :goto_2
    const v7, 0x102001b

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v3, v2

    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_5

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x1010031

    invoke-virtual {v9, v10, v7, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v7, Landroid/util/TypedValue;->resourceId:I

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v10, v4, v9}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v10, v4, v9}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10, v4, v9}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v4}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v4}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v4}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_5
    :goto_4
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-ne v3, v0, :cond_6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_5

    :cond_6
    if-ne v3, v1, :cond_7

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_5

    :cond_7
    if-ne v3, v2, :cond_8

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    move v7, v5

    goto :goto_6

    :cond_9
    move v7, v6

    :goto_6
    if-nez v7, :cond_a

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v9, 0x102058a

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x102058b

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    move v10, v5

    goto :goto_7

    :cond_b
    move v10, v6

    :goto_7
    iget-object v11, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getVisibility()I

    move-result v11

    if-nez v11, :cond_c

    move v11, v5

    goto :goto_8

    :cond_c
    move v11, v6

    :goto_8
    iget-object v12, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getVisibility()I

    move-result v12

    if-nez v12, :cond_d

    goto :goto_9

    :cond_d
    move v5, v6

    :goto_9
    if-eqz v9, :cond_10

    if-eqz v10, :cond_e

    if-nez v11, :cond_f

    :cond_e
    if-eqz v10, :cond_10

    if-eqz v5, :cond_10

    :cond_f
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    if-eqz v8, :cond_11

    if-eqz v11, :cond_11

    if-eqz v5, :cond_11

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method protected greylist-max-o setupContent(Landroid/view/ViewGroup;)V
    .locals 5

    const v0, 0x1020519

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050433

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected greylist-max-o setupTitle(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x102065a

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x10201e2

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050444

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
