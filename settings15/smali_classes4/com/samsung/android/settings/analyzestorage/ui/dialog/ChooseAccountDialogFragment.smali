.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;
.super Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;",
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


# static fields
.field public static final progressing:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->progressing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDialog$2()Landroidx/appcompat/app/AlertDialog;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->getAccountType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "getAccountsByType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment$createDialog$onClickListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;[Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object p0, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "cloudType"

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->progressing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const-string/jumbo v0, "processing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->progressing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final restoreStateOnCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->cloudType:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ChooseAccountDialogFragment;->progressing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v0, "processing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
