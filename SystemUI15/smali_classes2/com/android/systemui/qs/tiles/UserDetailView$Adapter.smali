.class public final Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public mCurrentUserView:Lcom/android/systemui/qs/tiles/UserDetailItemView;

.field public mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->refreshIfNotPaused()V

    return-void
.end method


# virtual methods
.method public final getUsers()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getItem(I)Lcom/android/systemui/user/data/source/UserRecord;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/qs/tiles/UserDetailItemView;->$r8$clinit:I

    instance-of v1, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d03ba

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    check-cast p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    iget-boolean p3, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-boolean p3, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    iget-boolean v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->isSwitchToEnabled:Z

    iget-boolean v5, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v3, :cond_4

    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getIconDrawable(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/user/data/source/UserRecord;->resolveId()I

    move-result v3

    iget-object v6, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(ILandroid/content/Context;)V

    goto/16 :goto_5

    :cond_3
    iget-object v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(ILandroid/content/Context;)V

    goto/16 :goto_5

    :cond_4
    iget-object v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getIconDrawable(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v5, :cond_5

    const v6, 0x7f0605e3

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    const v6, 0x7f060007

    goto :goto_2

    :cond_6
    const v6, 0x7f0605e2

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    if-eqz v5, :cond_7

    const v6, 0x7f08069e

    goto :goto_3

    :cond_7
    const v6, 0x7f080ddf

    :goto_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v7, v2

    aput-object v3, v7, p3

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/user/data/source/UserRecord;->resolveId()I

    move-result v3

    invoke-virtual {p2, v1, v0, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070dbf

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    new-instance v6, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iget-object v7, p1, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v3}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->Companion:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->disabledUserAvatarColorFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    :goto_4
    invoke-virtual {v6, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v1, v6, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setActivated(Z)V

    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_a

    move v0, p3

    goto :goto_6

    :cond_a
    move v0, v2

    :goto_6
    iget-object v1, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRestrictedPadlock:Landroid/view/View;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    const/16 v2, 0x8

    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    xor-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    invoke-virtual {p2, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->setSelectableAlpha(Landroid/view/View;)V

    if-eqz v5, :cond_d

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mCurrentUserView:Lcom/android/systemui/qs/tiles/UserDetailItemView;

    :cond_d
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UserDetailView.Adapter#onClick"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/data/source/UserRecord;

    iget-object v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->dismissDialog()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_1

    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->isSwitchToEnabled:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x9c

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {v2, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-boolean v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->isRestricted:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mCurrentUserView:Lcom/android/systemui/qs/tiles/UserDetailItemView;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->onUserListItemClicked(Lcom/android/systemui/user/data/source/UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
