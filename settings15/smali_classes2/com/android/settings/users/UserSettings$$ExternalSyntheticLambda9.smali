.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/content/pm/UserInfo;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/pm/UserInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$2:Landroid/content/pm/UserInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$2:Landroid/content/pm/UserInfo;

    iput-object p4, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$2:Landroid/content/pm/UserInfo;

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v2, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v1, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p0, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v1, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p0, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/settingslib/users/UserCreatingDialog;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$2:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v2, 0x1

    if-nez v3, :cond_1

    const v3, 0x7f1402a3

    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    iget-object p0, v1, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, v2, p0}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;ZLandroid/content/Context;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
