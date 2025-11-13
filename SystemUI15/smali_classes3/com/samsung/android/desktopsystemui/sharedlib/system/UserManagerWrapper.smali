.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mUserManager:Landroid/os/UserManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public hasUserRestriction(I)Z
    .locals 1

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_share_location"

    invoke-static {p1}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isSecondaryOrGuestUser(I)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UserManagerWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string p1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
