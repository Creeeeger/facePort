.class public Lcom/android/internal/widget/ConversationLayout;
.super Landroid/widget/FrameLayout;
.source "ConversationLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;
    }
.end annotation


# static fields
.field public static final blacklist FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist IMPORTANCE_ANIM_GROW_DURATION:I = 0xfa

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DELAY:I = 0x19

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DURATION:I = 0xc8

.field public static final blacklist LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

.field public static final blacklist OVERSHOOT:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field private blacklist mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAddedQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppName:Lcom/android/internal/widget/ObservableTextView;

.field private blacklist mAppNameDivider:Landroid/view/View;

.field private blacklist mAppNameGone:Z

.field private blacklist mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private blacklist mBadgeProtrusion:I

.field private blacklist mContentContainer:Landroid/view/View;

.field private blacklist mContentMarginEnd:I

.field private blacklist mConversationAvatarSize:I

.field private blacklist mConversationAvatarSizeExpanded:I

.field private blacklist mConversationBadgeMargin:I

.field private blacklist mConversationBadgeMarginExpanded:I

.field private blacklist mConversationBadgeSize:I

.field private blacklist mConversationBadgeSizeExpanded:I

.field private blacklist mConversationFacePile:Landroid/view/View;

.field private blacklist mConversationHeader:Landroid/view/View;

.field private blacklist mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

.field private blacklist mConversationIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mConversationIconBadge:Landroid/view/View;

.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconContainer:Landroid/view/View;

.field private blacklist mConversationIconTopPadding:I

.field private blacklist mConversationIconTopPaddingExpandedGroup:I

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationMinHeight:I

.field private blacklist mConversationStartMargin:I

.field private blacklist mConversationText:Landroid/widget/TextView;

.field private blacklist mConversationTitle:Ljava/lang/CharSequence;

.field private blacklist mConversationTopMargin:I

.field private blacklist mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private blacklist mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

.field private blacklist mExpandButtonContainer:Landroid/view/View;

.field private blacklist mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

.field private blacklist mExpandable:Z

.field private blacklist mExpandedGroupBadgeProtrusion:I

.field private blacklist mExpandedGroupBadgeProtrusionFacePile:I

.field private blacklist mExpandedGroupMessagePadding:I

.field private blacklist mFacePileAvatarSize:I

.field private blacklist mFacePileAvatarSizeExpandedGroup:I

.field private blacklist mFacePileProtectionWidth:I

.field private blacklist mFacePileProtectionWidthExpanded:I

.field private blacklist mFallbackChatName:Ljava/lang/CharSequence;

.field private blacklist mFallbackGroupChatName:Ljava/lang/CharSequence;

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private blacklist mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private blacklist mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImportantConversation:Z

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsOneToOne:Z

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private blacklist mMessageSpacingGroup:I

.field private blacklist mMessageSpacingStandard:I

.field private blacklist mMessageTextColor:I

.field private blacklist mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMessagingClipRect:Landroid/graphics/Rect;

.field private blacklist mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mMinTouchSize:F

.field private blacklist mNameReplacement:Ljava/lang/CharSequence;

.field private blacklist mNotificationBackgroundColor:I

.field private blacklist mNotificationHeaderExpandedPadding:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mPrecomputedTextEnabled:Z

.field private blacklist mSenderTextColor:I

.field private blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mShowHistoricMessages:Z

