.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
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

.method static bridge synthetic blacklist -$$Nest$sfgetsHasPaddingBottomInCustom()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    return-void
.end method

.method protected constructor greylist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 109
    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 137
    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 147
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 220
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 222
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 223
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 227
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b9

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 228
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    .line 232
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v5, 0x101005d

    invoke-virtual {p1, v2, v3, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 235
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0xa

    const v5, 0x1090031

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 237
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 239
    const/16 v0, 0xf

    const v3, 0x1090131

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 242
    const/16 v0, 0x10

    const v3, 0x1090013

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 245
    const/16 v0, 0x15

    const v3, 0x1090012

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 248
    const/16 v0, 0xe

    const v3, 0x1090011

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 251
    const/16 v0, 0x14

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    .line 253
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    invoke-virtual {p3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 257
    return-void
.end method

.method static greylist-max-o canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 261
    return v1

    .line 264
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 265
    return v2

    .line 268
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 269
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 270
    .local v3, "i":I
    :cond_2
    if-lez v3, :cond_3

    .line 271
    add-int/lit8 v3, v3, -0x1

    .line 272
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 273
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 274
    return v1

    .line 278
    :cond_3
    return v2
.end method

.method private greylist-max-o centerButton(Landroid/widget/Button;)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .line 968
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 969
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 970
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 971
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x10203ab

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 973
    .local v1, "leftSpacer":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 974
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 976
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10204f5

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 977
    .local v3, "rightSpacer":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 978
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 980
    :cond_1
    return-void
.end method

.method public static final greylist-max-o create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    .line 204
    sget-object v0, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v1, 0x0

    const v2, 0x101005d

    const v3, 0x1030223

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 208
    .local v1, "controllerType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    packed-switch v1, :pswitch_data_0

    .line 214
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    .line 212
    :pswitch_0
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 838
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 839
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

    .line 841
    :cond_1
    if-eqz p2, :cond_3

    .line 842
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 844
    :cond_3
    return-void
.end method

.method private blacklist requestFocusForContent(Landroid/view/View;)Z
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .line 695
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    return v0

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 700
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 701
    return v0

    .line 704
    :cond_1
    return v2
.end method

.method private blacklist requestFocusForDefaultButton()V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 715
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .line 525
    if-nez p1, :cond_1

    .line 527
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 528
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 531
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 535
    :cond_1
    if-eqz p2, :cond_2

    .line 536
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 537
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 538
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 544
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 547
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private greylist-max-o selectContentView()I
    .locals 3

    .line 294
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 295
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 297
    :cond_0
    iget v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 298
    return v0

    .line 301
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private blacklist semAdjustParentPanelPadding(Landroid/view/View;)V
    .locals 1
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 1170
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1171
    return-void
.end method

.method private blacklist semAdjustTopPanelPadding(Landroid/view/View;)V
    .locals 4
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 1174
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1175
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10503c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1177
    .local v1, "paddingHorizontal":I
    const v2, 0x1020644

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1178
    .local v2, "titleTemplate":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1179
    return-void
.end method

.method private blacklist semCheckMaxFontScale(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .line 1194
    const v0, 0x3fa66666    # 1.3f

    .line 1195
    .local v0, "maxScale":F
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 1197
    .local v1, "currentFontScale":F
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v2, :cond_0

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 1198
    int-to-float v3, p2

    div-float/2addr v3, v1

    .line 1199
    .local v3, "scaleBase":F
    const/4 v4, 0x0

    mul-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1201
    .end local v3    # "scaleBase":F
    :cond_0
    return-void
.end method

.method private blacklist semSetupButtonsPadding()V
    .locals 4

    .line 1182
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1184
    .local v0, "btnTextSize":I
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/AlertController;I)V

    .line 1185
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1191
    return-void
.end method

.method private blacklist semSetupPaddings()V
    .locals 16

    .line 1112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020486

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1113
    .local v1, "mParentPanel":Landroid/view/View;
    const v2, 0x1020644

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1114
    .local v2, "mTitleTemplate":Landroid/view/View;
    const v3, 0x102050e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1115
    .local v3, "mScrollview":Landroid/view/View;
    const v4, 0x102053a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1116
    .local v4, "mButtonPanel":Landroid/view/View;
    const v5, 0x1020270

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1117
    .local v5, "defaultContentPanel":Landroid/view/View;
    iget-object v6, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1119
    .local v6, "resources":Landroid/content/res/Resources;
    const v7, 0x102029c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1120
    .local v7, "customPanel":Landroid/view/ViewGroup;
    const v8, 0x1020652

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1122
    .local v8, "mTopPanel":Landroid/view/View;
    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    .line 1123
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_0

    move v12, v9

    goto :goto_0

    :cond_0
    move v12, v11

    .line 1124
    .local v12, "hasCustomPanel":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 1125
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_1

    move v13, v9

    goto :goto_1

    :cond_1
    move v13, v11

    .line 1126
    .local v13, "hasTopPanel":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 1127
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_2

    move v14, v9

    goto :goto_2

    :cond_2
    move v14, v11

    .line 1128
    .local v14, "hasDefaultContentPanel":Z
    :goto_2
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v15, :cond_3

    .line 1129
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v10, :cond_3

    goto :goto_3

    :cond_3
    move v9, v11

    .line 1131
    .local v9, "hasCustomTitleView":Z
    :goto_3
    if-eqz v12, :cond_4

    if-nez v13, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    if-eqz v9, :cond_6

    .line 1132
    :cond_5
    invoke-virtual {v1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 1137
    :cond_6
    const v10, 0x10503c8

    .line 1138
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1137
    invoke-virtual {v1, v11, v10, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1142
    :goto_4
    if-eqz v2, :cond_8

    .line 1143
    const v10, 0x10503c5

    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    if-nez v14, :cond_7

    .line 1144
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1146
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1144
    invoke-virtual {v2, v15, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    .line 1149
    :cond_7
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1151
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x10503c7

    .line 1152
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1149
    const/4 v0, 0x0

    invoke-virtual {v2, v15, v0, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1155
    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 1156
    const v0, 0x10503b7

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v10, 0x10503b6

    .line 1158
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x10503b2

    .line 1159
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1156
    const/4 v15, 0x0

    invoke-virtual {v3, v0, v15, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1161
    :cond_9
    if-eqz v4, :cond_a

    .line 1162
    const v0, 0x10503bb

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1164
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v11, 0x10503ba

    .line 1165
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1162
    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v0, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1167
    :cond_a
    return-void
.end method

.method private greylist-max-o setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 22
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .line 984
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 985
    .local v2, "fullDark":I
    const/4 v3, 0x0

    .line 986
    .local v3, "topDark":I
    const/4 v4, 0x0

    .line 987
    .local v4, "centerDark":I
    const/4 v5, 0x0

    .line 988
    .local v5, "bottomDark":I
    const/4 v6, 0x0

    .line 989
    .local v6, "fullBright":I
    const/4 v7, 0x0

    .line 990
    .local v7, "topBright":I
    const/4 v8, 0x0

    .line 991
    .local v8, "centerBright":I
    const/4 v9, 0x0

    .line 992
    .local v9, "bottomBright":I
    const/4 v10, 0x0

    .line 996
    .local v10, "bottomMedium":I
    const/16 v11, 0x11

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 998
    .local v11, "needsDefaultBackgrounds":Z
    if-eqz v11, :cond_0

    .line 999
    const v2, 0x10807a7

    .line 1000
    const v3, 0x10807b6

    .line 1001
    const v4, 0x10807a4

    .line 1002
    const v5, 0x10807a1

    .line 1003
    const v6, 0x10807a6

    .line 1004
    const v7, 0x10807b5

    .line 1005
    const v8, 0x10807a3

    .line 1006
    const v9, 0x10807a0

    .line 1007
    const v10, 0x10807a2

    .line 1010
    :cond_0
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1011
    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1012
    const/4 v13, 0x6

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1013
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1023
    const/4 v13, 0x4

    new-array v14, v13, [Landroid/view/View;

    .line 1024
    .local v14, "views":[Landroid/view/View;
    new-array v15, v13, [Z

    .line 1025
    .local v15, "light":[Z
    const/16 v16, 0x0

    .line 1026
    .local v16, "lastView":Landroid/view/View;
    const/16 v17, 0x0

    .line 1028
    .local v17, "lastLight":Z
    const/16 v18, 0x0

    .line 1029
    .local v18, "pos":I
    const/4 v13, 0x0

    if-eqz p6, :cond_1

    .line 1030
    aput-object p2, v14, v18

    .line 1031
    aput-boolean v13, v15, v18

    .line 1032
    add-int/lit8 v18, v18, 0x1

    .line 1040
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

    .line 1041
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    aput-boolean v13, v15, v18

    .line 1042
    const/4 v13, 0x1

    add-int/lit8 v18, v18, 0x1

    .line 1044
    if-eqz p7, :cond_4

    .line 1045
    aput-object p4, v14, v18

    .line 1046
    iget-boolean v13, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v13, v15, v18

    .line 1047
    add-int/lit8 v18, v18, 0x1

    .line 1050
    :cond_4
    if-eqz p8, :cond_5

    .line 1051
    aput-object p5, v14, v18

    .line 1052
    const/4 v13, 0x1

    aput-boolean v13, v15, v18

    .line 1055
    :cond_5
    const/4 v13, 0x0

    .line 1056
    .local v13, "setView":Z
    const/16 v18, 0x0

    move-object/from16 v12, v16

    move/from16 v21, v18

    move/from16 v18, v3

    move/from16 v3, v21

    .end local v16    # "lastView":Landroid/view/View;
    .local v3, "pos":I
    .local v12, "lastView":Landroid/view/View;
    .local v18, "topDark":I
    :goto_2
    move/from16 v19, v4

    .end local v4    # "centerDark":I
    .local v19, "centerDark":I
    array-length v4, v14

    if-ge v3, v4, :cond_b

    .line 1057
    aget-object v4, v14, v3

    .line 1058
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_6

    .line 1059
    move/from16 v20, v7

    goto :goto_7

    .line 1062
    :cond_6
    if-eqz v12, :cond_a

    .line 1063
    if-nez v13, :cond_8

    .line 1064
    move/from16 v20, v7

    if-eqz v17, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v7, v18

    .end local v7    # "topBright":I
    .local v20, "topBright":I
    :goto_3
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 1066
    .end local v20    # "topBright":I
    .restart local v7    # "topBright":I
    :cond_8
    move/from16 v20, v7

    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    if-eqz v17, :cond_9

    move v7, v8

    goto :goto_4

    :cond_9
    move/from16 v7, v19

    :goto_4
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1068
    :goto_5
    const/4 v13, 0x1

    goto :goto_6

    .line 1062
    .end local v20    # "topBright":I
    .restart local v7    # "topBright":I
    :cond_a
    move/from16 v20, v7

    .line 1071
    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    :goto_6
    move-object v7, v4

    .line 1072
    .end local v12    # "lastView":Landroid/view/View;
    .local v7, "lastView":Landroid/view/View;
    aget-boolean v12, v15, v3

    move/from16 v17, v12

    move-object v12, v7

    .line 1056
    .end local v4    # "v":Landroid/view/View;
    .end local v7    # "lastView":Landroid/view/View;
    .restart local v12    # "lastView":Landroid/view/View;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    move/from16 v7, v20

    goto :goto_2

    .line 1075
    .end local v20    # "topBright":I
    .local v7, "topBright":I
    :cond_b
    move/from16 v20, v7

    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    if-eqz v12, :cond_10

    .line 1076
    if-eqz v13, :cond_e

    .line 1077
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1078
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 1079
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1083
    nop

    .line 1084
    if-eqz v17, :cond_d

    if-eqz p8, :cond_c

    move v4, v10

    goto :goto_8

    :cond_c
    move v4, v9

    goto :goto_8

    :cond_d
    move v4, v5

    .line 1083
    :goto_8
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 1086
    :cond_e
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1087
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1089
    if-eqz v17, :cond_f

    move v4, v6

    goto :goto_9

    :cond_f
    move v4, v2

    :goto_9
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1093
    :cond_10
    :goto_a
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1094
    .local v4, "listView":Landroid/widget/ListView;
    if-eqz v4, :cond_13

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_13

    .line 1095
    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1097
    sget-boolean v7, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v7, :cond_11

    .line 1098
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->semSetBottomColor(I)V

    .line 1101
    :cond_11
    iget v7, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1102
    .local v7, "checkedItem":I
    const/4 v0, -0x1

    if-le v7, v0, :cond_12

    .line 1103
    const/4 v0, 0x1

    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1104
    const/16 v0, 0x13

    .line 1105
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "fullDark":I
    .local v16, "fullDark":I
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1104
    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_b

    .line 1102
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_12
    move/from16 v16, v2

    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    goto :goto_b

    .line 1094
    .end local v7    # "checkedItem":I
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_13
    move/from16 v16, v2

    .line 1108
    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    :goto_b
    return-void
.end method

.method private greylist-max-o setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 719
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 721
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 723
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 724
    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 725
    .end local v0    # "customView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 728
    .restart local v0    # "customView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 729
    .local v1, "hasCustomView":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 730
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 734
    :cond_4
    if-eqz v1, :cond_7

    .line 735
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 736
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    .line 739
    iget v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 743
    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 744
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 746
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_6
    goto :goto_1

    .line 747
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 749
    :goto_1
    return-void
.end method

.method private greylist-max-o setupView()V
    .locals 28

    .line 550
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020486

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 552
    .local v10, "parentPanel":Landroid/view/View;
    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v9, v10}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 565
    :cond_0
    const v0, 0x1020652

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 566
    .local v11, "defaultTopPanel":Landroid/view/View;
    const v1, 0x1020270

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 567
    .local v12, "defaultContentPanel":Landroid/view/View;
    const v2, 0x1020233

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 571
    .local v13, "defaultButtonPanel":Landroid/view/View;
    const v3, 0x102029c

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    .line 572
    .local v14, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v14}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 574
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 575
    .local v15, "customTopPanel":Landroid/view/View;
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 576
    .local v8, "customContentPanel":Landroid/view/View;
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 579
    .local v7, "customButtonPanel":Landroid/view/View;
    invoke-direct {v9, v15, v11}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 580
    .local v6, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v8, v12}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 581
    .local v5, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v7, v13}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 583
    .local v4, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v9, v5}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 584
    invoke-virtual {v9, v4}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 585
    invoke-virtual {v9, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 587
    const/16 v0, 0x8

    if-eqz v14, :cond_1

    .line 588
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move/from16 v16, v3

    .line 589
    .local v16, "hasCustomPanel":Z
    if-eqz v6, :cond_2

    .line 590
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 591
    .local v3, "hasTopPanel":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 592
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 594
    .local v1, "hasButtonPanel":Z
    :goto_2
    if-eqz v11, :cond_4

    .line 595
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    move/from16 v19, v2

    .line 596
    .local v19, "hasDefaultTopPanel":Z
    if-eqz v12, :cond_5

    .line 597
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move/from16 v20, v2

    .line 598
    .local v20, "hasDefaultContentPanel":Z
    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 599
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    move/from16 v21, v0

    .line 601
    .local v21, "hasCustomTitleView":Z
    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_a

    .line 602
    if-eqz v16, :cond_7

    if-nez v19, :cond_7

    if-eqz v20, :cond_8

    :cond_7
    if-eqz v21, :cond_9

    .line 603
    :cond_8
    invoke-direct {v9, v10}, Lcom/android/internal/app/AlertController;->semAdjustParentPanelPadding(Landroid/view/View;)V

    .line 606
    :cond_9
    if-eqz v16, :cond_a

    if-eqz v19, :cond_a

    if-nez v20, :cond_a

    .line 607
    invoke-direct {v9, v10}, Lcom/android/internal/app/AlertController;->semAdjustTopPanelPadding(Landroid/view/View;)V

    .line 612
    :cond_a
    invoke-virtual {v10}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 613
    if-eqz v16, :cond_b

    move-object v0, v14

    goto :goto_6

    :cond_b
    move-object v0, v5

    .line 614
    .local v0, "content":Landroid/view/View;
    :goto_6
    invoke-direct {v9, v0}, Lcom/android/internal/app/AlertController;->requestFocusForContent(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->requestFocusForDefaultButton()V

    .line 620
    .end local v0    # "content":Landroid/view/View;
    :cond_c
    if-eqz v16, :cond_d

    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    sput-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    .line 624
    if-nez v1, :cond_f

    .line 625
    if-eqz v5, :cond_e

    .line 626
    const v0, 0x102062b

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 627
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 628
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 631
    .end local v0    # "spacer":Landroid/view/View;
    :cond_e
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 635
    :cond_f
    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_10

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->semSetupButtonsPadding()V

    .line 640
    :cond_10
    if-eqz v3, :cond_17

    .line 642
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_11

    .line 643
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    goto :goto_8

    .line 642
    :cond_11
    const/4 v2, 0x1

    .line 647
    :goto_8
    const/4 v0, 0x0

    .line 648
    .local v0, "divider":Landroid/view/View;
    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_13

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_13

    if-eqz v16, :cond_12

    goto :goto_9

    .line 657
    :cond_12
    const v2, 0x1020641

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    .line 649
    :cond_13
    :goto_9
    if-nez v16, :cond_14

    .line 650
    const v2, 0x1020640

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 652
    :cond_14
    if-nez v0, :cond_15

    .line 653
    const v2, 0x102063f

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 660
    :cond_15
    :goto_a
    if-eqz v0, :cond_16

    .line 661
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 663
    .end local v0    # "divider":Landroid/view/View;
    :cond_16
    goto :goto_b

    .line 664
    :cond_17
    if-eqz v5, :cond_18

    .line 665
    const v0, 0x102062c

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 667
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 672
    .end local v0    # "spacer":Landroid/view/View;
    :cond_18
    :goto_b
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v2, v0, Lcom/android/internal/app/AlertController$RecycleListView;

    if-eqz v2, :cond_19

    .line 673
    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 677
    :cond_19
    if-nez v16, :cond_1e

    .line 678
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 679
    .local v0, "content":Landroid/view/View;
    :goto_c
    if-eqz v0, :cond_1d

    .line 680
    if-eqz v3, :cond_1b

    const/16 v17, 0x1

    goto :goto_d

    :cond_1b
    const/16 v17, 0x0

    .line 681
    :goto_d
    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    :goto_e
    or-int v2, v17, v2

    .line 682
    .local v2, "indicators":I
    move/from16 v17, v1

    .end local v1    # "hasButtonPanel":Z
    .local v17, "hasButtonPanel":Z
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setScrollIndicators(II)V

    goto :goto_f

    .line 679
    .end local v2    # "indicators":I
    .end local v17    # "hasButtonPanel":Z
    .restart local v1    # "hasButtonPanel":Z
    :cond_1d
    move/from16 v17, v1

    .end local v1    # "hasButtonPanel":Z
    .restart local v17    # "hasButtonPanel":Z
    goto :goto_f

    .line 677
    .end local v0    # "content":Landroid/view/View;
    .end local v17    # "hasButtonPanel":Z
    .restart local v1    # "hasButtonPanel":Z
    :cond_1e
    move/from16 v17, v1

    .line 687
    .end local v1    # "hasButtonPanel":Z
    .restart local v17    # "hasButtonPanel":Z
    :goto_f
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    move/from16 v22, v3

    .end local v3    # "hasTopPanel":Z
    .local v22, "hasTopPanel":Z
    const v3, 0x101005d

    move-object/from16 v23, v4

    const/4 v4, 0x0

    .end local v4    # "buttonPanel":Landroid/view/ViewGroup;
    .local v23, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 689
    .local v18, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v6

    move-object v3, v5

    move-object v4, v14

    move-object/from16 v24, v5

    .end local v5    # "contentPanel":Landroid/view/ViewGroup;
    .local v24, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v5, v23

    move-object/from16 v25, v6

    .end local v6    # "topPanel":Landroid/view/ViewGroup;
    .local v25, "topPanel":Landroid/view/ViewGroup;
    move/from16 v6, v22

    move-object/from16 v26, v7

    .end local v7    # "customButtonPanel":Landroid/view/View;
    .local v26, "customButtonPanel":Landroid/view/View;
    move/from16 v7, v16

    move-object/from16 v27, v8

    .end local v8    # "customContentPanel":Landroid/view/View;
    .local v27, "customContentPanel":Landroid/view/View;
    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 691
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 692
    return-void
.end method

.method private static greylist-max-o shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 198
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 199
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x112000d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 200
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
    .param p1, "whichButton"    # I

    .line 490
    packed-switch p1, :pswitch_data_0

    .line 498
    const/4 v0, 0x0

    return-object v0

    .line 492
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 494
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 496
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
    .param p1, "attrId"    # I

    .line 474
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 475
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 476
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public greylist getListView()Landroid/widget/ListView;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public greylist installContent()V
    .locals 2

    .line 288
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 289
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 290
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 291
    return-void
.end method

.method public greylist-max-o installContent(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 0
    .param p1, "params"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 282
    invoke-virtual {p1, p0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 284
    return-void
.end method

.method synthetic blacklist lambda$semSetupButtonsPadding$2$com-android-internal-app-AlertController(ILandroid/widget/Button;)V
    .locals 2
    .param p1, "btnTextSize"    # I
    .param p2, "btn"    # Landroid/widget/Button;

    .line 1186
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1187
    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1188
    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 1190
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$setupView$0$com-android-internal-app-AlertController(Landroid/view/View;)V
    .locals 2
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 556
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->semSetupPaddings()V

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    .line 562
    return-void
.end method

.method synthetic blacklist lambda$setupView$1$com-android-internal-app-AlertController(Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "parentPanel"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "oldLeft"    # I
    .param p8, "oldTop"    # I
    .param p9, "oldRight"    # I
    .param p10, "oldBottom"    # I

    .line 554
    new-instance v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 505
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

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
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 511
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

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
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 400
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 404
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 408
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 409
    goto :goto_0

    .line 412
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 413
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 414
    goto :goto_0

    .line 417
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 418
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 419
    nop

    .line 424
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
    .param p1, "layoutHint"    # I

    .line 381
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 382
    return-void
.end method

.method public greylist setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 318
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 319
    return-void
.end method

.method public greylist setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 435
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 437
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 438
    if-eqz p1, :cond_0

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 442
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 454
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 457
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 458
    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 462
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .line 480
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 481
    return-void
.end method

.method public greylist setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 323
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 324
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_0
    return-void
.end method

.method public greylist-max-o setMessageHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    .line 339
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public greylist-max-o setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 330
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    .line 331
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 334
    :cond_0
    return-void
.end method

.method public greylist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 306
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 307
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method

.method public greylist-max-o setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 349
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 351
    return-void
.end method

.method public greylist setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 358
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 360
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 361
    return-void
.end method

.method public greylist-max-o setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 368
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 371
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 372
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 373
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 374
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 375
    return-void
.end method

.method protected greylist-max-o setupButtons(Landroid/view/ViewGroup;)V
    .locals 17
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 847
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 848
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v3, 0x2

    .line 849
    .local v3, "BIT_BUTTON_NEGATIVE":I
    const/4 v4, 0x4

    .line 850
    .local v4, "BIT_BUTTON_NEUTRAL":I
    const/4 v5, 0x0

    .line 853
    .local v5, "whichButtons":I
    iget-object v6, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_button_background"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 856
    .local v6, "isEnabledShowBtnBg":Z
    :goto_0
    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    .line 858
    .local v9, "isThemeApplied":Z
    :goto_1
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 859
    .local v10, "typedValue":Landroid/util/TypedValue;
    iget-object v11, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const v12, 0x1010434

    invoke-virtual {v11, v12, v10, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 862
    iget v11, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v11, :cond_2

    .line 863
    iget-object v11, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    .local v11, "buttonTextColor":I
    goto :goto_2

    .line 865
    .end local v11    # "buttonTextColor":I
    :cond_2
    iget v11, v10, Landroid/util/TypedValue;->data:I

    .line 869
    .restart local v11    # "buttonTextColor":I
    :goto_2
    const v12, 0x1020019

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 870
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v13, 0x8

    if-eqz v12, :cond_3

    .line 873
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 875
    :cond_3
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 877
    or-int/2addr v5, v2

    .line 880
    :goto_3
    const v12, 0x102001a

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 881
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 884
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 886
    :cond_4
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 889
    or-int/2addr v5, v3

    .line 892
    :goto_4
    const v12, 0x102001b

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 893
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 896
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 898
    :cond_5
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 899
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 901
    or-int/2addr v5, v4

    .line 905
    :goto_5
    if-eqz v9, :cond_6

    iget-boolean v12, v0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v12, :cond_6

    .line 906
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 907
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 908
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 911
    :cond_6
    iget-boolean v12, v0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v12, :cond_8

    .line 912
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 913
    .local v12, "outValue":Landroid/util/TypedValue;
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x1010031

    invoke-virtual {v14, v15, v12, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 915
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-lez v14, :cond_7

    .line 916
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v12, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 917
    .local v14, "backgroundColor":I
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v15, v6, v14}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    .line 918
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v15, v6, v14}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    .line 919
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15, v6, v14}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    .line 920
    .end local v14    # "backgroundColor":I
    goto :goto_6

    .line 921
    :cond_7
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 922
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 923
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 928
    .end local v12    # "outValue":Landroid/util/TypedValue;
    :cond_8
    :goto_6
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 933
    if-ne v5, v2, :cond_9

    .line 934
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {v0, v12}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_7

    .line 935
    :cond_9
    if-ne v5, v3, :cond_a

    .line 936
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {v0, v12}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_7

    .line 937
    :cond_a
    if-ne v5, v4, :cond_b

    .line 938
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {v0, v12}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 942
    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    move v12, v7

    goto :goto_8

    :cond_c
    move v12, v8

    .line 943
    .local v12, "hasButtons":Z
    :goto_8
    if-nez v12, :cond_d

    .line 944
    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 948
    :cond_d
    iget-boolean v13, v0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v13, :cond_14

    .line 949
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v14, 0x102057f

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 950
    .local v13, "divider1":Landroid/view/View;
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v15, 0x1020580

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 951
    .local v14, "divider2":Landroid/view/View;
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getVisibility()I

    move-result v15

    if-nez v15, :cond_e

    move v15, v7

    goto :goto_9

    :cond_e
    move v15, v8

    .line 952
    .local v15, "buttonNeutralVisible":Z
    :goto_9
    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    move v7, v8

    .line 953
    .local v7, "buttonPositiveVisible":Z
    :goto_a
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-nez v8, :cond_10

    const/16 v16, 0x1

    goto :goto_b

    :cond_10
    const/16 v16, 0x0

    :goto_b
    move/from16 v8, v16

    .line 955
    .local v8, "buttonNegativeVisible":Z
    if-eqz v14, :cond_13

    if-eqz v15, :cond_11

    if-nez v7, :cond_12

    :cond_11
    if-eqz v15, :cond_13

    if-eqz v8, :cond_13

    .line 957
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 960
    :cond_13
    if-eqz v13, :cond_14

    if-eqz v7, :cond_14

    if-eqz v8, :cond_14

    .line 961
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 965
    .end local v7    # "buttonPositiveVisible":Z
    .end local v8    # "buttonNegativeVisible":Z
    .end local v13    # "divider1":Landroid/view/View;
    .end local v14    # "divider2":Landroid/view/View;
    .end local v15    # "buttonNeutralVisible":Z
    :cond_14
    return-void
.end method

.method protected greylist-max-o setupContent(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 800
    const v0, 0x102050e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 801
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 804
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 805
    if-nez v0, :cond_0

    .line 806
    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 810
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1

    .line 816
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 819
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_0

    .line 822
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 825
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 827
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 828
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 829
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 831
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_0

    .line 832
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 835
    :cond_4
    :goto_0
    return-void
.end method

.method protected greylist-max-o setupTitle(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 752
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x1020644

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_0

    .line 754
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 757
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 760
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 761
    .local v1, "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 762
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_0

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 765
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 766
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_3

    .line 768
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x10201dc

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 769
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10503c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 776
    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v1, :cond_1

    .line 777
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 779
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 784
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 785
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 786
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 783
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 787
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 791
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 792
    .restart local v1    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 793
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 797
    .end local v0    # "hasTextTitle":Z
    .end local v1    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void
.end method
