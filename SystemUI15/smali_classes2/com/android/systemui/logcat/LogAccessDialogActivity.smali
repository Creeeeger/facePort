.class public Lcom/android/systemui/logcat/LogAccessDialogActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DIALOG_TIME_OUT:I


# instance fields
.field public mAlert:Landroid/app/AlertDialog;

.field public mAlertBody:Ljava/lang/String;

.field public mAlertDialog:Landroid/app/AlertDialog$Builder;

.field public mAlertLearnMore:Landroid/text/SpannableString;

.field public mAlertLearnMoreLink:Z

.field public mAlertTitle:Ljava/lang/String;

.field protected mAlertView:Landroid/view/View;

.field public mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

.field public final mHandler:Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

.field public mPackageName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/logcat/LogAccessDialogActivity;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const v0, 0xea60

    goto :goto_0

    :cond_0
    const v0, 0x493e0

    :goto_0
    sput v0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity$1;-><init>(Lcom/android/systemui/logcat/LogAccessDialogActivity;)V

    iput-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mHandler:Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

    return-void
.end method


# virtual methods
.method public final declineLogAccess()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

    iget v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mUid:I

    iget-object v2, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/ILogAccessDialogCallback;->declineAccessForClient(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a065c

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

    iget v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mUid:I

    iget-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/app/ILogAccessDialogCallback;->approveAccessForClient(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a065e

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity;->declineLogAccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    throw p1

    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "LogAccessDialogActivity"

    if-nez p1, :cond_0

    const-string p1, "Intent is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CALLBACK"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ILogAccessDialogCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ILogAccessDialogCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

    if-nez v1, :cond_1

    const-string p1, "Missing callback"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "Missing EXTRA_UID"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mUid:I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v1, v4, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f130b3e

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x7f130b39

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertBody:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050074

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMoreLink:Z

    const v0, 0x7f130b3d

    if-eqz p1, :cond_4

    new-instance p1, Landroid/text/SpannableString;

    const v1, 0x7f130b3b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f130b3c

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    :goto_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    const v0, 0x7f140234

    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d01e5

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    const v1, 0x7f0a065f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    const v4, 0x7f0a065d

    if-nez v1, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertBody:Ljava/lang/String;

    aput-object v6, v5, v2

    const-string v6, "\n\n"

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMoreLink:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertBody:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    const v1, 0x7f0a065c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a065e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/logcat/LogAccessDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/logcat/LogAccessDialogActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mHandler:Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

    sget p1, Lcom/android/systemui/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    int-to-long v0, p1

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_7
    new-instance p0, Landroid/view/InflateException;

    invoke-direct {p0}, Landroid/view/InflateException;-><init>()V

    throw p0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to fetch label of package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity;->declineLogAccess()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    :goto_2
    const-string p1, "Missing package name extra"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string p1, "Invalid Intent extras, finishing"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method
