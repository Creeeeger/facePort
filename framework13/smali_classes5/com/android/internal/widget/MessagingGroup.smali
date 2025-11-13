.class public Lcom/android/internal/widget/MessagingGroup;
.super Landroid/widget/LinearLayout;
.source "MessagingGroup.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingGroup$ImageDisplayLocation;
    }
.end annotation


# static fields
.field public static final blacklist IMAGE_DISPLAY_LOCATION_AT_END:I = 0x1

.field public static final blacklist IMAGE_DISPLAY_LOCATION_EXTERNAL:I = 0x2

.field public static final blacklist IMAGE_DISPLAY_LOCATION_INLINE:I

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAddedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAvatarContainer:Landroid/view/View;

.field private blacklist mAvatarIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mAvatarName:Ljava/lang/CharSequence;

.field private blacklist mAvatarSymbol:Ljava/lang/String;

.field private blacklist mAvatarView:Landroid/widget/ImageView;

.field private blacklist mCanHideSenderIfFirst:Z

.field private blacklist mClippingDisabled:Z

.field private blacklist mContentContainer:Landroid/widget/LinearLayout;

.field private blacklist mConversationAvatarSize:I

.field private blacklist mConversationContentStart:I

.field private blacklist mDisplaySize:Landroid/graphics/Point;

.field private blacklist mFirstLayout:Z

.field private blacklist mImageContainer:Landroid/view/ViewGroup;

.field private blacklist mImageDisplayLocation:I

.field private blacklist mIsFirstGroupInLayout:Z

.field private blacklist mIsHidingAnimated:Z

.field private blacklist mIsInConversation:Z

.field private blacklist mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

.field private blacklist mLayoutColor:I

.field private blacklist mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMessagingIconContainer:Landroid/view/ViewGroup;

.field private blacklist mNeedsGeneratedAvatar:Z

.field private blacklist mNonConversationAvatarSize:I

.field private blacklist mNonConversationContentStart:I

.field private blacklist mNonConversationPaddingStart:I

.field private blacklist mNotificationTextMarginTop:I

.field private blacklist mRequestedMaxDisplayedLines:I

.field private blacklist mSender:Landroid/app/Person;

.field private blacklist mSenderName:Ljava/lang/CharSequence;

.field private blacklist mSenderTextPaddingSingleLine:I

.field blacklist mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

.field private blacklist mSendingSpinner:Landroid/widget/ProgressBar;

.field private blacklist mSendingSpinnerContainer:Landroid/view/View;

.field private blacklist mSendingTextColor:I

.field private blacklist mShowingAvatar:Z

.field private blacklist mSingleLine:Z

