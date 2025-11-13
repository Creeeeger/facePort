.class public abstract Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion;

.field public static final disabledUserAvatarColorFilter$delegate:Lkotlin/Lazy;


# instance fields
.field public final controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->Companion:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion;

    sget-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion$disabledUserAvatarColorFilter$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion$disabledUserAvatarColorFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->disabledUserAvatarColorFilter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->addCallback(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;)V

    return-void
.end method

.method public static final getIconDrawable(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 5

    sget-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->Companion:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    iget-boolean v1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    const/4 v2, 0x0

    const-string v3, "Required value was null."

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const p1, 0x7f080af6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/user/data/source/UserRecord;->resolveId()I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    iget-boolean v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddSupervisedUser:Z

    iget-boolean p1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    invoke-static {v1, v0, v4, v2, p1}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserSwitcherActionIconResourceId(ZZZZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Lcom/android/systemui/user/data/source/UserRecord;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/source/UserRecord;

    return-object p0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getItem(I)Lcom/android/systemui/user/data/source/UserRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p0

    iget-boolean v0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserAutoCreated:Z

    iget-boolean p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserResetting:Z

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p0, v1}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserRecordName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsers()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/user/data/source/UserRecord;

    sget-boolean v4, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->keyguardInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/android/systemui/user/data/source/UserRecord;->isRestricted:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v4, :cond_0

    :cond_1
    iget-object v3, v3, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v3, v3, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->keyguardInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v3, Lcom/android/systemui/user/data/source/UserRecord;->isRestricted:Z

    if-nez v4, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v3, v3, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v3, :cond_0

    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public final onUserListItemClicked(Lcom/android/systemui/user/data/source/UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/user/utils/MultiUserActionsEventHelper;->Companion:Lcom/android/systemui/user/utils/MultiUserActionsEventHelper$Companion;

    const-string v3, "Required value was null."

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->SWITCH_TO_GUEST_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->SWITCH_TO_RESTRICTED_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->SWITCH_TO_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->selectUser(ILcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    if-eqz v0, :cond_6

    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    goto :goto_2

    :cond_6
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddSupervisedUser:Z

    if-eqz v0, :cond_7

    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    goto :goto_2

    :cond_7
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    if-eqz v0, :cond_8

    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    goto :goto_2

    :cond_8
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    if-eqz v0, :cond_9

    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->executeAction(Lcom/android/systemui/user/shared/model/UserActionModel;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    :goto_3
    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not a known action: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
