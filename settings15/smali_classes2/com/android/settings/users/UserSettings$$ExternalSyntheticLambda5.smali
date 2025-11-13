.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/users/UserSettings;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-static {v0, v1, p0}, Lcom/android/settings/users/UserSettings;->$r8$lambda$H_6GDMyHVA7xwG1CoJJq21CpTnc(Lcom/android/settings/users/UserSettings;Landroid/content/Context;Lcom/android/settingslib/users/UserCreatingDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
