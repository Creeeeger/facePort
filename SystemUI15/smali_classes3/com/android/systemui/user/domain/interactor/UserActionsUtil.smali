.class public final Lcom/android/systemui/user/domain/interactor/UserActionsUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    invoke-direct {v0}, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAddMoreUsers(Landroid/os/UserManager;Lcom/android/systemui/user/data/repository/UserRepository;ZZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string p2, "no_add_user"

    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p4}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method
