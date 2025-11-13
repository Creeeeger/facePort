.class public final synthetic Lcom/android/settings/applications/appcompat/UserAspectRatioDetails$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;

    sget-object p1, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;->KEY_HEADER_BUTTONS:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
