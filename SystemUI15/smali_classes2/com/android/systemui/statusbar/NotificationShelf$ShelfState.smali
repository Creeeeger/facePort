.class public final Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public hasItemsInStableShelf:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public final animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq p1, p0, :cond_3

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public final applyToView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->firstViewInShelf:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIndexOfFirstViewInShelf:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq p1, p0, :cond_1

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/ShelfToolTipManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ShelfToolTipManager;

    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mOrientation:I

    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->needsToShow()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip(Z)V

    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/ShelfToolTipManager;->getToolTip()V

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    :cond_2
    return-void
.end method