.field private blacklist mToRecycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$BNjQhXP-5aUYoQz14QmKl9PDSp4(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BlE74vFu-NXsDoWSZK2KfSlAweo(Lcom/android/internal/widget/ConversationLayout;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setDataAsync$5(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MNVS9E18WS9ZAx7ms3fw_u8Bq7A(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$removeGroups$10(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QiutNd40_d9yY7xMtqvn6Y22kQ4(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setShortcutIconAsync$8(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$S_9z6spairVf2ABxvBIpqs1dF4k(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UpZBe4fK3Mkpi3PiVi3N-_ZXrKc(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setDataAsync$6(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WzkgrNjBzjRkFbT2s60Ni0YZvfI(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jkZm4TKCEk79jbBaNak6c7LHlrQ(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setLargeIconAsync$7(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kjfdbUt03rnmGgKDl1Q8gXF02A0(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m-6GV39jvtHC9VSXgbIKWmV1q5g(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mvzJyzQjnCESFXcJaWDKwmrU158(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setConversationTitleAsync$9(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qsOL2BFT4wGiuS1zvFDd1hAEMfA(Lcom/android/internal/widget/ConversationLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setLayoutColorAsync$11(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r3oof_NvmJXdmoKxMldrEEGHB5A(Lcom/android/internal/widget/ConversationLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsOneToOneAsync$12(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddedQueue(Lcom/android/internal/widget/ConversationLayout;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method private blacklist addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;[",
            "Landroid/app/RemoteInputHistoryItem;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget-object v1, p2, v0

    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, v6

    check-cast v2, Landroid/app/Person;

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist applyNotificationBackgroundColor(Landroid/widget/ImageView;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private blacklist bind(Lcom/android/internal/widget/MessagingData;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUser()Landroid/app/Person;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setUser(Landroid/app/Person;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUnreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setUnreadCount(I)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getSenders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getShowSpinner()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/ConversationLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->removeGroups(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateTitleAndNamesDisplay()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->updateConversationLayout(Lcom/android/internal/widget/MessagingData;)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v2}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->recycle()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private blacklist bindFacePile()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    return-void
.end method

.method private blacklist bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v1, 0x1020290

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v2, 0x102028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v3, 0x1020291

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/widget/ConversationLayout;->bindFacePileWithDrawable(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blacklist computeAndSetConversationAvatarAndName()V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez v2, :cond_4

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v7, ""

    iget v8, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :cond_3
    iput-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x102028e

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile()V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    :goto_4
    move-object v0, v1

    :cond_a
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist createGroupViews(Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v5}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v5, 0xa

    if-ge v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v5, :cond_9

    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_5

    :cond_6
    move v7, v5

    :goto_5
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_7

    if-eqz p3, :cond_7

    goto :goto_6

    :cond_7
    move v4, v5

    :goto_6
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_8

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    :cond_8
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "group parent was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    return-void
.end method

.method private blacklist createMessages(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-static {p0, v2, v4, p3}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;Z)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    :cond_0
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist finalizeInflate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->finalizeInflate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findGroups(Ljava/util/List;Ljava/util/List;Landroid/app/Person;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Landroid/app/Person;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_5

    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    goto :goto_1

    :cond_0
    sub-int v4, v3, v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    :goto_1
    const/4 v5, 0x1

    if-nez v1, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    :goto_3
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v5, v9

    or-int/2addr v5, v6

    if-eqz v5, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_3

    move-object v6, p3

    move-object v7, v6

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v6

    move-object v7, v6

    :goto_4
    invoke-interface {p5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v8

    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static blacklist getFontScaledMarginHeight(Landroid/content/Context;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    int-to-float v1, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    return v1
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$0(Ljava/lang/Integer;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eq v5, v0, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    move v5, v6

    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    if-nez v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_5

    move v6, v1

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    if-eq v5, v6, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v7}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eq v1, v0, :cond_8

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$1(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$2(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinishInflate$3(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->onAppNameVisibilityChanged()V

    return-void
.end method

.method private synthetic blacklist lambda$removeGroups$10(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    return-void
.end method

.method private synthetic blacklist lambda$setConversationTitleAsync$9(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setConversationTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$5(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$6(Lcom/android/internal/widget/MessagingData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->finalizeInflate(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->finalizeInflate(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method private synthetic blacklist lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    return-void
.end method

.method private synthetic blacklist lambda$setIsOneToOneAsync$12(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setIsOneToOne(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setLargeIconAsync$7(Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setLargeIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private synthetic blacklist lambda$setLayoutColorAsync$11(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setLayoutColor(I)V

    return-void
.end method

.method private synthetic blacklist lambda$setShortcutIconAsync$8(Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setShortcutIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private blacklist loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Landroid/app/Person;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;I)",
            "Lcom/android/internal/widget/ConversationHeaderData;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    invoke-direct {v0, v5}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, ""

    if-eqz p1, :cond_7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    :goto_0
    if-ltz v9, :cond_6

    move-object/from16 v10, p5

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v11}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v12, :cond_0

    if-ne v13, v6, :cond_1

    :cond_0
    if-nez v9, :cond_5

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_4

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_1

    :cond_3
    move-object v14, v8

    :goto_1
    move-object v4, v14

    :cond_4
    if-nez v3, :cond_8

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v12}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    if-nez v14, :cond_8

    iget-object v14, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v14, v4, v8, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_6
    move-object/from16 v10, p5

    goto :goto_2

    :cond_7
    move-object/from16 v10, p5

    :cond_8
    :goto_2
    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    if-nez v3, :cond_a

    move-object/from16 v3, p4

    :cond_a
    if-nez p1, :cond_1c

    if-eqz v3, :cond_b

    move-object/from16 v18, v6

    goto/16 :goto_e

    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_3
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_d

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_4
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_c

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_c
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_d
    iget-object v11, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v11, v9}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefixWithGroupList(Ljava/util/List;)Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v7

    :goto_5
    if-ltz v15, :cond_19

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v7}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    goto :goto_6

    :cond_e
    move-object/from16 v16, v5

    :goto_6
    move-object/from16 v17, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eq v5, v6, :cond_f

    const/16 v17, 0x1

    goto :goto_7

    :cond_f
    const/16 v17, 0x0

    :goto_7
    if-eq v5, v14, :cond_10

    const/16 v16, 0x1

    goto :goto_8

    :cond_10
    const/16 v16, 0x0

    :goto_8
    if-eqz v17, :cond_11

    if-nez v16, :cond_12

    :cond_11
    if-nez v15, :cond_18

    if-nez v14, :cond_18

    :cond_12
    if-nez v12, :cond_15

    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v18

    if-eqz v18, :cond_13

    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    goto :goto_a

    :cond_13
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_14

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v18

    goto :goto_9

    :cond_14
    move-object/from16 v18, v8

    :goto_9
    move-object/from16 v19, v18

    move-object/from16 v18, v6

    iget-object v6, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v9

    invoke-virtual {v11, v7}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    :goto_a
    move-object v6, v5

    move-object v14, v6

    goto :goto_c

    :cond_15
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    goto :goto_d

    :cond_16
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_b

    :cond_17
    move-object v6, v8

    :goto_b
    iget-object v7, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v11, v6}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    goto :goto_d

    :cond_18
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    :goto_c
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v5, p6

    move-object/from16 v1, p7

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_19
    move-object/from16 v18, v6

    move-object/from16 v19, v9

    :goto_d
    if-nez v12, :cond_1a

    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v8, v8, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    :cond_1a
    if-nez v13, :cond_1b

    iget-object v1, v0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v8, v8, v2}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    :cond_1b
    new-instance v1, Lcom/android/internal/widget/ConversationHeaderData;

    new-instance v5, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    invoke-direct {v0, v12}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v0, v13}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v4, v5}, Lcom/android/internal/widget/ConversationHeaderData;-><init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V

    return-object v1

    :cond_1c
    move-object/from16 v18, v6

    :goto_e
    new-instance v1, Lcom/android/internal/widget/ConversationHeaderData;

    new-instance v5, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/ConversationLayout;->resolveAvatarImageForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v4, v5}, Lcom/android/internal/widget/ConversationHeaderData;-><init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V

    return-object v1
.end method

.method private blacklist loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist onAppNameVisibilityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    :cond_1
    return-void
.end method

.method private blacklist parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    const-string v0, "android.messages"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v16

    nop

    invoke-static/range {v16 .. v16}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v12

    const-string v0, "android.messages.historic"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v17

    nop

    invoke-static/range {v17 .. v17}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v11

    const-string v0, "android.messagingUser"

    const-class v1, Landroid/app/Person;

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/app/Person;

    const-class v0, Landroid/app/RemoteInputHistoryItem;

    const-string v1, "android.remoteInputHistoryItems"

    invoke-virtual {v14, v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/app/RemoteInputHistoryItem;

    invoke-direct {v15, v12, v10}, Lcom/android/internal/widget/ConversationLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    nop

    const-string v0, "android.remoteInputSpinner"

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v0, "android.conversationUnreadMessageCount"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    nop

    invoke-direct {v15, v12, v1, v13}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v30

    nop

    const/4 v0, 0x1

    invoke-direct {v15, v11, v0, v13}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v31

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    move-object/from16 v3, v27

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ConversationLayout;->findGroups(Ljava/util/List;Ljava/util/List;Landroid/app/Person;Ljava/util/List;Ljava/util/List;)V

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v7, v15, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    iget-object v8, v15, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    iget-object v9, v15, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, v15, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget v1, v15, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    move-object/from16 v6, p0

    move-object v2, v10

    move-object v10, v0

    move-object v0, v11

    move-object/from16 v11, v30

    move-object v3, v12

    move-object/from16 v12, v27

    move-object v13, v4

    move v14, v1

    invoke-direct/range {v6 .. v14}, Lcom/android/internal/widget/ConversationLayout;->loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v2, v10

    move-object v0, v11

    move-object v3, v12

    const/4 v1, 0x0

    :goto_0
    new-instance v6, Lcom/android/internal/widget/MessagingData;

    move-object/from16 v18, v6

    move-object/from16 v19, v27

    move/from16 v20, v28

    move/from16 v21, v29

    move-object/from16 v22, v31

    move-object/from16 v23, v30

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v1

    invoke-direct/range {v18 .. v26}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;)V

    return-object v6
.end method

.method private blacklist removeGroups(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    new-instance v5, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist resolveAvatarImageForFacePile(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist resolveAvatarImageForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 2

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->tryLoadingSizeRestrictedIconForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->loadDrawableFromIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist setConversationAvatarAndNameFromData(Lcom/android/internal/widget/ConversationHeaderData;)V
    .locals 7

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    nop

    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationHeaderData;->getConversationAvatar()Lcom/android/internal/widget/ConversationAvatarData;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v4, v1, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x102028e

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationHeaderData;->getConversationText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    :goto_2
    move-object v3, v4

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x108070d

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    :cond_0
    return-void
.end method

.method private blacklist tryLoadingSizeRestrictedIconForOneToOne(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist updateActionListPadding()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    const v1, 0x1050077

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setCollapsibleIndentDimen(I)V

    :cond_0
    return-void
.end method

.method private blacklist updateAppName()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setVisibility(I)V

    return-void
.end method

.method private blacklist updateAppNameDividerVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private blacklist updateContentEndPaddings()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private blacklist updateConversationLayout(Lcom/android/internal/widget/MessagingData;)V
    .locals 10

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->computeAndSetConversationAvatarAndName()V

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/widget/ConversationLayout;->loadConversationHeaderData(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/List;Landroid/app/Person;Ljava/util/List;I)Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setConversationAvatarAndNameFromData(Lcom/android/internal/widget/ConversationHeaderData;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppName()V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateIconPositionAndSize()V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateImageMessages()V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updatePaddingsBasedOnContentAvailability()V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateActionListPadding()V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    return-void
.end method

.method private blacklist updateExpandButton()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationMinHeight:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->setMinimumHeight(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationExpandButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/NotificationActionListLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTopMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_2
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTopMargin:I

    :goto_1
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_2
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blacklist updateHistoricMessageVisibility()V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-interface {v4, v2}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v10}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    if-lez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-ne v9, v3, :cond_4

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_4

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_5

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private blacklist updateIconPositionAndSize()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    :goto_0
    nop

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    iget v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeSizeExpanded:I

    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeMarginExpanded:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    iget v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeSize:I

    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeMargin:I

    :goto_2
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/CachingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private blacklist updateImageMessages()V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    return-void
.end method

.method private blacklist updatePaddingsBasedOnContentAvailability()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setSpacing(I)V

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    nop

    iget-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    goto :goto_4

    :cond_4
    :goto_3
    iget v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    :goto_4
    nop

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->setPaddingRelative(IIII)V

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationStartMargin:I

    :goto_6
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blacklist updateTitleAndNamesDisplay()V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_1

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public blacklist bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 11

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v8}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v6

    goto :goto_1

    :cond_0
    move v9, v0

    :goto_1
    if-eqz v8, :cond_1

    invoke-direct {p0, v8}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v6

    goto :goto_2

    :cond_1
    move v10, v0

    :goto_2
    if-eqz v9, :cond_2

    if-nez v10, :cond_3

    :cond_2
    if-nez v5, :cond_5

    if-nez v2, :cond_5

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-direct {p0, v8}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    :goto_4
    const-string v0, ""

    if-nez v3, :cond_7

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v6, " "

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v5, v6, v0, v7}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    :cond_7
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    if-nez v1, :cond_8

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v5, v0, v0, v6}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    :cond_8
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public blacklist bindFacePileWithDrawable(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    iget-object v0, p4, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mLastIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p4, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mSecondLastIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    return-object v0
.end method

.method public blacklist getConversationIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getConversationSenderName()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403f7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getConversationText()Ljava/lang/CharSequence;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    nop

    if-nez v1, :cond_2

    instance-of v2, v0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v2, :cond_2

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    :cond_2
    return-object v1
.end method

.method public blacklist getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageMessageContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist getMessagingGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist isImportantConversation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    return v0
.end method

.method public blacklist isOneToOne()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    const v0, 0x1020462

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const v0, 0x10201cf

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    const v0, 0x1020298

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->setMessagingClippingDisabled(Z)V

    const v2, 0x1020293

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    const v2, 0x1020297

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    const v2, 0x10202ec

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    const v2, 0x1020296

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    const v2, 0x1020294

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    const v2, 0x1020295

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    const v2, 0x1020299

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    const v2, 0x10202dd

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    nop

    const v2, 0x10202db

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

    const v2, 0x1020292

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    const v2, 0x102044f

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    const v2, 0x10202dc

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    const v2, 0x10202da

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050326

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050327

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050139

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050128

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050126

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050127

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeSize:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeSizeExpanded:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeMargin:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationBadgeMarginExpanded:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050192

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050129

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105012a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    const v2, 0x102028e

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050135

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050136

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050137

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050138

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10403f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10403f8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    const v2, 0x10201fa

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ObservableTextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    const v2, 0x10201f9

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    new-instance v3, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ObservableTextView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationStartMargin:I

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContext:Landroid/content/Context;

    const v3, 0x1050134

    invoke-static {v2, v3}, Lcom/android/internal/widget/ConversationLayout;->getFontScaledMarginHeight(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTopMargin:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationMinHeight:I

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ConversationLayout;->getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v4, Landroid/view/TouchDelegate;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {v4, v2, v5}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->add(Landroid/view/TouchDelegate;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method public blacklist setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public blacklist setConversationTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setConversationTitleAsync"
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setConversationTitleAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/ConversationLayout;->parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    nop

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/widget/ConversationLayout;->parseMessagingData(Landroid/os/Bundle;ZZ)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingData;)V

    return-object v1
.end method

.method public blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateExpandButton()V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    return-void
.end method

.method public blacklist setIsImportantConversation(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V

    return-void
.end method

.method public blacklist setIsImportantConversation(ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v5, v0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060212

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501d6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501d7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105013e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    new-instance v11, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0, v2, v5, v9}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    int-to-float v12, v7

    const/4 v13, 0x2

    new-array v14, v13, [F

    const/4 v15, 0x0

    aput v15, v14, v4

    const/4 v15, 0x1

    aput v12, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    sget-object v14, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v16, v5

    const-wide/16 v4, 0xfa

    invoke-virtual {v12, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-float v4, v7

    int-to-float v5, v6

    new-array v14, v13, [F

    const/16 v17, 0x0

    aput v4, v14, v17

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v13, 0xc8

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v13, 0x19

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v13, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v13, Lcom/android/internal/widget/ConversationLayout$1;

    invoke-direct {v13, v0, v3, v9, v10}, Lcom/android/internal/widget/ConversationLayout$1;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v12, v14, v4

    aput-object v5, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public blacklist setIsOneToOne(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setIsOneToOneAsync"
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    return-void
.end method

.method public blacklist setIsOneToOneAsync(Z)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/widget/ConversationLayout;Z)V

    return-object v0

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLargeIconAsync"
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public blacklist setLargeIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V

    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setLayoutColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/ConversationLayout;I)V

    return-object v0

    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setMessageTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    return-void
.end method

.method public blacklist setMessagingClippingDisabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setNameReplacement(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    return-void
.end method

.method public blacklist setPrecomputedTextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public blacklist setSenderTextColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setShortcutIconAsync"
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public blacklist setShortcutIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/Icon;)V

    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setUnreadCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setNumber(I)V

    return-void
.end method

.method public blacklist shouldHideAppName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    return v0
.end method

.method public blacklist showHistoricMessages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    return-void
.end method

.method public blacklist updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    return-void
.end method
