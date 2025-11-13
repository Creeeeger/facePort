.class public final Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;",
        "Landroid/app/Activity;",
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
.field public static checkedValue:Z = true

.field public static routineTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v2, v2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->routineTag:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->routineTag:Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "routineTag"

    if-eqz v2, :cond_a

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "getBoolean(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->checkedValue:Z

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->routineTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->checkedValue:Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->isSupportDataSaver(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0883

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0c34

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const v2, 0x7f0a0c31

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    sget-boolean v3, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->checkedValue:Z

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f140b7c

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-object v4, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$1;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$1;-><init>(Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;I)V

    iput-object v0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$2;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$2;-><init>(Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;I)V

    const v4, 0x7f1409b6

    invoke-virtual {v3, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$alertDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$alertDialog$3;-><init>(Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;Landroid/view/View;)V

    const p0, 0x7f1409b9

    invoke-virtual {v3, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    if-eqz v1, :cond_5

    sget-object p1, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;->INSTANCE:Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v2, :cond_6

    sget-object p1, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;->INSTANCE$1:Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showDataSaverDialog$1;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v2, :cond_7

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    if-eqz v1, :cond_9

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_8
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1422be

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$1;-><init>(Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;I)V

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity$showNeedSimCardDialog$2;-><init>(Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;I)V

    const p0, 0x7f1409d0

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_9
    :goto_2
    return-void

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object p0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->routineTag:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/datausage/routine/DataSaverRoutineConfigActivity;->checkedValue:Z

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo p0, "routineTag"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
