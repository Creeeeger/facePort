.class public Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

.field public mController:Lcom/android/settings/core/BasePreferenceController;

.field public mDialog:Landroid/app/Dialog;

.field public mExclusiveTask:Ljava/lang/String;

.field public mPrefKey:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mExclusiveTask:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;I)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;I)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->createAccessibilityServiceWarningDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    new-instance v2, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;I)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v3}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1422ef

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1401f5

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1409b6

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mExclusiveTask:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;I)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;I)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createExclusiveDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    new-instance p1, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_3
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "type"

    iget v1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mType:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->INFO_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mExclusiveTask:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->INFO_SET:Ljava/util/Set;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "wrong taskName entered : "

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil;->INFO_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getControllerName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mExclusiveTask:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mPrefKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mContext:Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;

    invoke-static {v1, v0, p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mController:Lcom/android/settings/core/BasePreferenceController;

    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mType:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->createDialog(I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