.field private blacklist mTextColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddedMessages(Lcom/android/internal/widget/MessagingGroup;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 130
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 106
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 135
    return-void
.end method

.method private blacklist calculateSendingTextColor()I
    .locals 5

    .line 237
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 238
    .local v0, "alphaValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502a2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 240
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 241
    .local v1, "alpha":F
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 242
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 243
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 244
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    .line 241
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    .line 241
    return v2
.end method

.method static blacklist createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;
    .locals 4
    .param p0, "layout"    # Lcom/android/internal/widget/MessagingLinearLayout;

    .line 258
    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 259
    .local v0, "createdGroup":Lcom/android/internal/widget/MessagingGroup;
    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    .line 263
    sget-object v1, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 265
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 266
    return-object v0
.end method

.method public static blacklist dropCache()V
    .locals 1

    .line 344
    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    .line 345
    return-void
.end method

.method private blacklist getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 5
    .param p1, "searchedView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "position":I
    move-object v1, p1

    .line 190
    .local v1, "view":Landroid/view/View;
    :goto_0
    if-eq v1, p2, :cond_0

    .line 191
    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 194
    :cond_0
    return v0
.end method

.method static synthetic blacklist lambda$removeMessage$0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V
    .locals 0
    .param p0, "messageParent"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "messagingMessage"    # Lcom/android/internal/widget/MessagingMessage;

    .line 281
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 282
    invoke-interface {p2}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 283
    return-void
.end method

.method private blacklist performRemoveAnimation(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "disappearTranslation"    # I
    .param p3, "endAction"    # Ljava/lang/Runnable;

    .line 334
    sget-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startLocalTranslationTo(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    .line 336
    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method private blacklist removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/internal/widget/MessagingMessage;
    .param p2, "newParent"    # Landroid/view/ViewGroup;

    .line 580
    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 581
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p2, :cond_1

    .line 582
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 583
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 585
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 587
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist setIsHidingAnimated(Z)V
    .locals 2
    .param p1, "isHiding"    # Z

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 448
    .local v0, "parent":Landroid/view/ViewParent;
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsHidingAnimated:Z

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->invalidate()V

    .line 450
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 451
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 453
    :cond_0
    return-void
.end method

.method private blacklist updateImageContainerVisibility()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    .line 571
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 572
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 570
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 573
    return-void
.end method

.method private blacklist updateMaxDisplayedLines()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 404
    return-void
.end method

.method private blacklist updateMessageColor()V
    .locals 5

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingTextColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 498
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 503
    .local v2, "message":Lcom/android/internal/widget/MessagingMessage;
    const/4 v3, 0x0

    .line 505
    .local v3, "msg":Landroid/app/Notification$MessagingStyle$Message;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 510
    nop

    .line 511
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    iget v4, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    :goto_2
    invoke-interface {v2, v4}, Lcom/android/internal/widget/MessagingMessage;->setColor(I)V

    .line 513
    .end local v2    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v3    # "msg":Landroid/app/Notification$MessagingStyle$Message;
    goto :goto_1

    .line 506
    .restart local v2    # "message":Lcom/android/internal/widget/MessagingMessage;
    .restart local v3    # "msg":Landroid/app/Notification$MessagingStyle$Message;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 509
    return-void

    .line 515
    .end local v0    # "color":I
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v3    # "msg":Landroid/app/Notification$MessagingStyle$Message;
    :cond_2
    return-void
.end method

.method private blacklist updateSenderVisibility()V
    .locals 3

    .line 436
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 438
    .local v0, "hidden":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ImageFloatingTextView;->setVisibility(I)V

    .line 439
    return-void
.end method


# virtual methods
.method public blacklist calculateGroupCompatibility(Lcom/android/internal/widget/MessagingGroup;)I
    .locals 5
    .param p1, "otherGroup"    # Lcom/android/internal/widget/MessagingGroup;

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    const/4 v0, 0x1

    .line 630
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    .line 632
    .local v2, "ownMessage":Lcom/android/internal/widget/MessagingMessage;
    iget-object v3, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    .line 633
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    .line 632
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingMessage;

    .line 634
    .local v3, "otherMessage":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Lcom/android/internal/widget/MessagingMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 635
    return v0

    .line 637
    :cond_0
    nop

    .end local v2    # "ownMessage":Lcom/android/internal/widget/MessagingMessage;
    .end local v3    # "otherMessage":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v0, v0, 0x1

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 641
    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAvatar()Landroid/view/View;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public blacklist getAvatarIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p1, "avatarName"    # Ljava/lang/CharSequence;
    .param p2, "avatarSymbol"    # Ljava/lang/String;
    .param p3, "layoutColor"    # I

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-ne p3, v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    .line 466
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConsumedLines()I
    .locals 4

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 387
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v3, :cond_0

    .line 388
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v3

    add-int/2addr v0, v3

    .line 385
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move v0, v1

    .line 393
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public blacklist getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    return-object v0
.end method

.method public blacklist getMeasuredType()I
    .locals 9

    .line 349
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 352
    return v1

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 355
    .local v0, "hasNormal":Z
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_7

    .line 356
    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 357
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 358
    goto :goto_1

    .line 360
    :cond_1
    instance-of v5, v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v5, :cond_6

    .line 361
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v5}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v5

    .line 362
    .local v5, "type":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v3, v1

    .line 363
    .local v3, "tooSmall":Z
    :cond_2
    nop

    .line 364
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 365
    .local v7, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v8, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    or-int/2addr v3, v8

    .line 366
    if-eqz v3, :cond_4

    .line 367
    if-eqz v0, :cond_3

    .line 368
    return v1

    .line 370
    :cond_3
    return v6

    .line 372
    :cond_4
    if-ne v5, v1, :cond_5

    .line 373
    return v1

    .line 375
    :cond_5
    const/4 v0, 0x1

    .line 355
    .end local v3    # "tooSmall":Z
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "type":I
    .end local v7    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    :cond_7
    return v3
.end method

.method public blacklist getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSender()Landroid/app/Person;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSender:Landroid/app/Person;

    return-object v0
.end method

.method public blacklist getSenderName()Ljava/lang/CharSequence;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getSenderView()Landroid/widget/TextView;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    return-object v0
.end method

.method public blacklist hasDifferentHeightWhenFirst()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 1

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideAnimated()V
    .locals 1

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsHidingAnimated(Z)V

    .line 409
    new-instance v0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public blacklist isHidingAnimated()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsHidingAnimated:Z

    return v0
.end method

.method public blacklist isSingleLine()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    return v0
.end method

.method synthetic blacklist lambda$hideAnimated$2$com-android-internal-widget-MessagingGroup()V
    .locals 1

    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsHidingAnimated(Z)V

    return-void
.end method

.method synthetic blacklist lambda$removeGroupAnimated$1$com-android-internal-widget-MessagingGroup(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .line 321
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAlpha(F)V

    .line 322
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setToLaidOutPosition(Landroid/view/View;)V

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 326
    :cond_0
    return-void
.end method

.method public blacklist needsGeneratedAvatar()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 4

    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 140
    const v0, 0x1020330

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 141
    const v0, 0x10203fc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ImageFloatingTextView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    .line 142
    const v0, 0x10203fa

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    .line 143
    const v0, 0x10203ff

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    .line 144
    const v0, 0x1020400

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinner:Landroid/widget/ProgressBar;

    .line 145
    const v0, 0x10203fb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    .line 146
    const v0, 0x10203fe

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    .line 147
    const v0, 0x1020401

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 150
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 151
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 152
    const v2, 0x105022f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderTextPaddingSingleLine:I

    .line 154
    const v2, 0x10500f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationContentStart:I

    .line 155
    const v2, 0x1050261

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationContentStart:I

    .line 157
    const v2, 0x1050234

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationPaddingStart:I

    .line 159
    const v2, 0x105022d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationAvatarSize:I

    .line 160
    const v2, 0x105028b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationAvatarSize:I

    .line 162
    const v2, 0x10502a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNotificationTextMarginTop:I

    .line 164
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 592
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 593
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    .line 595
    .local v0, "firstLayout":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/MessagingGroup$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/MessagingGroup$1;-><init>(Lcom/android/internal/widget/MessagingGroup;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 615
    .end local v0    # "firstLayout":Z
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    .line 616
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    .line 617
    return-void
.end method

.method public blacklist performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "message"    # Landroid/view/View;
    .param p2, "endAction"    # Ljava/lang/Runnable;

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public blacklist recycle()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 295
    .local v1, "message":Lcom/android/internal/widget/MessagingMessage;
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 296
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 293
    .end local v1    # "message":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 300
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setAlpha(F)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ImageFloatingTextView;->setTranslationY(F)V

    .line 303
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MessagingGroup;->setAlpha(F)V

    .line 304
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    .line 305
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    .line 306
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingGroup;->setCanHideSenderIfFirst(Z)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsFirstInLayout(Z)V

    .line 312
    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MessagingGroup;->setMaxDisplayedLines(I)V

    .line 313
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 315
    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->recycle(Landroid/view/View;)V

    .line 316
    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    .line 317
    return-void
.end method

.method public blacklist removeGroupAnimated(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "endAction"    # Ljava/lang/Runnable;

    .line 320
    new-instance v0, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public blacklist removeMessage(Lcom/android/internal/widget/MessagingMessage;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "messagingMessage"    # Lcom/android/internal/widget/MessagingMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/MessagingMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p2, "toRecycle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;>;"
    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    .line 273
    .local v1, "wasShown":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 274
    .local v2, "messageParent":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 280
    new-instance v3, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v0, p1}, Lcom/android/internal/widget/MessagingGroup$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_0
    return-void
.end method

.method public blacklist setAvatar(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 249
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    .line 250
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 253
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 255
    return-void
.end method

.method public blacklist setCanHideSenderIfFirst(Z)V
    .locals 1
    .param p1, "canHide"    # Z

    .line 429
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    if-eq v0, p1, :cond_0

    .line 430
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mCanHideSenderIfFirst:Z

    .line 431
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 433
    :cond_0
    return-void
.end method

.method public blacklist setClippingDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .line 673
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mClippingDisabled:Z

    .line 674
    return-void
.end method

.method public blacklist setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cachedIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "avatarName"    # Ljava/lang/CharSequence;
    .param p3, "avatarSymbol"    # Ljava/lang/String;
    .param p4, "layoutColor"    # I

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-eq p4, v0, :cond_1

    .line 473
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    .line 474
    iput-object p3, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    .line 475
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 476
    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    .line 478
    :cond_1
    return-void
.end method

.method public blacklist setImageDisplayLocation(I)V
    .locals 1
    .param p1, "displayLocation"    # I

    .line 677
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    if-eq v0, p1, :cond_0

    .line 678
    iput p1, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    .line 679
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateImageContainerVisibility()V

    .line 681
    :cond_0
    return-void
.end method

.method public blacklist setIsFirstInLayout(Z)V
    .locals 1
    .param p1, "first"    # Z

    .line 419
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    if-eq p1, v0, :cond_0

    .line 420
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsFirstGroupInLayout:Z

    .line 421
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 423
    :cond_0
    return-void
.end method

.method public blacklist setIsInConversation(Z)V
    .locals 5
    .param p1, "isInConversation"    # Z

    .line 720
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    if-eq v0, p1, :cond_3

    .line 721
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    .line 722
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    .line 723
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 724
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    if-eqz v1, :cond_0

    .line 725
    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationContentStart:I

    goto :goto_0

    .line 726
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationContentStart:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 727
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationPaddingStart:I

    .line 729
    .local v2, "imagePaddingStart":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1, v1, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 731
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 732
    .local v1, "avatarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v3, p0, Lcom/android/internal/widget/MessagingGroup;->mIsInConversation:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mConversationAvatarSize:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mNonConversationAvatarSize:I

    .line 733
    .local v3, "size":I
    :goto_2
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 734
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 735
    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "avatarLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "imagePaddingStart":I
    .end local v3    # "size":I
    :cond_3
    return-void
.end method

.method public blacklist setLayoutColor(I)V
    .locals 2
    .param p1, "layoutColor"    # I

    .line 488
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-eq p1, v0, :cond_0

    .line 489
    iput p1, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    .line 490
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinner:Landroid/widget/ProgressBar;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 492
    :cond_0
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 398
    iput p1, p0, Lcom/android/internal/widget/MessagingGroup;->mRequestedMaxDisplayedLines:I

    .line 399
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMaxDisplayedLines()V

    .line 400
    return-void
.end method

.method public blacklist setMessages(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;)V"
        }
    .end annotation

    .line 519
    .local p1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v0, 0x0

    .line 520
    .local v0, "textMessageIndex":I
    const/4 v1, 0x0

    .line 521
    .local v1, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    const/4 v2, 0x0

    .local v2, "messageIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 522
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingMessage;

    .line 523
    .local v3, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 524
    invoke-interface {v3, p0}, Lcom/android/internal/widget/MessagingMessage;->setMessagingGroup(Lcom/android/internal/widget/MessagingGroup;)V

    .line 525
    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_0
    instance-of v4, v3, Lcom/android/internal/widget/MessagingImageMessage;

    .line 528
    .local v4, "isImage":Z
    iget v5, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 529
    move-object v1, v3

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    goto :goto_1

    .line 531
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-direct {p0, v3, v5}, Lcom/android/internal/widget/MessagingGroup;->removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 532
    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 533
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_2

    instance-of v6, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-nez v6, :cond_2

    .line 535
    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 536
    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v7

    .line 535
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 540
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    if-eqz v4, :cond_4

    .line 541
    move-object v5, v3

    check-cast v5, Lcom/android/internal/widget/MessagingImageMessage;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MessagingImageMessage;->setIsolated(Z)V

    .line 544
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-eq v0, v5, :cond_5

    .line 545
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 546
    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 548
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 521
    .end local v3    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v4    # "isImage":Z
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "messageIndex":I
    :cond_6
    if-eqz v1, :cond_9

    .line 552
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    .line 553
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 554
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 555
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 556
    :cond_7
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageDisplayLocation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    .line 557
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 559
    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/MessagingImageMessage;->setIsolated(Z)V

    goto :goto_3

    .line 560
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v2, :cond_a

    .line 561
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 563
    :cond_a
    :goto_3
    iput-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    .line 564
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateImageContainerVisibility()V

    .line 565
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    .line 566
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    .line 567
    return-void
.end method

.method public blacklist setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "sender"    # Landroid/app/Person;
    .param p2, "nameOverride"    # Ljava/lang/CharSequence;

    .line 198
    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mSender:Landroid/app/Person;

    .line 199
    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p2

    .line 202
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Ljava/lang/CharSequence;

    .line 203
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10403c9

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/ImageFloatingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    .line 209
    if-nez v1, :cond_3

    .line 210
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    .line 212
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 213
    return-void
.end method

.method public blacklist setSending(Z)V
    .locals 2
    .param p1, "sending"    # Z

    .line 229
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 230
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    .line 234
    :cond_1
    return-void
.end method

.method public blacklist setShowingAvatar(Z)V
    .locals 4
    .param p1, "showingAvatar"    # Z

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessagingIconContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 225
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mShowingAvatar:Z

    .line 226
    return-void
.end method

.method public blacklist setSingleLine(Z)V
    .locals 4
    .param p1, "singleLine"    # Z

    .line 694
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eq p1, v0, :cond_2

    .line 695
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    .line 696
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 697
    .local v0, "p":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mNotificationTextMarginTop:I

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 698
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    .line 700
    nop

    .line 699
    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 701
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 702
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderTextPaddingSingleLine:I

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 703
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setSingleLine(Z)V

    .line 704
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMaxDisplayedLines()V

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    .line 706
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateSenderVisibility()V

    .line 708
    .end local v0    # "p":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    return-void
.end method

.method public blacklist setTextColors(II)V
    .locals 1
    .param p1, "senderTextColor"    # I
    .param p2, "messageTextColor"    # I

    .line 481
    iput p2, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    .line 482
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->calculateSendingTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingTextColor:I

    .line 483
    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setTextColor(I)V

    .line 485
    return-void
.end method

.method public blacklist updateClipRect()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ImageFloatingTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mClippingDisabled:Z

    if-nez v0, :cond_1

    .line 172
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSingleLine:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .local v0, "top":I
    goto :goto_0

    .line 175
    .end local v0    # "top":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/MessagingGroup;->getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mContentContainer:Landroid/widget/LinearLayout;

    .line 176
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderView:Lcom/android/internal/widget/ImageFloatingTextView;

    .line 177
    invoke-virtual {v1}, Lcom/android/internal/widget/ImageFloatingTextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    .restart local v0    # "top":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 180
    .local v1, "size":I
    new-instance v2, Landroid/graphics/Rect;

    neg-int v3, v1

    invoke-direct {v2, v3, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    .line 181
    .end local v1    # "size":I
    .local v0, "clipRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 182
    .end local v0    # "clipRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    .line 184
    .restart local v0    # "clipRect":Landroid/graphics/Rect;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 185
    return-void
.end method
