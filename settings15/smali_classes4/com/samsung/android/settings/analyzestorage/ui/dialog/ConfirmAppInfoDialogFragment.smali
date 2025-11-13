.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;
.super Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;",
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public appList:Ljava/util/List;

.field public confirmApp:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->appList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final clearDataFromViewModel()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->clearDataFromViewModel()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getViewModel()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;->dialogDataMap:Ljava/util/Map;

    const-string v0, "key_confirm_app_interface"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createDialog$2()Landroidx/appcompat/app/AlertDialog;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->confirmApp:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;->getPositiveButtonText()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1409b9

    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->confirmApp:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->appList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->appList:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v2}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;->getSingularText()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getApplicationLabel() ] Package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is an unknown app that can not be found by PackageManager."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PackageCheckUtils"

    invoke-static {v5, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ""

    :goto_1
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v2}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;->getPluralText()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v3, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;I)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;I)V

    const p0, 0x7f1403fd

    invoke-virtual {v1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->appList:Ljava/util/List;

    instance-of v1, v0, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "asAppsInfoList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getViewModel()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->confirmApp:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;->dialogDataMap:Ljava/util/Map;

    const-string v0, "key_confirm_app_interface"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final restoreStateOnCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asAppsInfoList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->appList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getViewModel()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DialogViewModel;->dialogDataMap:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    const-string v0, "key_confirm_app_interface"

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    check-cast v2, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;

    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->confirmApp:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;

    return-void
.end method
