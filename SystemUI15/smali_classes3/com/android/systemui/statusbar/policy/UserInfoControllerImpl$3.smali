.class public final Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field public final synthetic val$avatarSize:I

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$isGuest:Z

.field public final synthetic val$lightIcon:Z

.field public final synthetic val$userId:I

.field public final synthetic val$userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;IILandroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$lightIcon:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, [Ljava/lang/Void;

    const-string p1, "display_name"

    const-string v0, "UserInfoController"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v5, Lcom/android/settingslib/drawable/UserIconDrawable;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    invoke-direct {v5, v6}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {v5, v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v5, v6, v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(ILandroid/content/Context;)V

    iget v3, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    if-lez v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    iget v6, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/settingslib/drawable/UserIconDrawable;->rebake()V

    iput-object v4, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    iput-object v4, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    iput-object v4, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    iget-object v3, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v4, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget-object v3, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, v5, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Baking requires an explicit intrinsic size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    if-eqz v5, :cond_3

    const/16 v5, -0x2710

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$lightIcon:Z

    invoke-static {v3, v5, v6}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-gt v3, v6, :cond_6

    :try_start_0
    const-string v3, "doInBackground() will call query"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryForUserInformation(doInBackground) userName:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v4, :cond_6

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_6
    :goto_5
    iget p0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getUserAccount(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    invoke-direct {p1, v2, v5, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mAvatar:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mUserAccount:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserAccount:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserInfoTask:Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->mUserAccount:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;->onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
