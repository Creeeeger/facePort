.class public final Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public final mAlertDialogLayout:I

.field public final mButtonHandler:Landroidx/appcompat/app/AlertController$1;

.field public final mButtonIconDimen:I

.field public mButtonNegative:Landroid/widget/Button;

.field public mButtonNeutral:Landroid/widget/Button;

.field public mButtonPositive:Landroid/widget/Button;

.field public mCheckedItem:I

.field public final mContext:Landroid/content/Context;

.field public mCustomTitleView:Landroid/view/View;

.field public final mDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public mIconView:Landroid/widget/ImageView;

.field public final mListItemLayout:I

.field public final mListLayout:I

.field public mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public mMessageView:Landroid/widget/TextView;

.field public mScrollView:Landroidx/core/widget/NestedScrollView;

.field public final mShowTitle:Z

.field public final mSingleChoiceItemLayout:I

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleView:Landroid/widget/TextView;

.field public final mViewSpacingSpecified:Z

.field public final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/view/Window;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 9
    .line 10
    new-instance v1, Landroidx/appcompat/app/AlertController$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$1;-><init>(Landroidx/appcompat/app/AlertController;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroidx/appcompat/app/AlertController$1;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 20
    .line 21
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 22
    .line 23
    new-instance p3, Landroidx/appcompat/app/AlertController$ButtonHandler;

    .line 24
    .line 25
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p3, Landroidx/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

    .line 36
    .line 37
    sget-object p3, Landroidx/appcompat/R$styleable;->AlertDialog:[I

    .line 38
    .line 39
    const v1, 0x7f040028

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 52
    .line 53
    const/4 p3, 0x2

    .line 54
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 55
    .line 56
    .line 57
    const/4 p3, 0x4

    .line 58
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListLayout:I

    .line 63
    .line 64
    const/4 p3, 0x5

    .line 65
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 66
    .line 67
    .line 68
    const/4 p3, 0x7

    .line 69
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 74
    .line 75
    const/4 p3, 0x3

    .line 76
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 81
    .line 82
    const/4 p3, 0x6

    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    instance-of p0, p1, Landroid/view/ViewStub;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroid/view/ViewStub;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    check-cast p0, Landroid/view/ViewStub;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    .line 42
    .line 43
    return-object p0
.end method
