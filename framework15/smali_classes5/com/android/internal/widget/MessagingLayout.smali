.class public Lcom/android/internal/widget/MessagingLayout;
.super Landroid/widget/FrameLayout;
.source "MessagingLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist COLOR_SHIFT_AMOUNT:F = 60.0f

.field public static final blacklist FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private blacklist mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private blacklist mConversationTitle:Ljava/lang/CharSequence;

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

.field private blacklist mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsOneToOne:Z

.field private blacklist mLayoutColor:I

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

.field private blacklist mNameReplacement:Ljava/lang/CharSequence;

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mPrecomputedTextEnabled:Z

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSenderTextColor:I

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

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$-m6CbM6BhewUJutTbY64ATa2gpc(Lcom/android/internal/widget/MessagingLayout;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$setDataAsync$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OD_Xi3CUEDjkt5mXpS0WYO90mbE(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$removeGroups$2(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d7Zmu59ag9tQtY_agOjOVDrcfBs(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->lambda$setDataAsync$1(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/MessagingLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

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

.method private blacklist bind(Lcom/android/internal/widget/MessagingData;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getUser()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->setUser(Landroid/app/Person;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getSenders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getShowSpinner()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/MessagingLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->removeGroups(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateTitleAndNamesDisplay()V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateImageMessages()V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

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

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

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
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v5, :cond_7

    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_4

    :cond_3
    move v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    iget v3, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    iget v3, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    iget v6, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    iget-boolean v7, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    xor-int/2addr v7, v4

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_5

    if-eqz p3, :cond_5

    goto :goto_5

    :cond_5
    move v4, v5

    :goto_5
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    :cond_6
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
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

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
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

    invoke-direct {p0, v2}, Lcom/android/internal/widget/MessagingLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

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
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findColor(Ljava/lang/CharSequence;I)I
    .locals 11

    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    float-to-double v3, v2

    const-wide v5, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double v7, v5, v0

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    double-to-float v2, v3

    float-to-double v3, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v0

    sub-double/2addr v5, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v2, v3

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-static {p2, v3}, Lcom/android/internal/util/ContrastColorUtil;->getShiftedColor(II)I

    move-result v3

    return v3
.end method

.method private blacklist findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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

    if-ge v3, v4, :cond_7

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

    const/4 v8, 0x0

    if-nez v7, :cond_2

    move-object v7, v8

    goto :goto_3

    :cond_2
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    :goto_3
    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v8

    :goto_4
    nop

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v5, v9

    or-int/2addr v5, v6

    if-eqz v5, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    move-object v7, v6

    :cond_5
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v8

    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private blacklist findNameSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private synthetic blacklist lambda$removeGroups$2(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$0(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$1(Lcom/android/internal/widget/MessagingData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getHistoricMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->finalizeInflate(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingData;->getNewMessagingMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->finalizeInflate(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method private blacklist parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "android.messages"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    nop

    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v4

    const-string v5, "android.messages.historic"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    nop

    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v6

    const-class v7, Landroid/app/Person;

    const-string v8, "android.messagingUser"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Person;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/MessagingLayout;->setUser(Landroid/app/Person;)V

    const-class v7, Landroid/app/RemoteInputHistoryItem;

    const-string v9, "android.remoteInputHistoryItems"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/app/RemoteInputHistoryItem;

    invoke-direct {v0, v4, v7}, Lcom/android/internal/widget/MessagingLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    const-class v9, Landroid/app/Person;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Person;

    nop

    const-string v9, "android.remoteInputSpinner"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const/4 v9, 0x1

    invoke-direct {v0, v6, v9, v2}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v15

    nop

    invoke-direct {v0, v4, v10, v2}, Lcom/android/internal/widget/MessagingLayout;->createMessages(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v14

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v9

    invoke-direct {v0, v15, v14, v13, v12}, Lcom/android/internal/widget/MessagingLayout;->findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance v17, Lcom/android/internal/widget/MessagingData;

    move-object/from16 v9, v17

    move-object v10, v8

    move/from16 v11, v16

    move-object/from16 v18, v12

    move-object v12, v15

    move-object/from16 v19, v13

    move-object v13, v14

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    move-object/from16 v21, v15

    move-object/from16 v15, v18

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v17
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

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    new-instance v5, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist updateHistoricMessageVisibility()V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/MessagingLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-interface {v4, v2}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

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

.method private blacklist updateImageMessages()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/16 v4, 0x8

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private blacklist updateTitleAndNamesDisplay()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

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

    iget-boolean v6, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_1

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

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
    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

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
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_6

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/widget/MessagingLayout;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public blacklist createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageMessageContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

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

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    const v0, 0x1020462

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const v0, 0x1020298

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const v0, 0x1020503

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getResources()Landroid/content/res/Resources;

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

    iput-object v2, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MessagingLayout;->setMessagingClippingDisabled(Z)V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MessagingLayout$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MessagingLayout$1;-><init>(Lcom/android/internal/widget/MessagingLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public blacklist setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public blacklist setConversationTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mConversationTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingLayout;->parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingLayout;->bind(Lcom/android/internal/widget/MessagingData;)V

    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/MessagingLayout;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    nop

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingLayout;->parseMessagingData(Landroid/os/Bundle;Z)Lcom/android/internal/widget/MessagingData;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/MessagingLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/MessagingLayout;Lcom/android/internal/widget/MessagingData;)V

    return-object v1
.end method

.method public blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsCollapsed:Z

    return-void
.end method

.method public blacklist setIsOneToOne(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mIsOneToOne:Z

    return-void
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    return-void
.end method

.method public blacklist setLayoutColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    return-void
.end method

.method public blacklist setMessageTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessageTextColor:I

    return-void
.end method

.method public blacklist setMessagingClippingDisabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setNameReplacement(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mNameReplacement:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    return-void
.end method

.method public blacklist setPrecomputedTextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mPrecomputedTextEnabled:Z

    return-void
.end method

.method public blacklist setSenderTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLayout;->mSenderTextColor:I

    return-void
.end method

.method public blacklist setUser(Landroid/app/Person;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x108070d

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/MessagingLayout;->mLayoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MessagingLayout;->mUser:Landroid/app/Person;

    :cond_0
    return-void
.end method

.method public blacklist showHistoricMessages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingLayout;->mShowHistoricMessages:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    return-void
.end method
