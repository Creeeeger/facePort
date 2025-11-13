.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFetched:Z

.field public mUserInfo:Landroid/content/pm/UserInfo;

.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->mUserInfo:Landroid/content/pm/UserInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->mFetched:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    return-void
.end method


# virtual methods
.method public final get()Landroid/content/pm/UserInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->mFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->mFetched:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->mUserInfo:Landroid/content/pm/UserInfo;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object p0
.end method
